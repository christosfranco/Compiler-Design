open Assert

(* These tests are provided by you -- they will be graded manually *)

(* You should also add additional test cases here to help you   *)
(* debug your program.                                          *)

let unit_tests2 = [
  "subtype_stringQ_stringQ",
   (fun () ->
       if Typechecker.subtype Tctxt.empty (TInt) (TInt ) then ()
       else failwith "should not fail")                                                                                     
; ("no_subtype_stringQ_stringQ",
   (fun () ->
       if Typechecker.subtype Tctxt.empty (TInt) (TBool ) then
         failwith "should not succeed" else ())
  )
  ;
]


let provided_tests : suite = [
  GradedTest ("the three test cases (positive/negative)", 5,
               unit_tests2)
               ;
  GradedTest ("/new oat feature", 5 , executed_oat_file ["hw5programs/check_struct.oat", "", "1";])
    ;
] 

