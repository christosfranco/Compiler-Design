open Ll
open Datastructures

(* The lattice of symbolic constants ---------------------------------------- *)
module SymConst =
  struct
    type t = NonConst           (* Uid may take on multiple values at runtime *)
           | Const of int64     (* Uid will always evaluate to const i64 or i1 *)
           | UndefConst         (* Uid is not defined at the point *)

    let compare s t =
      match (s, t) with
      | (Const i, Const j) -> Int64.compare i j
      | (NonConst, NonConst) | (UndefConst, UndefConst) -> 0
      | (NonConst, _) | (_, UndefConst) -> 1
      | (UndefConst, _) | (_, NonConst) -> -1

    let to_string : t -> string = function
      | NonConst -> "NonConst"
      | Const i -> Printf.sprintf "Const (%LdL)" i
      | UndefConst -> "UndefConst"

    (* helper function for join two SymPtr.t facts. *)
    let join fact1 fact2 = match fact1, fact2 with
      | NonConst , _ | _ , NonConst -> NonConst
      | _ -> UndefConst
  end

(* The analysis computes, at each program point, which UIDs in scope will evaluate 
   to integer constants *)
type fact = SymConst.t UidM.t



(* flow function across Ll instructions ------------------------------------- *)
(* - Uid of a binop or icmp with const arguments is constant-out
   - Uid of a binop or icmp with an UndefConst argument is UndefConst-out
   - Uid of a binop or icmp with an NonConst argument is NonConst-out
   - Uid of stores and void calls are UndefConst-out
   - Uid of all other instructions are NonConst-out
 *)
let solve_binop (op: bop) (x:int64) (y:int64) : int64 =
  begin match op with
  | Add   -> Int64.add                  x y
  | Sub   -> Int64.sub                  x y
  | Mul   -> Int64.mul                  x y
  | Shl   -> Int64.shift_left           x (Int64.to_int y)
  | Lshr  -> Int64.shift_right_logical  x (Int64.to_int y)
  | Ashr  -> Int64.shift_right          x (Int64.to_int y)
  | And   -> Int64.logand               x y
  | Or    -> Int64.logor                x y
  | Xor   -> Int64.logxor               x y
  end

let solve_icmp (cnd: cnd) (x:int64) (y:int64) : int64 =
  let cmp = begin match cnd with
  | Eq -> x = y
  | Ne -> x <> y
  | Slt -> x < y
  | Sle -> x <= y
  | Sgt -> x > y
  | Sge -> x >= y
  end in
  if cmp then 1L else 0L

let solve_op (op:operand) (d:fact) : SymConst.t =
  begin match op with
  | Null -> SymConst.UndefConst
  | Const x -> SymConst.Const x
  | Id id | Gid id -> begin match UidM.find_opt id d with 
                      | None -> SymConst.UndefConst
                      | Some x -> x
                      end
  end


let insn_flow (u,i:uid * insn) (d:fact) : fact =
  begin match i with
  | Binop (op, _, op1, op2) ->  begin match solve_op op1 d, solve_op op2 d with 
                                | Const x, Const y -> UidM.add u (SymConst.Const (solve_binop op x y)) d
                                | UndefConst, _ | _, UndefConst -> UidM.add u SymConst.UndefConst d
                                | _ -> UidM.add u SymConst.NonConst d
                                end
  | Icmp (op, _, op1, op2) ->  begin match solve_op op1 d, solve_op op2 d with 
                                | Const x, Const y -> UidM.add u (SymConst.Const (solve_icmp op x y)) d
                                | UndefConst, _ | _, UndefConst -> UidM.add u SymConst.UndefConst d
                                | _ -> UidM.add u SymConst.NonConst d
                                end
  | Store (_, _, Id id) | Store (_, _, Gid id) -> UidM.add u (SymConst.UndefConst) d
  | Call (Void, _, _) -> UidM.add u (SymConst.UndefConst) d
  | _ -> UidM.add u (SymConst.NonConst) d
  end

(* The flow function across terminators is trivial: they never change const info *)
let terminator_flow (t:terminator) (d:fact) : fact = d

(* module for instantiating the generic framework --------------------------- *)
module Fact =
  struct
    type t = fact
    let forwards = true

    let insn_flow = insn_flow
    let terminator_flow = terminator_flow
    
    let normalize : fact -> fact = 
      UidM.filter (fun _ v -> v != SymConst.UndefConst)

    let compare (d:fact) (e:fact) : int  = 
      UidM.compare SymConst.compare (normalize d) (normalize e)

    let to_string : fact -> string =
      UidM.to_string (fun _ v -> SymConst.to_string v)

    (* The constprop analysis should take the meet over predecessors to compute the
       flow into a node. You may find the UidM.merge function useful*)
    
      let combine (ds:fact list) : fact =
      let combine_element make_map fact_list =
        (* remove duplicates with merge, and put all elements into one list *)
        UidM.merge
        (* If there is a predecessor or is first element ; join them   *)
        (fun join map fact -> begin match map , fact with
        | Some map , Some fact -> Some (SymConst.join map fact)
        | y , None | None , y -> y
        end) make_map fact_list in
      List.fold_left combine_element UidM.empty ds
  end

(* instantiate the general framework ---------------------------------------- *)
module Graph = Cfg.AsGraph (Fact)
module Solver = Solver.Make (Fact) (Graph)

(* expose a top-level analysis operation ------------------------------------ *)
let analyze (g:Cfg.t) : Graph.t =
  (* the analysis starts with every node set to bottom (the map of every uid 
     in the function to UndefConst *)
  let init l = UidM.empty in

  (* the flow into the entry node should indicate that any parameter to the
     function is not a constant *)
  let cp_in = List.fold_right 
    (fun (u,_) -> UidM.add u SymConst.NonConst)
    g.Cfg.args UidM.empty 
  in
  let fg = Graph.of_cfg init cp_in g in
  Solver.solve fg


(* run constant propagation on a cfg given analysis results ----------------- *)
(* HINT: your cp_block implementation will probably rely on several helper 
   functions.                                                                 *)
let run (cg:Graph.t) (cfg:Cfg.t) : Cfg.t =
  let open SymConst in
  

  let cp_block (l:Ll.lbl) (cfg:Cfg.t) : Cfg.t =
    let b = Cfg.block cfg l in
    let cb = Graph.uid_out cg l in
    let aux ((id,ins) :(uid * insn)) : (uid * insn) =
      let temp = cb id in
      let auxx (op: operand) : operand =
        begin match op with 
        | Gid id | Id id -> begin match UidM.find id temp with
                            | Const x -> Const x
                            | _ -> op
                            end
        | _ -> op
        end in
      begin match ins with 
      | Binop (bop, ty, op1, op2) -> (id, Binop (bop, ty, auxx op1, auxx op2))
      | _ -> (id, ins)
      end
    in
    let block = {insns = List.map aux b.insns; term = b.term} in
    {cfg with blocks=LblM.add l block (LblM.remove l cfg.blocks)}
  in

  LblS.fold cp_block (Cfg.nodes cfg) cfg
