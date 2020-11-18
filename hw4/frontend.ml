open Ll
open Llutil
open Ast

(* instruction streams ------------------------------------------------------ *)

(* As in the last project, we'll be working with a flattened representation
   of LLVMlite programs to make emitting code easier. This version
   additionally makes it possible to emit elements will be gathered up and
   "hoisted" to specific parts of the constructed CFG
   - G of gid * Ll.gdecl: allows you to output global definitions in the middle
     of the instruction stream. You will find this useful for compiling string
     literals
   - E of uid * insn: allows you to emit an instruction that will be moved up
     to the entry block of the current function. This will be useful for 
     compiling local variable declarations
*)

type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      (* hoisted entry block instructions *)

type stream = elt list
let ( >@ ) x y = y @ x
let ( >:: ) x y = y :: x
let lift : (uid * insn) list -> stream = List.rev_map (fun (x,i) -> I (x,i))

(* Build a CFG and collection of global variable definitions from a stream *)
let cfg_of_stream (code:stream) : Ll.cfg * (Ll.gid * Ll.gdecl) list  =
    let gs, einsns, insns, term_opt, blks = List.fold_left
      (fun (gs, einsns, insns, term_opt, blks) e ->
        match e with
        | L l ->
           begin match term_opt with
           | None -> 
              if (List.length insns) = 0 then (gs, einsns, [], None, blks)
              else failwith @@ Printf.sprintf "build_cfg: block labeled %s has\
                                               no terminator" l
           | Some term ->
              (gs, einsns, [], None, (l, {insns; term})::blks)
           end
        | T t  -> (gs, einsns, [], Some (Llutil.Parsing.gensym "tmn", t), blks)
        | I (uid,insn)  -> (gs, einsns, (uid,insn)::insns, term_opt, blks)
        | G (gid,gdecl) ->  ((gid,gdecl)::gs, einsns, insns, term_opt, blks)
        | E (uid,i) -> (gs, (uid, i)::einsns, insns, term_opt, blks)
      ) ([], [], [], None, []) code
    in
    match term_opt with
    | None -> failwith "build_cfg: entry block has no terminator" 
    | Some term -> 
       let insns = einsns @ insns in
       ({insns; term}, blks), gs


(* compilation contexts ----------------------------------------------------- *)

(* To compile OAT variables, we maintain a mapping of source identifiers to the
   corresponding LLVMlite operands. Bindings are added for global OAT variables
   and local variables that are in scope. *)

module Ctxt = struct

  type t = (Ast.id * (Ll.ty * Ll.operand)) list
  let empty = []

  (* Add a binding to the context *)
  let add (c:t) (id:id) (bnd:Ll.ty * Ll.operand) : t = (id,bnd)::c

  (* Lookup a binding in the context *)
  let lookup (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    List.assoc id c

  (* Lookup a function, fail otherwise *)
  let lookup_function (id:Ast.id) (c:t) : Ll.ty * Ll.operand =
    match List.assoc id c with
    | Ptr (Fun (args, ret)), g -> Ptr (Fun (args, ret)), g
    | _ -> failwith @@ id ^ " not bound to a function"

  let lookup_function_option (id:Ast.id) (c:t) : (Ll.ty * Ll.operand) option =
    try Some (lookup_function id c) with _ -> None
  
end

(* compiling OAT types ------------------------------------------------------ *)

(* The mapping of source types onto LLVMlite is straightforward. Booleans and ints
   are represented as the corresponding integer types. OAT strings are
   pointers to bytes (I8). Arrays are the most interesting type: they are
   represented as pointers to structs where the first component is the number
   of elements in the following array.

   The trickiest part of this project will be satisfying LLVM's rudimentary type
   system. Recall that global arrays in LLVMlite need to be declared with their
   length in the type to statically allocate the right amount of memory. The 
   global strings and arrays you emit will therefore have a more specific type
   annotation than the output of cmp_rty. You will have to carefully bitcast
   gids to satisfy the LLVM type checker.
*)

let rec cmp_ty : Ast.ty -> Ll.ty = function
  | Ast.TBool  -> I1
  | Ast.TInt   -> I64
  | Ast.TRef r -> Ptr (cmp_rty r)

and cmp_rty : Ast.rty -> Ll.ty = function
  | Ast.RString  -> I8
  | Ast.RArray u -> Struct [I64; Array(0, cmp_ty u)]
  | Ast.RFun (ts, t) -> 
      let args, ret = cmp_fty (ts, t) in
      Fun (args, ret)

and cmp_ret_ty : Ast.ret_ty -> Ll.ty = function
  | Ast.RetVoid  -> Void
  | Ast.RetVal t -> cmp_ty t

and cmp_fty (ts, r) : Ll.fty =
  List.map cmp_ty ts, cmp_ret_ty r


let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Eq | Neq | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)

let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* Compiler Invariants

   The LLVM IR type of a variable (whether global or local) that stores an Oat
   array value (or any other reference type, like "string") will always be a
   double pointer.  In general, any Oat variable of Oat-type t will be
   represented by an LLVM IR value of type Ptr (cmp_ty t).  So the Oat variable
   x : int will be represented by an LLVM IR value of type i64*, y : string will
   be represented by a value of type i8**, and arr : int[] will be represented
   by a value of type {i64, [0 x i64]}**.  Whether the LLVM IR type is a
   "single" or "double" pointer depends on whether t is a reference type.

   We can think of the compiler as paying careful attention to whether a piece
   of Oat syntax denotes the "value" of an expression or a pointer to the
   "storage space associated with it".  This is the distinction between an
   "expression" and the "left-hand-side" of an assignment statement.  Compiling
   an Oat variable identifier as an expression ("value") does the load, so
   cmp_exp called on an Oat variable of type t returns (code that) generates a
   LLVM IR value of type cmp_ty t.  Compiling an identifier as a left-hand-side
   does not do the load, so cmp_lhs called on an Oat variable of type t returns
   and operand of type (cmp_ty t)*.  Extending these invariants to account for
   array accesses: the assignment e1[e2] = e3; treats e1[e2] as a
   left-hand-side, so we compile it as follows: compile e1 as an expression to
   obtain an array value (which is of pointer of type {i64, [0 x s]}* ).
   compile e2 as an expression to obtain an operand of type i64, generate code
   that uses getelementptr to compute the offset from the array value, which is
   a pointer to the "storage space associated with e1[e2]".

   On the other hand, compiling e1[e2] as an expression (to obtain the value of
   the array), we can simply compile e1[e2] as a left-hand-side and then do the
   load.  So cmp_exp and cmp_lhs are mutually recursive.  [[Actually, as I am
   writing this, I think it could make sense to factor the Oat grammar in this
   way, which would make things clearer, I may do that for next time around.]]

 
   Consider globals7.oat

   /--------------- globals7.oat ------------------ 
   global arr = int[] null;

   int foo() { 
     var x = new int[3]; 
     arr = x; 
     x[2] = 3; 
     return arr[2]; 
   }
   /------------------------------------------------

   The translation (given by cmp_ty) of the type int[] is {i64, [0 x i64}* so
   the corresponding LLVM IR declaration will look like:

   @arr = global { i64, [0 x i64] }* null

   This means that the type of the LLVM IR identifier @arr is {i64, [0 x i64]}**
   which is consistent with the type of a locally-declared array variable.

   The local variable x would be allocated and initialized by (something like)
   the following code snippet.  Here %_x7 is the LLVM IR uid containing the
   pointer to the "storage space" for the Oat variable x.

   %_x7 = alloca { i64, [0 x i64] }*                              ;; (1)
   %_raw_array5 = call i64*  @oat_alloc_array(i64 3)              ;; (2)
   %_array6 = bitcast i64* %_raw_array5 to { i64, [0 x i64] }*    ;; (3)
   store { i64, [0 x i64]}* %_array6, { i64, [0 x i64] }** %_x7   ;; (4)

   (1) note that alloca uses cmp_ty (int[]) to find the type, so %_x7 has 
       the same type as @arr 

   (2) @oat_alloc_array allocates len+1 i64's 

   (3) we have to bitcast the result of @oat_alloc_array so we can store it
        in %_x7 

   (4) stores the resulting array value (itself a pointer) into %_x7 

  The assignment arr = x; gets compiled to (something like):

  %_x8 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7     ;; (5)
  store {i64, [0 x i64] }* %_x8, { i64, [0 x i64] }** @arr       ;; (6)

  (5) load the array value (a pointer) that is stored in the address pointed 
      to by %_x7 

  (6) store the array value (a pointer) into @arr 

  The assignment x[2] = 3; gets compiled to (something like):

  %_x9 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x7      ;; (7)
  %_index_ptr11 = getelementptr { i64, [0 x  i64] }, 
                  { i64, [0 x i64] }* %_x9, i32 0, i32 1, i32 2   ;; (8)
  store i64 3, i64* %_index_ptr11                                 ;; (9)

  (7) as above, load the array value that is stored %_x7 

  (8) calculate the offset from the array using GEP

  (9) store 3 into the array

  Finally, return arr[2]; gets compiled to (something like) the following.
  Note that the way arr is treated is identical to x.  (Once we set up the
  translation, there is no difference between Oat globals and locals, except
  how their storage space is initially allocated.)

  %_arr12 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr    ;; (10)
  %_index_ptr14 = getelementptr { i64, [0 x i64] },                
                 { i64, [0 x i64] }* %_arr12, i32 0, i32 1, i32 2  ;; (11)
  %_index15 = load i64, i64* %_index_ptr14                         ;; (12)
  ret i64 %_index15

  (10) just like for %_x9, load the array value that is stored in @arr 

  (11)  calculate the array index offset

  (12) load the array value at the index 

*)

(* Global initialized arrays:

  There is another wrinkle: To compile global initialized arrays like in the
  globals4.oat, it is helpful to do a bitcast once at the global scope to
  convert the "precise type" required by the LLVM initializer to the actual
  translation type (which sets the array length to 0).  So for globals4.oat,
  the arr global would compile to (something like):

  @arr = global { i64, [0 x i64] }* bitcast 
           ({ i64, [4 x i64] }* @_global_arr5 to { i64, [0 x i64] }* ) 
  @_global_arr5 = global { i64, [4 x i64] } 
                  { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }

*) 



(* Some useful helper functions *)

(* Generate a fresh temporary identifier. Since OAT identifiers cannot begin
   with an underscore, these should not clash with any source variables *)
let gensym : string -> string =
  let c = ref 0 in
  fun (s:string) -> incr c; Printf.sprintf "_%s%d" s (!c)

(* Amount of space an Oat type takes when stored in the satck, in bytes.  
   Note that since structured values are manipulated by reference, all
   Oat values take 8 bytes on the stack.
*)
let size_oat_ty (t : Ast.ty) = 8L

(* Generate code to allocate a zero-initialized array of source type TRef (RArray t) of the
   given size. Note "size" is an operand whose value can be computed at
   runtime *)
let oat_alloc_array (t:Ast.ty) (size:Ll.operand) : Ll.ty * operand * stream =
  let ans_id, arr_id = gensym "array", gensym "raw_array" in
  let ans_ty = cmp_ty @@ TRef (RArray t) in
  let arr_ty = Ptr I64 in
  ans_ty, Id ans_id, lift
    [ arr_id, Call(arr_ty, Gid "oat_alloc_array", [I64, size])
    ; ans_id, Bitcast(arr_ty, Id arr_id, ans_ty) ]

(* Compiles an expression exp in context c, outputting the Ll operand that will
   recieve the value of the expression, and the stream of instructions
   implementing the expression. 

   Tips:
   - use the provided cmp_ty function!

   - string literals (CStr s) should be hoisted. You'll need to make sure
     either that the resulting gid has type (Ptr I8), or, if the gid has type
     [n x i8] (where n is the length of the string), convert the gid to a 
     (Ptr I8), e.g., by using getelementptr.

   - use the provided "oat_alloc_array" function to implement literal arrays
     (CArr) and the (NewArr) expressions

*)

let cmp_binop bop ty op1 op2 :  Ll.insn =
  begin match bop with
    | Ast.Add  -> Ll.Binop (Add, ty, op1, op2)
    | Ast.Mul  -> Ll.Binop (Mul, ty, op1, op2)
    | Ast.Sub  -> Ll.Binop (Sub, ty, op1, op2)
    | Ast.And  -> Ll.Binop (And, ty, op1, op2)
    | Ast.IAnd -> Ll.Binop (And, ty, op1, op2) 
    | Ast.IOr  -> Ll.Binop (Or, ty, op1, op2)
    | Ast.Or   -> Ll.Binop (Or, ty, op1, op2)
    | Ast.Shl  -> Ll.Binop (Shl, ty, op1, op2)
    | Ast.Shr  -> Ll.Binop (Lshr, ty, op1, op2)
    | Ast.Sar  -> Ll.Binop (Ashr, ty, op1, op2)
    | Ast.Eq   -> Ll.Icmp  (Eq, ty, op1, op2)
    | Ast.Neq  -> Ll.Icmp  (Ne, ty, op1, op2)
    | Ast.Lt   -> Ll.Icmp  (Slt, ty, op1, op2)
    | Ast.Lte  -> Ll.Icmp  (Sle, ty, op1, op2)
    | Ast.Gt   -> Ll.Icmp  (Sgt, ty, op1, op2)
    | Ast.Gte  -> Ll.Icmp  (Sge, ty, op1, op2)
  end

let rec cmp_exp (c:Ctxt.t) (exp:Ast.exp node) : Ll.ty * Ll.operand * stream =
  match exp.elt with
    | Ast.CInt i -> ((I64), (Ll.Const i), [])
    | Ast.CBool bool -> (I1, (Ll.Const (if bool then 1L else 0L)), [])
    | Ast.CNull rty ->  (Ptr (cmp_rty rty), Ll.Null, [])
    
    | Ast.CStr str -> let uid = (gensym "str") in
      let gid = gensym "str_arr" in
      (Ptr I8, (Id uid), 
      [G(gid, (Array(1 + String.length str, I8), Ll.GString str))] >@
      [I(uid, (Gep (Ptr (Array(1 + String.length str, I8)), Gid gid, [Const 0L; Const 0L;])))])
    
    | Ast.Uop (uop,e) ->
      let (ans_ty, op, code) = (cmp_exp c e) in
      let ans_id = (gensym "unop") in
      ((ans_ty, (Ll.Id ans_id), code >::I (ans_id, match uop with
         | Ast.Neg -> Ll.Binop (Sub, ans_ty, Ll.Const (Int64.of_int 0), op)
         | Ast.Lognot -> Ll.Icmp  (Eq, ans_ty, op, Ll.Const (if false then 1L else 0L))
         | Ast.Bitnot  -> Ll.Binop (Xor, ans_ty, op, Ll.Const (Int64.of_int (-1))))))

    | Ast.Bop (bop,e1,e2) -> 
      let (ans_ty1, op1, code1) = (cmp_exp c e1) in
      let (ans_ty2, op2, code2) = (cmp_exp c e2) in
      let ans_id = (gensym "bop") in 
      let my_ty = 
        match bop with
          | Ast.Add | Ast.Mul | Ast.Sub | Ast.Shl | Ast.Shr | Ast.Sar | Ast.IAnd | Ast.IOr -> 
              (cmp_ty ( Ast.TInt))
          | Ast.Eq | Ast.Neq | Ast.Lt | Ast.Lte | Ast.Gt | Ast.Gte | Ast.And | Ast.Or -> 
              (cmp_ty ( Ast.TBool)) in
        (my_ty, (Ll.Id ans_id), code1 >@ code2 >::
         I (ans_id, (cmp_binop bop ans_ty1 op1 op2)))
    
    | Ast.Id id ->
      let ty, op = Ctxt.lookup id c in
      begin match ty with
        | Ptr (Fun _) -> ty, op, []
        | Ptr ty ->
          let ans_id = gensym id in
          ty, Id ans_id, [I(ans_id, Load(Ptr ty, op))]
        | _ -> failwith "Id is not of Ptr type"
      end

    | Ast.Index (e, i) ->
      let ans_ty, ptr_op, code = cmp_lhs c exp in
      let ans_id = gensym "index" in
      ans_ty, Id ans_id, code >:: I(ans_id, Load(Ptr ans_ty, ptr_op))
    
    | Ast.Call (f, es) ->
      cmp_call c f es 

    | Ast.NewArr (elt_ty, e1) ->    
      let _, size_op, size_code = cmp_exp c e1 in
      let arr_ty, arr_op, alloc_code = oat_alloc_array elt_ty size_op in
      arr_ty, arr_op, size_code >@ alloc_code

    | Ast.CArr (elt_ty, cs)  ->
      let size_op = Ll.Const (Int64.of_int @@ List.length cs) in
      let arr_ty, arr_op, alloc_code = oat_alloc_array elt_ty size_op in
      let ll_elt_ty = cmp_ty elt_ty in
      let add_elt s (i, elt) =
      (* todo *)
        let elt_op, elt_code = recmp_exp c elt ll_elt_ty in
        let ind = gensym "ind" in 
          s >@ elt_code >@ lift
          [ ind, Gep(arr_ty, arr_op, [Const 0L; Const 1L; Ll.Const (Int64.of_int i) ])
          ; "",  Store(ll_elt_ty, elt_op, Id ind) ] 
      in
      let ind_code = List.(fold_left add_elt [] @@ mapi (fun i e -> i, e) cs) in
      arr_ty, arr_op, alloc_code >@ ind_code
  

(* Functions to be used in both cmp_exp and cmp_stmt *)
and cmp_lhs (c:Ctxt.t) (e:exp node) : Ll.ty * Ll.operand * stream =
  begin match e.elt with
  | Ast.Id id ->
    let ty, op = Ctxt.lookup id c in
    ty, op, []
  | Ast.Index (e, index) ->
    let arr_ty, arr_op, arr_code = cmp_exp c e in
    let _, index_op, index_code = cmp_exp c index in
    let ans_ty = match arr_ty with 
      | Ptr (Struct [_; Array (_,t)]) -> t 
      | _ -> failwith "Index: indexed into non pointer" in
    let pointer_id = gensym "index_ptr" in
    ans_ty, (Id pointer_id),
    arr_code >@ index_code >@ 
    (* get stream of 
    lift : (uid * insn) list -> stream 
    *)
    lift 
    [pointer_id, Gep(arr_ty, arr_op, [Ll.Const (Int64.of_int 0);
     Ll.Const (Int64.of_int 1); index_op]) ]
  | _ -> failwith "invalid lhs expression"
  end

and recmp_exp (c:Ctxt.t) (e:Ast.exp node) (ll_ty:Ll.ty) : Ll.operand * stream =
  let ty, op, code = cmp_exp c e in
  if ty = ll_ty then op, code
  else let res_id = gensym "cast" in
    Id res_id, 
    code >:: I(res_id, Bitcast(ty, op, ll_ty))

and cmp_call (c:Ctxt.t) (exp:Ast.exp node) (exps:Ast.exp node list) : Ll.ty * Ll.operand * stream =
  let (ty, op, s) = cmp_exp c exp in
  let (ts, rty) = 
    match ty with
    | Ptr (Fun (left, right)) -> left, right
    | _ -> failwith "cannot compile Ptr <something> in cmp_call has to be Fun" in
  let args, args_code = List.fold_right2
      (fun exp ty (args, code) ->
         let arg_op, arg_code = recmp_exp c exp ty in
         (ty, arg_op)::args, arg_code @ code
      ) exps ts ([],[]) in
  let res_id = gensym "result" in
  rty,
  Id res_id, 
  s >@ args_code >:: I(res_id, Call(rty, op, args))
(* Compile a statement in context c with return typ rt. Return a new context, 
   possibly extended with new local bindings, and the instruction stream
   implementing the statement.

   Left-hand-sides of assignment statements must either be OAT identifiers,
   or an index into some arbitrary expression of array type. Otherwise, the
   program is not well-formed and your compiler may throw an error.

   Tips:
   - for local variable declarations, you will need to emit Allocas in the
     entry block of the current function using the E() constructor.

   - don't forget to add a bindings to the context for local variable 
     declarations
   
   - you can avoid some work by translating For loops to the corresponding
     While loop, building the AST and recursively calling cmp_stmt

   - you might find it helpful to reuse the code you wrote for the Call
     expression to implement the SCall statement

   - compiling the left-hand-side of an assignment is almost exactly like
     compiling the Id or Index expression. Instead of loading the resulting
     pointer, you just need to store to it!

 *)

let rec cmp_stmt (c:Ctxt.t) (rt:Ll.ty) (stmt:Ast.stmt node) : Ctxt.t * stream =
  begin match stmt.elt with
    | Ast.Ret t -> 
      begin match t with
        | Some exp -> 
          begin match rt with
            | Void -> failwith "retval return type for void function"
            | _ -> let (ty,op,str) = (cmp_exp c exp) in
              begin match op with
                | Id i -> c, str >@  [T(Ll.Ret (ty, Some op))]
                | _ ->  c, str >@ [T(Ll.Ret(ty, Some op))]
              end
          end
        | None -> 
          begin match rt with
            | Void -> let t = Ll.Ret(Ll.Void, None) in c, [T t]
            |  _ -> failwith "void return type for retval function"
          end
      end

(* 
type elt = 
  | L of Ll.lbl             (* block labels *)
  | I of uid * Ll.insn      (* instruction *)
  | T of Ll.terminator      (* block terminators *)
  | G of gid * Ll.gdecl     (* hoisted globals (usually strings) *)
  | E of uid * Ll.insn      hoisted entry block instructions *)

    | Ast.Decl decl ->
      let id, exp = decl in
      let ty, op, code = cmp_exp c exp in
      let res_id = gensym id in
      let new_ctxt = Ctxt.add c id (Ptr ty, Id res_id) in
      new_ctxt, code 
          >:: E(res_id, Alloca ty)
          >:: I("",     Store (ty, op, Id res_id))
    
    | Ast.Assn (path ,e) ->
      let _, pop, path_code = cmp_lhs c path in
      let ll_ty, eop, exp_code = cmp_exp c e in
      c, path_code >@ exp_code >:: I("", (Store (ll_ty, eop, pop)))
      
    | Ast.If (guard, st1, st2) -> 
      let guard_ty, guard_op, guard_code = cmp_exp c guard in
      let _ , then_code = cmp_block c rt st1 in
      let _ , else_code = cmp_block c rt st2 in
      let l_then, l_else, l_merge = gensym "then", gensym "else", gensym "merge" in
        c, guard_code 
        >:: T(Cbr (guard_op, l_then, l_else))
        >:: L l_then >@ then_code >:: T(Br l_merge) 
        >:: L l_else >@ else_code >:: T(Br l_merge) 
        >:: L l_merge
    | Ast.While (guard, body) ->
      let guard_ty, guard_op, guard_code = cmp_exp c guard in
      let l_condition, l_body, l_post = gensym "cond", gensym "body", gensym "post" in
      let _ , body_code = cmp_block c rt body  in
        c ,[]
        >:: T (Br l_condition)
        >:: L l_condition >@ guard_code >:: T (Cbr (guard_op, l_body, l_post))
        >:: L l_body >@ body_code  >:: T (Br l_condition)
        >:: L l_post
    | Ast.For (inits, guard, after, body) ->
      let guard = match guard with Some e -> e | None -> no_loc (CBool true) in
      let after = match after with Some s -> [s] | None -> [] in
      let body = body @ after in
      let ds = List.map (fun d -> no_loc (Decl d)) inits in
      cmp_block c rt (ds @ [no_loc @@ Ast.While (guard, body)])
    
    | Ast.SCall (func, exps) ->
      let _, op, code = cmp_call c func exps in
      c, code
  end
(* Compile a series of statements *)
and cmp_block (c:Ctxt.t) (rt:Ll.ty) (stmts:Ast.block) : Ctxt.t * stream =
  List.fold_left (fun (c, code) s -> 
      let c, stmt_code = cmp_stmt c rt s in
      c, code >@ stmt_code
    ) (c,[]) stmts



(* Adds each function identifer to the context at an
   appropriately translated type.  

   NOTE: The Gid of a function is just its source name
*)
let cmp_function_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
    List.fold_left (fun c -> function
      | Ast.Gfdecl { elt={ frtyp; fname; args } } ->
         let ft = TRef (RFun (List.map fst args, frtyp)) in
         Ctxt.add c fname (cmp_ty ft, Gid fname)
      | _ -> c
    ) c p 

(* Populate a context with bindings for global variables 
   mapping OAT identifiers to LLVMlite gids and their types.

   Only a small subset of OAT expressions can be used as global initializers
   in well-formed programs. (The constructors starting with C). 
*)

(* type t = (Ast.id * (Ll.ty * Ll.operand)) list *)

let cmp_global_ctxt (c:Ctxt.t) (p:Ast.prog) : Ctxt.t =
  let gexp_ty c = function
    | Id id -> fst (Ctxt.lookup id c)
    | CNull rty -> (cmp_ty (TRef rty))
    | CBool b -> I1
    | CInt i  -> I64
    | CStr s  -> Ptr (Array(1 + String.length s, I8))
    | CArr (u, cs) -> Ptr (Struct [I64; Array(List.length cs, cmp_ty u)])
    | x -> failwith ( "bad global initializer: " ^ (Astlib.string_of_exp (no_loc x)))
  in
  List.fold_left (fun c -> function
    | Ast.Gvdecl { elt={ name; init } } ->
        Ctxt.add c name (Ptr (gexp_ty c init.elt), Gid name)
    | _ -> c) c p

(* Compile a function declaration in global context c. Return the LLVMlite cfg
   and a list of global declarations containing the string literals appearing
   in the function.

   You will need to
   1. Allocate stack space for the function parameters using Alloca
   2. Store the function arguments in their corresponding alloca'd stack slot
   3. Extend the context with bindings for function variables
   4. Compile the body of the function using cmp_block
   5. Use cfg_of_stream to produce a LLVMlite cfg from 
 *)

let cmp_fdecl (c:Ctxt.t) (f:Ast.fdecl node) : Ll.fdecl * (Ll.gid * Ll.gdecl) list =
  (* function return type, arguments, and code body *)
  let {frtyp; args; body} = f.elt in
  (* 1,2,3 - Add one arg to the context *)
  let add_arg (s_typ, s_id) (c,code,args) =
    let ll_id = gensym s_id in
    let ll_ty = cmp_ty s_typ in
    let alloca_id = gensym s_id in

    (* 1. alloc *)
    let allocate_space = E(alloca_id, Alloca ll_ty) in
      (* 2. store *)
    let store_args = I("", Store(ll_ty, Id ll_id, Id alloca_id)) in
    (* 3. extend context *)
    let c = Ctxt.add c s_id (Ptr ll_ty, Ll.Id alloca_id)in
      c, []
      >@ [allocate_space]
      >@ [store_args]
      >@ code,
      (ll_ty, ll_id)::args in
  let ll_rty = cmp_ret_ty frtyp in
  (* Add arguments to the context and return the new context, aswell as code, args *)
  let c, args_code, args = List.fold_right add_arg args (c,[],[]) in
  (* 4.compile block , get the stream of code*)
  let _, block_code = cmp_block c ll_rty body in
  let arg_tys, f_param = List.split args in
  let f_ty = (arg_tys, ll_rty) in
  (* 5. get cfg, and the global decl (indcludes gids ) from cfg_of_stream *)
  let f_cfg, g_decl = cfg_of_stream (args_code >@ block_code) in
  (* Create f_decl from its type decl *)
  let f_decl ={f_ty=f_ty; f_param=f_param; f_cfg = f_cfg} in 
  f_decl, g_decl

(* type fdecl = { f_ty : fty; f_param : uid list; f_cfg : cfg } *)


(* Compile a global initializer, returning the resulting LLVMlite global
   declaration, and a list of additional global declarations.

   Tips:
   - Only CNull, CBool, CInt, CStr, and CArr can appear as global initializers
     in well-formed OAT programs. Your compiler may throw an error for the other
     cases

   - OAT arrays are always handled via pointers. A global array of arrays will
     be an array of pointers to arrays emitted as additional global declarations.
*)
(* type gdecl = ty * ginit *)
(* type ginit =
| GNull
| GGid of gid
| GInt of int64
| GString of string
| GArray of (ty * ginit) list
| GStruct of (ty * ginit) list
| GBitcast of ty * ginit * ty
 *)
let rec cmp_gexp c (e:Ast.exp node) : Ll.gdecl * (Ll.gid * Ll.gdecl) list =
  let gid = gensym "constant" in
    begin match e.elt with
      | Ast.CNull rty -> ((cmp_ty (TRef rty), GNull), [])
      | Ast.CBool bool -> 
        begin match bool with
          | true -> ((I1, GInt 1L), [gid, (I1, GInt 1L)])
          | false ->  ((I1, GInt 0L), [gid, (I1, GInt 0L)])
        end
      | Ast.CInt i ->  ((I64, GInt i), [gid, (I64, GInt i)])
      | Ast.CStr s -> 
        let ll_ty = (Array(1 + String.length s, I8)) in
        (Ptr ll_ty, GGid gid), [gid, (ll_ty, GString s)]
      | CArr (ty, cs) ->
        let elts, gs = List.fold_right
            (fun cst (elts, gs) ->
              let g_decl, new_gs = cmp_gexp c cst in
              g_decl::elts, new_gs @ gs) cs ([], [])
        in
        let length = List.length cs in
        let ll_type = cmp_ty ty in 
        let arr_gid = gensym "global_arr" in
        let arr_type = Struct [I64; Array(length, ll_type) ] in
        let arr_init = GStruct [I64, GInt (Int64.of_int length); Array(length, ll_type), GArray elts ] in
        (Ptr arr_type, GGid arr_gid), (arr_gid, (arr_type, arr_init))::gs

      | _ -> failwith "not global init expression in  cmp gexp"
    end
  
(* Oat internals function context ------------------------------------------- *)
let internals = [
    "oat_alloc_array",         Ll.Fun ([I64], Ptr I64)
  ]

(* Oat builtin function context --------------------------------------------- *)
let builtins =
  [ "array_of_string",  cmp_rty @@ RFun ([TRef RString], RetVal (TRef(RArray TInt)))
  ; "string_of_array",  cmp_rty @@ RFun ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", cmp_rty @@ RFun ([TRef RString],  RetVal TInt)
  ; "string_of_int",    cmp_rty @@ RFun ([TInt],  RetVal (TRef RString))
  ; "string_cat",       cmp_rty @@ RFun ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     cmp_rty @@ RFun ([TRef RString],  RetVoid)
  ; "print_int",        cmp_rty @@ RFun ([TInt],  RetVoid)
  ; "print_bool",       cmp_rty @@ RFun ([TBool], RetVoid)
  ]

(* Compile a OAT program to LLVMlite *)
let cmp_prog (p:Ast.prog) : Ll.prog =
  (* add built-in functions to context *)
  let init_ctxt = 
    List.fold_left (fun c (i, t) -> Ctxt.add c i (Ll.Ptr t, Gid i))
      Ctxt.empty builtins
  in
  let fc = cmp_function_ctxt init_ctxt p in

  (* build global variable context *)
  let c = cmp_global_ctxt fc p in

  (* compile functions and global variables *)
  let fdecls, gdecls = 
    List.fold_right (fun d (fs, gs) ->
        match d with
        | Ast.Gvdecl { elt=gd } -> 
           let ll_gd, gs' = (cmp_gexp c gd.init) in
           (fs, (gd.name, ll_gd)::gs' @ gs)
        | Ast.Gfdecl fd ->
           let fdecl, gs' = cmp_fdecl c fd in
           (fd.elt.fname,fdecl)::fs, gs' @ gs
      ) p ([], [])
  in

  (* gather external declarations *)
  let edecls = internals @ builtins in
  { tdecls = []; gdecls; fdecls; edecls }
