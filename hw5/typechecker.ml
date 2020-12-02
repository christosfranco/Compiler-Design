open Ast
open Astlib
open Tctxt

(* Error Reporting ---------------------------------------------------------- *)
(* NOTE: Use type_error to report error messages for ill-typed programs. *)

exception TypeError of string

let type_error (l : 'a node) err = 
  let (_, (s, e), _) = l.loc in
  raise (TypeError (Printf.sprintf "[%d, %d] %s" s e err))


(* initial context: G0 ------------------------------------------------------ *)
(* The Oat types of the Oat built-in functions *)
let builtins =
  [ "array_of_string",  ([TRef RString],  RetVal (TRef(RArray TInt)))
  ; "string_of_array",  ([TRef(RArray TInt)], RetVal (TRef RString))
  ; "length_of_string", ([TRef RString],  RetVal TInt)
  ; "string_of_int",    ([TInt], RetVal (TRef RString))
  ; "string_cat",       ([TRef RString; TRef RString], RetVal (TRef RString))
  ; "print_string",     ([TRef RString],  RetVoid)
  ; "print_int",        ([TInt], RetVoid)
  ; "print_bool",       ([TBool], RetVoid)
  ]

(* binary operation types --------------------------------------------------- *)
let typ_of_binop : Ast.binop -> Ast.ty * Ast.ty * Ast.ty = function
  | Add | Mul | Sub | Shl | Shr | Sar | IAnd | IOr -> (TInt, TInt, TInt)
  | Lt | Lte | Gt | Gte -> (TInt, TInt, TBool)
  | And | Or -> (TBool, TBool, TBool)
  | Eq | Neq -> failwith "typ_of_binop called on polymorphic == or !="

(* unary operation types ---------------------------------------------------- *)
let typ_of_unop : Ast.unop -> Ast.ty * Ast.ty = function
  | Neg | Bitnot -> (TInt, TInt)
  | Lognot       -> (TBool, TBool)

(* subtyping ---------------------------------------------------------------- *)
(* Decides whether H |- t1 <: t2 
    - assumes that H contains the declarations of all the possible struct types

    - you will want to introduce addition (possibly mutually recursive) 
      helper functions to implement the different judgments of the subtyping
      relation. We have included a template for subtype_ref to get you started.
      (Don't forget about OCaml's 'and' keyword.)
*)
(* Types *)
let rec subtype (c : Tctxt.t) (t1 : Ast.ty) (t2 : Ast.ty) : bool =
  match t1, t2 with
  | TInt, TInt | TBool, TBool -> true
  | TNullRef refty1, TNullRef refty2 | TRef refty1, TNullRef refty2
  | TRef refty1, TRef refty2 -> subtype_ref c refty1 refty2
  | _ -> false 

(* Reference types *)
(* Decides whether H |-r ref1 <: ref2 *)
and subtype_ref (c : Tctxt.t) (t1 : Ast.rty) (t2 : Ast.rty) : bool =
  match t1 , t2 with
  | RString , RString -> true
  | RStruct id1 , RStruct id2   -> if id1 = id2 then true else subtype_struct c id1 id2
  | RArray ty1 , RArray ty2     -> ty1 = ty2
  | RFun ( args1 , ret1 ) , RFun ( args2 , ret2 ) -> subtype_fun c args1 ret1 args2 ret2
  | _ -> false


(* let lookup_struct id c = List.assoc id c.structs
let lookup_struct_option id c =
  try Some (lookup_struct id c) with Not_found -> None *)
  (* 
let lookup_field_option st_name f_name c =
  let rec lookup_field_aux f_name l =
    match l with
    | [] -> None
    | h :: t -> if h.fieldName = f_name then Some h.ftyp else lookup_field_aux f_name t in
  match lookup_struct_option st_name c with
  | None -> None
  | Some x -> lookup_field_aux f_name x

 *)
and subtype_struct (c : Tctxt.t) (id1 : Ast.id) (id2 : Ast.id) : bool =
  match Tctxt.lookup_struct_option id2 c with
  | None -> false
  | Some fields -> 
  
    let lookup ans field =
      let res = Tctxt.lookup_field_option id1 field.fieldName c in
      match res with 
      | None -> false
      | Some ftyp -> ftyp = field.ftyp 
    in
    List.fold_left lookup true fields


and subtype_fun (c : Tctxt.t) (args1 : Ast.ty list ) (ret1 : Ast.ret_ty) (args2 : Ast.ty list ) (ret2 : Ast.ret_ty) : bool =
  let same_length = List.length args1 = List.length args2 in
  let check_arg_typ ans arg1 arg2 = ans && subtype c arg2 arg1 in
  let same_args = same_length && List.fold_left2 check_arg_typ true args1 args2 in
  let same_return = subtype_ret_ty c ret1 ret2 in
  same_args && same_return


and subtype_ret_ty (c : Tctxt.t ) ( ret1 : Ast.ret_ty ) ( ret2 : Ast.ret_ty ) : bool =
  match ret1 , ret2 with
  (* possibly change to _ , RetVoid . Depends on the Rules does can t1 be anything or is Retval higher t2  *)
  | RetVoid , RetVoid -> true
  | RetVal ty1 , RetVal ty2 -> subtype c ty1 ty2
  | _ -> false

(* well-formed types -------------------------------------------------------- *)
(* Implement a (set of) functions that check that types are well formed according
   to the H |- t and related inference rules

    - the function should succeed by returning () if the type is well-formed
      according to the rules

    - the function should fail using the "type_error" helper function if the 
      type is 

    - l is just an ast node that provides source location information for
      generating error messages (it's only needed for the type_error generation)

    - tc contains the structure definition context
 *)
let rec typecheck_ty (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ty) : unit =
  match t with
  | TInt | TBool -> ()
  | TRef ref_ty | TNullRef ref_ty -> typecheck_ref_ty l tc ref_ty

and typecheck_ref_ty  (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.rty) : unit =
  match t with
  | RString -> ()
  | RArray ty -> typecheck_ty l tc ty
  | RStruct id -> 
    begin match Tctxt.lookup_struct_option id tc with
    (* typeerror takes some node and msg *)
      | None -> type_error l "None Struct in typecheck_ref_ty"
      | Some _ -> ()
    end
  | RFun (parameters , ret_ty) -> 
    (* Check one parameter *)
    let typecheck_param param = typecheck_ty l tc param in
    (* Iterate through list of parameter from fun *)
    List.iter typecheck_param parameters;
    typecheck_ret_ty l tc ret_ty

and typecheck_ret_ty  (l : 'a Ast.node) (tc : Tctxt.t) (t : Ast.ret_ty) : unit =
  match t with
  | RetVoid -> ()
  | RetVal ty -> typecheck_ty l tc ty

(* typechecking expressions ------------------------------------------------- *)
(* Typechecks an expression in the typing context c, returns the type of the
   expression.  This function should implement the inference rules given in the
   oad.pdf specification.  There, they are written:

       H; G; L |- exp : t

   See tctxt.ml for the implementation of the context c, which represents the
   four typing contexts: H - for structure definitions G - for global
   identifiers L - for local identifiers

   Returns the (most precise) type for the expression, if it is type correct
   according to the inference rules.

   Uses the type_error function to indicate a (useful!) error message if the
   expression is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   Notes: - Structure values permit the programmer to write the fields in any
   order (compared with the structure definition).  This means that, given the
   declaration struct T { a:int; b:int; c:int } The expression new T {b=3; c=4;
   a=1} is well typed.  (You should sort the fields to compare them.)

*)
let rec typecheck_exp (c : Tctxt.t) (e : Ast.exp node) : Ast.ty =
  begin match e.elt with 
  | CNull ref_type                -> TNullRef ref_type
  | CBool _                       -> TBool
  | CInt _                        -> TInt
  | CStr _                        -> TRef RString

  | Id id                         -> begin match (lookup_local_option id c, lookup_global_option id c) with
                                     | (Some ty, _) -> ty
                                     | (_, Some ty) -> ty
                                     | _ -> type_error e ("Can't find " ^ id)
                                     end

  | CArr    (ty, exp_list)        -> let aux (exp : Ast.exp node) : unit =
                                     if (typecheck_exp c exp) = ty then () else type_error e ("Array Elements don't have expected type") in
                                     List.map aux exp_list; TRef (RArray ty)

  | NewArr  (ty, exp1, id, exp2)  -> let exp1_type = typecheck_exp c exp1 in 
                                     let expanded_ctxt = add_local c id TInt in
                                     let exp2_type = typecheck_exp expanded_ctxt exp2 in 
                                     begin match (exp1_type, exp2_type) with
                                     | (TInt, ty) -> TRef (RArray ty)
                                     | (TInt, _) -> type_error e ("Array initialized with wrong type")
                                     | (_ , _) -> type_error e ("Array size needs to be an int")
                                     end

  | Index   (exp1, exp2)          -> let exp1_type = typecheck_exp c exp1 in 
                                     let exp2_type = typecheck_exp c exp2 in 
                                     begin match (exp1_type, exp2_type) with
                                     | (TRef (RArray ty), TInt) -> ty
                                     | (TRef (RArray ty), _) -> type_error e ("Index needs to be an int")
                                     | (_ , _) -> type_error e ("Can only index an array")
                                     end

  | Length   exp                  -> begin match typecheck_exp c exp with
                                     | TRef (RArray ty) -> TInt
                                     | _ -> type_error e ("Can only get length of an array")
                                     end

  | CStruct (struct_id, fields)   ->  let struct_fields =
                                      begin match lookup_struct_option struct_id c with 
                                      | None -> type_error e ("Can't find struct with name " ^ struct_id)
                                      | Some x -> x
                                      end in
                                      let compare ((name1, _):(id * exp node)) ((name2, _):(id * exp node)) : int =
                                        String.compare name1 name2
                                      in
                                      let fields_sorted = List.sort compare fields in
                                      let rec aux (aux_struct : field list) (aux_fields : (id * exp node) list) : unit =
                                      begin match (aux_struct, aux_fields) with
                                      | ([], []) -> ()
                                      | ((f::fs), (id,exp)::tail) -> if f.fieldName = id then () else type_error e ("Structs with different field names");
                                                                     if f.ftyp = (typecheck_exp c exp) then () else type_error e ("Structs with different field types");
                                                                     aux fs tail
                                      | _ -> type_error e ("Structs with different number of fields")
                                      end in
                                      aux struct_fields fields;
                                      TRef (RStruct struct_id)

  | Proj    (exp, id)             ->  let fields =
                                      begin match typecheck_exp c exp with 
                                      | TRef (RStruct sid) ->  begin match lookup_struct_option sid c with 
                                                              | None -> type_error e ("Projargument is a nonexistant struct id") 
                                                              | Some x -> x
                                                              end
                                      | _ -> type_error e ("Proj is only defined for structs") 
                                      end in
                                      let rec aux (aux_struct : field list) : Ast.ty =
                                      begin match aux_struct with 
                                      | [] -> type_error e ("Field " ^ id ^ " cannot be found in the struct") 
                                      | f::fs -> if f.fieldName = id then f.ftyp else aux fs
                                      end in
                                      aux fields

  | Call    (exp, exp_list)       -> let (arg_list, ret) =
                                     begin match typecheck_exp c exp with
                                     | TRef (RFun (x,y)) -> (x,y)
                                     | _ -> type_error e ("Can only call functions") 
                                     end in
                                     let rec check_args (exps: exp node list) (args: ty list) =
                                     begin match (exps, args) with 
                                     | ([], []) -> ()
                                     | (_, []) -> type_error e ("Too many arguments") 
                                     | ([], _) -> type_error e ("Too few arguments") 
                                     | (exp::etail, arg::atail) -> if subtype c (typecheck_exp c exp) arg then check_args etail atail else type_error e ("Wrong type of argument") 
                                     end in
                                     check_args exp_list arg_list;
                                     begin match ret with
                                     | RetVal ty -> ty
                                     | _ -> type_error e ("***TEMP*** Function returns void") 
                                     end
  
  | Bop     (op, exp1, exp2)      -> let exp1_type = typecheck_exp c exp1 in 
                                     let exp2_type = typecheck_exp c exp2 in 
                                     begin match op with
                                     | Add | Sub | Mul | Shl | Shr | Sar | IAnd | IOr -> if (exp1_type, exp2_type) = (TInt, TInt)   then TInt  else type_error e ("Expected TInt for arithmetic bop")
                                     | And | Or                                       -> if (exp1_type, exp2_type) = (TBool, TBool) then TBool else type_error e ("Expected TBool for logic bop")
                                     | Eq | Neq | Lt | Lte | Gt | Gte                 -> if (exp1_type, exp2_type) = (TInt, TInt)   then TBool else type_error e ("Expected TInt for comp bop")
                                     end 

  | Uop     (op, exp)             -> let exp_type = typecheck_exp c exp in 
                                     begin match op with 
                                     | Bitnot | Neg -> if (exp_type = TInt)  then TInt  else type_error e ("Expected TInt for negation")
                                     | Lognot       -> if (exp_type = TBool) then TBool else type_error e ("Expected TBool for Lognot")
                                     end
  end

(* statements --------------------------------------------------------------- *)

(* Typecheck a statement 
   This function should implement the statment typechecking rules from oat.pdf.  

   Inputs:
    - tc: the type context
    - s: the statement node
    - to_ret: the desired return type (from the function declaration)

   Returns:
     - the new type context (which includes newly declared variables in scope
       after this statement
     - A boolean indicating the return behavior of a statement:
        false:  might not return
        true: definitely returns 

        in the branching statements, both branches must definitely return

        Intuitively: if one of the two branches of a conditional does not 
        contain a return statement, then the entier conditional statement might 
        not return.
  
        looping constructs never definitely return 

   Uses the type_error function to indicate a (useful!) error message if the
   statement is not type correct.  The exact wording of the error message is
   not important, but the fact that the error is raised, is important.  (Our
   tests also do not check the location information associated with the error.)

   - You will probably find it convenient to add a helper function that implements the 
     block typecheck rules.
*)
let rec typecheck_stmt (tc : Tctxt.t) (s:Ast.stmt node) (to_ret:ret_ty) : Tctxt.t * bool =
  let rec typecheck_stmts (current : Tctxt.t) (stmts:Ast.stmt node list) : Tctxt.t * bool =
    begin match stmts with 
    | [] -> (current, false)
    | [stmt] -> typecheck_stmt current stmt to_ret
    | stmt::tail -> let (next, flag) = typecheck_stmt current stmt to_ret in
                    if flag then type_error stmt ("Returns too early 2") else 
                    typecheck_stmts next tail
    end in
  
  begin match s.elt with
  | Assn  (loc_exp, value_exp)            -> let value_type = typecheck_exp tc value_exp in 
                                             let loc_type = typecheck_exp tc loc_exp in 
                                             if subtype tc value_type loc_type then (tc, false) else
                                             type_error s ("Assn types do not match")
  
  | Decl  (id, exp)                       -> let exp_type = typecheck_exp tc exp in 
                                             let ctxt = add_local tc id exp_type in
                                             (ctxt, false)

  | Ret    exp_opt                        -> begin match (exp_opt, to_ret) with 
                                             | (None, RetVoid)        -> (tc, true)
                                             | (Some _, RetVoid)      -> type_error s ("Returned something instead of void")
                                             | (None, RetVal _)       -> type_error s ("Returned nothing but expected something")
                                             | (Some exp, RetVal ty)  -> let exp_type = typecheck_exp tc exp in 
                                                                         if subtype tc exp_type ty then (tc, true) else type_error s ("Returned wrong type")
                                             end

  | SCall (exp, exp_list)                 ->  let (arg_list, ret) =
                                              begin match typecheck_exp tc exp with
                                              | TRef (RFun (x,y)) -> (x,y)
                                              | _ -> type_error s ("Can only call functions") 
                                              end in
                                              let rec check_args (exps: exp node list) (args: ty list) =
                                              begin match (exps, args) with 
                                              | ([], []) -> ()
                                              | (_, []) -> type_error s ("Too many arguments") 
                                              | ([], _) -> type_error s ("Too few arguments") 
                                              | (exp::etail, arg::atail) -> if subtype tc (typecheck_exp tc exp) arg then check_args etail atail else type_error s ("Wrong type of argument") 
                                              end in
                                              check_args exp_list arg_list;
                                              begin match ret with
                                              | RetVoid -> (tc, false)
                                              | _ -> type_error s ("Function returns something") 
                                              end

  | If    (cond, then_stmts, else_stmts)  -> if (typecheck_exp tc cond) = TBool then () else type_error s ("condition in if needs to be bool"); 
                                             let (ctxt1, flag1) = typecheck_stmts tc then_stmts in
                                             let (ctxt2, flag2) = typecheck_stmts tc else_stmts in
                                             (tc, (flag1 && flag2))
                                             
                                             
  
  | Cast  (rty, id, exp, stmts1, stmts2)  -> type_error s ("Statementtype 'Cast' has not yet been implemented")

  | For   (vdecls,cond_opt,stmt_opt,stmts)-> let rec aux (decls: vdecl list) (current: Tctxt.t) : Tctxt.t =
                                             begin match decls with 
                                             | [] -> current 
                                             | (id, exp)::tail -> let exp_type = typecheck_exp current exp in 
                                                                  let next = add_local current id exp_type in
                                                                  aux tail next
                                             end in
                                             let ctxt = aux vdecls tc in
                                             begin match cond_opt with 
                                             | None -> ()
                                             | Some cond -> if (typecheck_exp ctxt cond) = TBool then () else type_error s ("condition in if needs to be bool");
                                             end;
                                             begin match cond_opt with 
                                             | None -> ()
                                             | Some cond -> if (typecheck_exp ctxt cond) = TBool then () else type_error s ("condition in if needs to be bool");
                                             end;
                                             begin match stmt_opt with 
                                             | None -> (tc, false)
                                             | Some stmt -> typecheck_stmt ctxt stmt to_ret
                                             end;
                                             let (ctxt, flag) = typecheck_stmts ctxt stmts in
                                             (tc, false)

  | While (cond, stmts)                   -> if (typecheck_exp tc cond) = TBool then () else type_error s ("condition in if needs to be bool"); 
                                             let (ctxt, flag) = typecheck_stmts tc stmts in
                                             (tc, false)

  end

(* struct type declarations ------------------------------------------------- *)
(* Here is an example of how to implement the TYP_TDECLOK rule, which is 
   is needed elswhere in the type system.
 *)
and typecheck_block (tc : Tctxt.t) (block : Ast.block) (to_ret:ret_ty) : Tctxt.t * bool =
  match block with
  | [] -> tc, false
  | [s] -> typecheck_stmt tc s to_ret
  | s :: stmts -> (
    let new_c, returns_pred = typecheck_stmt tc s to_ret in
    match returns_pred with
    | false -> typecheck_block new_c stmts to_ret
    | true -> type_error s "[typecheck_block]: unexpected return behaviour of statement"
  )
(* Helper function to look for duplicate field names *)
let rec check_dups fs =
  match fs with
  | [] -> false
  | h :: t -> (List.exists (fun x -> x.fieldName = h.fieldName) t) || check_dups t

let typecheck_tdecl (tc : Tctxt.t) id fs  (l : 'a Ast.node) : unit =
  if check_dups fs
  then type_error l ("Repeated fields in " ^ id) 
  else List.iter (fun f -> typecheck_ty l tc f.ftyp) fs

(* function declarations ---------------------------------------------------- *)
(* typecheck a function declaration 
    - extends the local context with the types of the formal parameters to the 
      function
    - typechecks the body of the function (passing in the expected return type
    - checks that the function actually returns
*)
let rec expand_context (tc : Tctxt.t) (args : (ty * id) list) : Tctxt.t =
  match args with 
  | [] -> tc
  | (x,y)::tail -> expand_context (add_local tc y x) tail

let typecheck_fdecl (tc : Tctxt.t) (f : Ast.fdecl) (l : 'a Ast.node) : unit =
  let initial = expand_context tc f.args in
  let rec aux (current: Tctxt.t) (statements: block) : unit = 
    begin match statements with 
    | [] -> ()
    | [l] ->  let (next, flag) = typecheck_stmt current l f.frtyp in
              if flag then () else type_error l ("Didn't return") 
    | l::ls ->  let (next, flag) = typecheck_stmt current l f.frtyp in
                if flag then type_error l ("Returns too early") else aux next ls
    end in
  aux initial f.body

(* creating the typchecking context ----------------------------------------- *)

(* The following functions correspond to the
   judgments that create the global typechecking context.

   create_struct_ctxt: - adds all the struct types to the struct 'S'
   context (checking to see that there are no duplicate fields

     H |-s prog ==> H'


   create_function_ctxt: - adds the the function identifiers and their
   types to the 'F' context (ensuring that there are no redeclared
   function identifiers)

     H ; G1 |-f prog ==> G2


   create_global_ctxt: - typechecks the global initializers and adds
   their identifiers to the 'G' global context

     H ; G1 |-g prog ==> G2    


   NOTE: global initializers may mention function identifiers as
   constants, but can't mention other global values *)

let create_struct_ctxt (p:Ast.prog) : Tctxt.t =
  let aux (current: Tctxt.t) (decl: Ast.decl) : Tctxt.t =
    begin match decl with 
    | Gtdecl node -> begin match lookup_struct_option (fst node.elt) current with 
                     | None -> add_struct current (fst node.elt) (snd node.elt)
                     | Some _ -> type_error node ("Struct has already been declared")
                     end
    | _ -> current
    end in
  List.fold_left aux empty p

let add_built_in_functions (t0:Tctxt.t) : Tctxt.t =
  let t1 = add_global t0 "print_string"     (TRef (RFun ([TRef RString]               , RetVoid)))                      in
  let t2 = add_global t1 "print_int"        (TRef (RFun ([TInt]                       , RetVoid)))                      in
  let t3 = add_global t2 "print_bool"       (TRef (RFun ([TBool]                      , RetVoid)))                      in
  let t4 = add_global t3 "string_of_array"  (TRef (RFun ([TRef (RArray TInt)]         , RetVal (TRef RString))))        in
  let t5 = add_global t4 "array_of_string"  (TRef (RFun ([TRef RString]               , RetVal (TRef (RArray TInt)))))  in
  let t6 = add_global t5 "string_of_int"    (TRef (RFun ([TInt]                       , RetVal (TRef RString))))        in
  let t7 = add_global t6 "string_cat"       (TRef (RFun ([TRef RString;TRef RString]  , RetVal (TRef RString))))        in
  let t8 = add_global t7 "length_of_string" (TRef (RFun ([TRef RString]               , RetVal (TInt))))                in
  t8

let create_function_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let aux (current: Tctxt.t) (decl: Ast.decl) : Tctxt.t =
    begin match decl with 
    | Gfdecl node ->  let f = node.elt in
                      let ty = TRef (RFun ((List.map fst f.args), f.frtyp)) in
                      let id = f.fname in
                      begin match lookup_global_option id current with 
                      | None -> add_global current id ty
                      | Some _ -> type_error node (id ^ " has already been declared func")
                      end
                      
    | _ -> current
    end in
  List.fold_left aux (add_built_in_functions tc) p

let create_global_ctxt (tc:Tctxt.t) (p:Ast.prog) : Tctxt.t =
  let aux (current: Tctxt.t) (decl: Ast.decl) : Tctxt.t =
    begin match decl with 
    | Gvdecl node ->  let id = node.elt.name in
                      let exp = node.elt.init in
                      let ty = typecheck_exp tc exp in
                      begin match lookup_global_option id current with 
                      | None -> add_global current id ty
                      | Some _ -> type_error node (id ^ " has already been declared gobal")
                      end
    | _ -> current
    end in
  List.fold_left aux tc p

(* This function implements the |- prog and the H ; G |- prog 
   rules of the oat.pdf specification.   
*)
let typecheck_program (p:Ast.prog) : unit =
  let sc = create_struct_ctxt p in
  let fc = create_function_ctxt sc p in
  let tc = create_global_ctxt fc p in
  List.iter (fun p ->
    match p with
    | Gfdecl ({elt=f} as l) -> typecheck_fdecl tc f l
    | Gtdecl ({elt=(id, fs)} as l) -> typecheck_tdecl tc id fs l 
    | _ -> ()) p
