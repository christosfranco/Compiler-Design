(* X86lite Simulator *)

(* See the documentation in the X86lite specification, available on the 
   course web pages, for a detailed explanation of the instruction
   semantics.
*)

open X86

(* simulator machine state -------------------------------------------------- *)

let mem_bot = 0x400000L          (* lowest valid address *)
let mem_top = 0x410000L          (* one past the last byte in memory *)
let mem_size = Int64.to_int (Int64.sub mem_top mem_bot)
let nregs = 17                   (* including Rip *)
let ins_size = 8L                (* assume we have a 8-byte encoding *)
let exit_addr = 0xfdeadL         (* halt when m.regs(%rip) = exit_addr *)

(* Your simulator should raise this exception if it tries to read from or
   store to an address not within the valid address space. *)
exception X86lite_segfault

(* The simulator memory maps addresses to symbolic bytes.  Symbolic
   bytes are either actual data indicated by the Byte constructor or
   'symbolic instructions' that take up eight bytes for the purposes of
   layout.

   The symbolic bytes abstract away from the details of how
   instructions are represented in memory.  Each instruction takes
   exactly eight consecutive bytes, where the first byte InsB0 stores
   the actual instruction, and the next sevent bytes are InsFrag
   elements, which aren't valid data.

   For example, the two-instruction sequence:
        at&t syntax             ocaml syntax
      movq %rdi, (%rsp)       Movq,  [~%Rdi; Ind2 Rsp]
      decq %rdi               Decq,  [~%Rdi]

   is represented by the following elements of the mem array (starting
   at address 0x400000):

       0x400000 :  InsB0 (Movq,  [~%Rdi; Ind2 Rsp])
       0x400001 :  InsFrag
       0x400002 :  InsFrag
       0x400003 :  InsFrag
       0x400004 :  InsFrag
       0x400005 :  InsFrag
       0x400006 :  InsFrag
       0x400007 :  InsFrag
       0x400008 :  InsB0 (Decq,  [~%Rdi])
       0x40000A :  InsFrag
       0x40000B :  InsFrag
       0x40000C :  InsFrag
       0x40000D :  InsFrag
       0x40000E :  InsFrag
       0x40000F :  InsFrag
       0x400010 :  InsFrag
*)
type sbyte = InsB0 of ins       (* 1st byte of an instruction *)
           | InsFrag            (* 2nd - 8th bytes of an instruction *)
           | Byte of char       (* non-instruction byte *)

(* memory maps addresses to symbolic bytes *)
type mem = sbyte array

(* Flags for condition codes *)
type flags = { mutable fo : bool
             ; mutable fs : bool
             ; mutable fz : bool
             }

(* Register files *)
type regs = int64 array

(* Complete machine state *)
type mach = { flags : flags
            ; regs : regs
            ; mem : mem
            }

(* simulator helper functions ----------------------------------------------- *)

(* The index of a register in the regs array *)
let rind : reg -> int = function
  | Rip -> 16
  | Rax -> 0  | Rbx -> 1  | Rcx -> 2  | Rdx -> 3
  | Rsi -> 4  | Rdi -> 5  | Rbp -> 6  | Rsp -> 7
  | R08 -> 8  | R09 -> 9  | R10 -> 10 | R11 -> 11
  | R12 -> 12 | R13 -> 13 | R14 -> 14 | R15 -> 15

(* Helper functions for reading/writing sbytes *)

(* Convert an int64 to its sbyte representation *)
let sbytes_of_int64 (i:int64) : sbyte list =
  let open Char in 
  let open Int64 in
  List.map (fun n -> Byte (shift_right i n |> logand 0xffL |> to_int |> chr))
           [0; 8; 16; 24; 32; 40; 48; 56]

(* Convert an sbyte representation to an int64 *)
let int64_of_sbytes (bs:sbyte list) : int64 =
  let open Char in
  let open Int64 in
  let f b i = match b with
    | Byte c -> logor (shift_left i 8) (c |> code |> of_int)
    | _ -> 0L
  in
  List.fold_right f bs 0L

(* Convert a string to its sbyte representation *)
let sbytes_of_string (s:string) : sbyte list =
  let rec loop acc = function
    | i when i < 0 -> acc
    | i -> loop (Byte s.[i]::acc) (pred i)
  in
  loop [Byte '\x00'] @@ String.length s - 1

(* Serialize an instruction to sbytes *)
let sbytes_of_ins (op, args:ins) : sbyte list =
  let check = function
    | Imm (Lbl _) | Ind1 (Lbl _) | Ind3 (Lbl _, _) -> 
      invalid_arg "sbytes_of_ins: tried to serialize a label!"
    | o -> ()
  in
  List.iter check args;
  [InsB0 (op, args); InsFrag; InsFrag; InsFrag;
   InsFrag; InsFrag; InsFrag; InsFrag]

(* Serialize a data element to sbytes *)
let sbytes_of_data : data -> sbyte list = function
  | Quad (Lit i) -> sbytes_of_int64 i
  | Asciz s -> sbytes_of_string s
  | Quad (Lbl _) -> invalid_arg "sbytes_of_data: tried to serialize a label!"


(* It might be useful to toggle printing of intermediate states of your 
   simulator. Our implementation uses this mutable flag to turn on/off
   printing.  For instance, you might write something like:

     [if !debug_simulator then print_endline @@ string_of_ins u; ...]

*)
let debug_simulator = ref false


(* OPen module here else it will give some errors in the above code, function names might interfere*)
open Int64_overflow

(* Interpret a condition code with respect to the given flags. *)
(* fo : overflow,    bit set if value larger than 64-bit *)
(* fs : significant, bit set if negative *)
(* fz : zero,        bit set if zero *)
let interp_cnd {fo; fs; fz} : cnd -> bool = fun x ->
  begin match x with
  | Eq -> (fz = true)
  | Neq -> (fz = false)
  | Lt -> (fs <> fo)
  | Le -> ((fs <> fo) || fz = true)
  | Gt -> ((fs = fo) && fz = false)
  | Ge -> (fs = fo)
  end

(*   You'll probably want a function that sets the three condition flags after a result has been computed. *)
(* Calculates whether there is overflow sets fo if true*)
(* Gets most significant bit by rightshifting all other bits, set fs if equal to 1 *)
(* Sets fz if equal to zero *)
let set_cnd_flags (res : Int64_overflow.t) (m : mach) : unit =
  (m.flags.fo <- res.Int64_overflow.overflow;
  let res2 = res.Int64_overflow.value in
  m.flags.fs <- (Int64.shift_right_logical res2 63) = Int64.one;
  m.flags.fz <- res2 = Int64.zero)

(* Maps an X86lite address into Some OCaml array index,
   or None if the address is not within the legal address space. *)
(* Has to be mem_top - ins_size due to the mem_top being one past last byte, and the last instruction has to fill the instruction size.  *)
let map_addr (addr:quad) : int option =
  if (((Int64.add addr 8L) <= (mem_top)) && (addr >= mem_bot)) then
    Some (Int64.to_int (Int64.sub addr mem_bot))
  else None

(*Loads a quad from a specified memory address*)
let load_from_memaddr (addr: quad) (m: mach): quad =
  begin match map_addr addr with
  | Some i -> int64_of_sbytes [m.mem.(i + 0); m.mem.(i + 1); m.mem.(i + 2); m.mem.(i + 3); m.mem.(i + 4); m.mem.(i + 5); m.mem.(i + 6); m.mem.(i + 7)]
  | None   -> raise X86lite_segfault
  end

(*Resolves an operand in a given machinestate and returns its value*)
let load_from_operand (operand: operand) (m: mach): quad =
  begin match operand with
  | Imm   imm         -> begin match imm with
                         | Lit value -> value
                         | Lbl _     -> failwith "Label not resolved"
                         end
                         
  | Reg   reg         -> m.regs.(rind reg)
  
  | Ind1  imm         -> begin match imm with
                         | Lit value -> load_from_memaddr value m
                         | Lbl _     -> failwith "Label not resolved"
                         end
                         
  | Ind2  reg         -> load_from_memaddr (m.regs.(rind reg)) m
  
  | Ind3  (imm, reg)  -> begin match imm with
                         | Lit value -> load_from_memaddr (Int64.add value m.regs.(rind reg)) m
                         | Lbl _     -> failwith "Label not resolved"
                         end
  end

(*Stores the given value in the memory addresses addr+0 ...addr+7*)
let store_to_memaddr (addr: quad) (m: mach) (value: quad): unit =
  let bytes = sbytes_of_int64 value in
  begin match map_addr addr with
  | Some i -> (*print_endline @@ "Store " ^ (Int64.to_string value) ^ " to " ^ (string_of_int i);*)
              (m.mem.(i+0) <- List.nth bytes 0);
              (m.mem.(i+1) <- List.nth bytes 1);
              (m.mem.(i+2) <- List.nth bytes 2);
              (m.mem.(i+3) <- List.nth bytes 3);
              (m.mem.(i+4) <- List.nth bytes 4);
              (m.mem.(i+5) <- List.nth bytes 5);
              (m.mem.(i+6) <- List.nth bytes 6);
              (m.mem.(i+7) <- List.nth bytes 7);
  | None   -> raise X86lite_segfault
  end


(*Resolves an operand in a given machinestate. It returns the updated machinestate where the value at the operand has been updated.*)
let store_to_operand (operand: operand) (m: mach) (value: quad): unit =
  begin match operand with
  | Imm   imm         -> failwith "can't store to immediates"

  | Reg   reg         -> (m.regs.(rind reg) <- value)

  | Ind1  imm         -> begin match imm with
                         | Lit addr  -> store_to_memaddr addr m value
                         | Lbl _     -> failwith "Label not resolved"
                         end

  | Ind2  reg         -> store_to_memaddr (m.regs.(rind reg)) m value

  | Ind3  (imm, reg)  -> begin match imm with
                         | Lit offset  -> store_to_memaddr (Int64.add offset m.regs.(rind reg)) m value
                         | Lbl _       -> failwith "Label not resolved"
                         end
  end

(*Returns the Instruction Rip points to*)
let fetch_instruction (m: mach): ins =
  let addr =
    begin match map_addr m.regs.(rind Rip) with
    | Some index -> index
    | None       -> raise X86lite_segfault
    end
  in
  
  begin match m.mem.(addr) with
  | InsB0 instr -> instr
  | InsFrag     -> failwith "Expected InsB0 got InsFrag"
  | Byte _      -> failwith "Expected InsB0 got Byte"
  end

  (* mach is machine state *)
let interp_opcode (insn : ins) (m : mach) : unit =
failwith "interp_opcode unimplemented test"


    (* We have provided a module for performing 64-bit arithmetic with overflow detection. You may find this useful for setting the status flags.
  
    Groups of instructions share common behavior -- for example, all of the arithmetic instructions are quite similar. You should factor out the commonality as much as you can in order to keep your code clean.
    You will probably want to develop small test cases to try out the functionality of your interpreter. See gradedtests.ml for some examples of how to set up tests that can look at the final state of the machine.
 *)

(*Implements the step function for Movq*)
let step_movq (m: mach) (operands: operand list): unit =
begin match operands with
| src::dest::[] -> store_to_operand dest m (load_from_operand src m);
| _             -> failwith ""
end

(* Simulates one step of the machine:
    - fetch the instruction at %rip
    - compute the source and/or destination information from the operands
    - simulate the instruction semantics
    - update the registers and/or memory appropriately
    - set the condition flags
*)
let step (m:mach) : unit =
  let (opcode, operands) = fetch_instruction m in
  m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L;
  begin match opcode with
  | Movq -> step_movq m operands;
  | _ -> failwith "unimplemented instruction"
  end


(* Runs the machine until the rip register reaches a designated
   memory address. Returns the contents of %rax when the 
   machine halts. *)
let run (m:mach) : int64 = 
  while m.regs.(rind Rip) <> exit_addr do step m done;
  m.regs.(rind Rax)

(* assembling and linking --------------------------------------------------- *)

(* A representation of the executable *)
type exec = { entry    : quad              (* address of the entry point *)
            ; text_pos : quad              (* starting address of the code *)
            ; data_pos : quad              (* starting address of the data *)
            ; text_seg : sbyte list        (* contents of the text segment *)
            ; data_seg : sbyte list        (* contents of the data segment *)
            }

(* Assemble should raise this when a label is used but not defined *)
exception Undefined_sym of lbl

(* Assemble should raise this when a label is defined more than once *)
exception Redefined_sym of lbl

(* Convert an X86 program into an object file:
   - separate the text and data segments
   - compute the size of each segment
      Note: the size of an Asciz string section is (1 + the string length)
            due to the null terminator

   - resolve the labels to concrete addresses and 'patch' the instructions to 
     replace Lbl values with the corresponding Imm values.

   - the text segment starts at the lowest address
   - the data segment starts after the text segment

  HINT: List.fold_left and List.fold_right are your friends.
 *)
let assemble (p:prog) : exec =
failwith "assemble unimplemented"

(* Convert an object file into an executable machine state. 
    - allocate the mem array
    - set up the memory state by writing the symbolic bytes to the 
      appropriate locations 
    - create the inital register state
      - initialize rip to the entry point address
      - initializes rsp to the last word in memory 
      - the other registers are initialized to 0
    - the condition code flags start as 'false'

  Hint: The Array.make, Array.blit, and Array.of_list library functions 
  may be of use.
*)
let load {entry; text_pos; data_pos; text_seg; data_seg} : mach = 
failwith "load unimplemented"
