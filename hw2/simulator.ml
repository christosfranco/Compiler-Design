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
let interp_cnd {fo; fs; fz} : cnd -> bool = fun cc ->
  begin match cc with
  | Eq -> (fz = true)
  | Neq -> (fz = false)
  | Lt -> (fs <> fo)
  | Le -> ((fs <> fo) || fz = true)
  | Gt -> ((fs = fo) && fz = false)
  | Ge -> (fs = fo)
  end

(* You'll probably want a function that sets the three condition flags after a result has been computed. *)
(* Calculates whether there is overflow sets fo if true*)
(* Gets most significant bit by rightshifting all other bits, set fs if equal to 1 *)
(* Sets fz if equal to zero *)
let cnd_helper (res : int64) (m : mach) : unit =
  (m.flags.fs <- (Int64.shift_right_logical res 63) = Int64.one;
   m.flags.fz <- res = Int64.zero)

let set_cnd_flags (res : Int64_overflow.t) (m : mach) : unit =
  (m.flags.fo <- res.Int64_overflow.overflow;
  cnd_helper res.Int64_overflow.value m)


(* Maps an X86lite address into Some OCaml array index, or None if the address is not within the legal address space. *)
(* Has to be mem_top - ins_size due to the mem_top being one past last byte, and the last instruction has to fill the instruction size.  *)
let map_addr (addr:quad) : int option =
  if (((Int64.add addr 8L) <= (mem_top)) && (addr >= mem_bot)) then
    Some (Int64.to_int (Int64.sub addr mem_bot))
  else None

(*Returns the int64 address of an indirect operand*)
let mem_addr_of_operand (operand: operand) (m: mach): quad =
  begin match operand with
  | Ind1  imm         -> begin match imm with
                        | Lit addr  -> addr
                        | Lbl _     -> failwith "Label not resolved"
                        end
                          
  | Ind2  reg         -> m.regs.(rind reg)
    
  | Ind3  (imm, reg)  -> begin match imm with
                        | Lit offset -> Int64.add offset m.regs.(rind reg)
                        | Lbl _      -> failwith "Label not resolved"
                        end
  | _                 -> failwith "can't get the address of a direct operand"
  end

(*Loads a quad from a specified memory address*)
let load_from_memaddr (addr: quad) (m: mach): quad =
  begin match map_addr addr with
  | Some i -> int64_of_sbytes [m.mem.(i + 0); m.mem.(i + 1); m.mem.(i + 2); m.mem.(i + 3); m.mem.(i + 4); m.mem.(i + 5); m.mem.(i + 6); m.mem.(i + 7)]
  | None   -> raise X86lite_segfault
  end

(*Resolves an operand in a given machinestate and returns its value*)
let load_from_operand (operand: operand) (m: mach): quad =
  begin match operand with
  | Imm   imm -> begin match imm with
                 | Lit value -> value
                 | Lbl _     -> failwith "Label not resolved"
                 end
  | Reg   reg -> m.regs.(rind reg)
  | _         -> load_from_memaddr (mem_addr_of_operand operand m) m
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
  | Imm   imm -> failwith "can't store to immediates"
  | Reg   reg -> (m.regs.(rind reg) <- value)
  | _         -> store_to_memaddr (mem_addr_of_operand operand m) m value
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
  | InsFrag     -> failwith ("Expected InsB0 got InsFrag  at address " ^ (string_of_int addr))
  | Byte _      -> failwith ("Expected InsB0 got Byte at address " ^ (string_of_int addr))
  end


(* Takes operation code and the machine state and returns new machine state after performing 
logical operation, this includes setting flags and storing values *)
let logic (opcode: opcode) (oplist: operand list) (m:mach) : unit=
  let src = load_from_operand (List.nth oplist 0) m in
  let dest = load_from_operand (List.nth oplist 1) m in
  begin match opcode with
  | Notq -> let ans = Int64.lognot src in store_to_operand (List.nth oplist 0) m ans
  (*  *)
  | Andq -> let ans = Int64.logand dest src in (store_to_operand (List.nth oplist 1) m ans;
  cnd_helper ans m; m.flags.fo <- false)
  | Orq  -> let ans = Int64.logor dest src in (store_to_operand (List.nth oplist 1) m ans;
  cnd_helper ans m; m.flags.fo <- false)
  | Xorq -> let ans = Int64.logxor dest src in (store_to_operand (List.nth oplist 1) m ans;
  cnd_helper ans m; m.flags.fo <- false)
  | _ -> ()
  end

let arithmetic (opcode: opcode) (oplist: operand list) (m:mach) : unit=
  let src = load_from_operand (List.nth oplist 0) m in
  (* Apparently its not possible to define value such as dest if it is not used, 
  will fail the tests *)
  begin match opcode with
  | Negq -> let ans = Int64_overflow.neg src in
    (store_to_operand (List.nth oplist 0) m ans.Int64_overflow.value;
    (* If we have the smallest int64 -2^63 and change the most significant bit
    with the negate operation we will get overflow as the highest int64 is 2^63 -1 *)
    set_cnd_flags ans m;
    if src = Int64.min_int then m.flags.fo <- true else print_endline ("set overflow"))
  | Addq -> let dest = load_from_operand (List.nth oplist 1) m in let ans = Int64_overflow.add dest src in 
    (store_to_operand (List.nth oplist 1) m ans.Int64_overflow.value;
    set_cnd_flags ans m)
  | Cmpq -> let dest = load_from_operand (List.nth oplist 1) m in let ans = Int64_overflow.sub dest src in set_cnd_flags ans m
  | Subq -> let dest = load_from_operand (List.nth oplist 1) m in let ans = Int64_overflow.sub dest src in 
    (store_to_operand (List.nth oplist 1) m ans.Int64_overflow.value;
    set_cnd_flags ans m;
    (* If we have the smallest int64 -2^63 and substract this to dest 
    we will get overflow as the highest int64 is 2^63 -1 *)
    if src = Int64.min_int then m.flags.fo <- true)
  | Imulq ->let dest = load_from_operand (List.nth oplist 1) m in let ans = Int64_overflow.mul dest src in
    (store_to_operand (List.nth oplist 1) m ans.Int64_overflow.value;
    set_cnd_flags ans m)
  | Decq  -> let ans = Int64_overflow.pred src in
    (store_to_operand (List.nth oplist 0) m ans.Int64_overflow.value;
    set_cnd_flags ans m)
  (* get overflow similar to above if src = Int64.min_int *)
  | Incq  -> let ans = Int64_overflow.succ src in
    (store_to_operand (List.nth oplist 0) m ans.Int64_overflow.value;
    set_cnd_flags ans m)
  | _     -> ()
  end

  

let shift_operations (opcode: opcode) (oplist: operand list) (m:mach) : unit=
  (* shift operation :
    ins = opcode :: value :: destination *)
    (* lose high order bit to be sure no negative values *)
  let value = Int64.to_int (load_from_operand (List.nth oplist 0) m) in
  let dest = load_from_operand (List.nth oplist 1) m in
  let ans  =
  begin match opcode with
    | Shrq ->  Int64.shift_right dest value 
    | Shlq ->  Int64.shift_left dest value 
    | Sarq ->  Int64.shift_right_logical dest value 
    | _    ->  failwith "no matching opcode"
  end
  in
  (* set flags fs and fz *)
  store_to_operand (List.nth oplist 1) m ans;
  if value = 0 then () else cnd_helper ans m;
  (* set flag fo, if needed *)
  begin match opcode with
  (* logical right shift, DONT KEEP MOST SIGNIFICANT *)
  | Shrq -> if value = 1 then m.flags.fo <- (Int64.shift_right_logical dest 63) = Int64.one
            else ()
  (*  LOGICAL LEFT should be same as Salq *)
  | Shlq -> if value = 1 && 
        (Int64.shift_right_logical dest 63 <> (Int64.logand (Int64.shift_right_logical dest 62) 1L))
        then m.flags.fo <- true
        else ()
  (* A right arithmetic shift of a binary number by 1. The empty position in the most significant bit is filled with a copy of the original MSB. *)
  | Sarq -> if value = 1 then m.flags.fo <- false else ()
  | _    -> ()
  end


(*Implements the step function for Set cc*)
let step_set (m: mach) (operands: operand list) (cc:cnd): unit =
  begin match operands, cc with
  | dest::[], cc -> if interp_cnd {fo = m.flags.fo; fs = m.flags.fs; fz = m.flags.fz} cc
                    then store_to_operand dest m Int64.one
                    else store_to_operand dest m Int64.zero
  | _             -> failwith "Wrong number of arguments for Set"
  end

(*Implements the step function for J cc*)
let step_j (m: mach) (operands: operand list) (cc:cnd): unit =
  begin match operands,cc with
  | dest::[], cc -> if interp_cnd {fo = m.flags.fo; fs = m.flags.fs; fz = m.flags.fz} cc
                    then m.regs.(rind Rip) <- load_from_operand dest m
                    else m.regs.(rind Rip) <- Int64.add m.regs.(rind Rip) 8L     
  | _             -> failwith "Wrong number of arguments for J"
  end


(*Implements the step function for Leaq*)
let step_leaq (m: mach) (operands: operand list): unit =
  begin match operands with
  | src::dest::[] -> store_to_operand dest m (mem_addr_of_operand src m);
  | _             -> failwith "Wrong number of arguments for Leaq"
  end

(*Implements the step function for Movq*)
let step_movq (m: mach) (operands: operand list): unit =
  begin match operands with
  | src::dest::[] -> store_to_operand dest m (load_from_operand src m);
  | _             -> failwith "Wrong number of arguments for Movq"
  end

(*Implements the step function for Pushq*)
let step_pushq (m: mach) (operands: operand list): unit =
  begin match operands with
  | src::[] -> m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
               store_to_operand (Ind2 Rsp) m (load_from_operand src m);
  | _       -> failwith "Wrong number of arguments for Pushq"
  end

(*Implements the step function for Popq*)
let step_popq (m: mach) (operands: operand list): unit =
  begin match operands with
  | dest::[] -> store_to_operand dest m (load_from_operand (Ind2 Rsp) m);
                m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L;
  | _        -> failwith "Wrong number of arguments for Popq"
  end

(*Implements the step function for Jmp*)
let step_jmp (m: mach) (operands: operand list): unit =
  begin match operands with
  | src::[] -> store_to_operand (Ind2 Rip) m (load_from_operand src m);
  | _       -> failwith "Wrong number of arguments for jmp"
  end

(*Implements the step function for Callq*)
let step_callq (m: mach) (operands: operand list): unit =
  begin match operands with
  | src::[] -> m.regs.(rind Rsp) <- Int64.sub m.regs.(rind Rsp) 8L;
               store_to_operand (Ind2 Rsp) m (load_from_operand (Ind2 Rip) m);
               store_to_operand (Ind2 Rip) m (load_from_operand src m);
  | _       -> failwith "Wrong number of arguments for callq"
  end

(*Implements the step function for Retq*)
let step_retq (m: mach) (operands: operand list): unit =
  begin match operands with
  | [] -> store_to_operand (Ind2 Rip) m (load_from_operand (Ind2 Rsp) m);
          m.regs.(rind Rsp) <- Int64.add m.regs.(rind Rsp) 8L;
  | _  -> failwith "Wrong number of arguments for retq"
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
  (*Data Movement Instructions*)
  | Leaq  -> step_leaq  m operands;
  | Movq  -> step_movq  m operands;
  | Pushq -> step_pushq m operands;
  | Popq  -> step_popq  m operands;

  (*Control Flow Instructions*)
  | Jmp   -> step_jmp   m operands;
  | Callq -> step_callq m operands;
  | Retq  -> step_retq  m operands;
  | J cc  -> step_j     m operands cc;

  (* logical operations *)
  | Notq | Andq | Orq | Xorq -> logic opcode operands m;

  (* bitwise shift operations *)
  | Sarq | Shrq | Shlq -> shift_operations opcode operands m;
  
  (* Arithmetic operations *)
  | Cmpq | Negq | Addq | Subq | Imulq | Incq | Decq -> arithmetic opcode operands m; 
  
  (* Set cc *)
  | Set cc-> step_set m operands cc;
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

(*Not nice but it separates instructions from data*)
let rec get_inst (p:prog):prog = 
  begin match p with 
  | [] -> []
  | {lbl; global; asm}::ps -> begin match asm with
                              | Text inst -> {lbl; global; asm}::(get_inst ps)
                              | Data data -> (get_inst ps)
                              end
  end

(*Not nice but it separates instructions from data*)
let rec get_data (p:prog):prog = 
    begin match p with 
    | [] -> []
    | {lbl; global; asm}::ps -> begin match asm with
                                | Text inst -> (get_inst ps)
                                | Data data -> {lbl; global; asm}::(get_inst ps)
                                end
    end

(* 
type data = Asciz of string
          | Quad of imm

type asm = Text of ins list    (* code *)
         | Data of data list   (* data *)

(* labeled blocks of data or code *)
type elem = { lbl: lbl; global: bool; asm: asm }

type prog = elem list *)

(*Get the size of one memory block
Have to give a value for size with as argument else it cannot return the value, 
give 0L if unknown*)

let size_data (size_d:int64) (data: data) : quad = 
    match data with 
    | Asciz a -> Int64.add (Int64.of_int (String.length a)) (Int64.add size_d 1L) 
    | Quad (Lit i) -> Int64.add size_d 8L
    | _ -> size_d

let get_size_of_elem (size:int64) (e: elem) : quad =
  (* We want to get the size of an element, whether it is a data seg or a text seg *)
  (* Datasize *)
  begin match e.asm with
  | Text t-> Int64.add size (Int64.of_int ((List.length t) * 8))
  | Data d -> Int64.add size (List.fold_left size_data 0L d)
  |  _ -> size
  end

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
  let p_inst = get_inst p in
  let p_data = get_data p in
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
  (* Allocate mem array *)
  let mem_array = Array.of_list (sbytes_of_int64 exit_addr) in
  (* symbolic bytes 0xFFF8 = 0x10000 / 8 - 8 ; Number of bytes that has the sbyte type InsFrag*)
  let sym_bytes = Array.make 0xFFF8 InsFrag in
  let text = Array.of_list text_seg in
  let data = Array.of_list data_seg in
  (* text and data in one array *)
  let data_and_text = Array.append text data in
  (* will copy elemets from data_and_text into sym_bytes, InsFrag will fill out space*)
    (Array.blit data_and_text 0 sym_bytes 0 (Array.length data_and_text);
    (* Fill out remaining space in memory with empty sbytes *)
    let mem_state = Array.append sym_bytes mem_array in
    (* Registers initialized as 0L, make 17 *)
    let registers = Array.make 17 0L in
    (* Set flags to false *)
    let flags = {fo=false; fs=false; fz=false;}in
    (* Set Rip to entry point addr *) 
      (Array.set registers (rind Rip) entry;
    (*Set Rsp to last word in memory *)
      Array.set registers (rind Rsp) (0x40FFF8L);
      {flags=flags; regs=registers; mem=mem_state;}))

