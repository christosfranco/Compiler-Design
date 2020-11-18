; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %_x940) {
  %_x941 = alloca i64
  %_acc942 = alloca i64
  store i64 %_x940, i64* %_x941
  store i64 1, i64* %_acc942
  br label %_cond947
_cond947:
  %_x943 = load i64, i64* %_x941
  %_bop944 = icmp sgt i64 %_x943, 0
  br i1 %_bop944, label %_body946, label %_post945
_body946:
  %_acc948 = load i64, i64* %_acc942
  %_x949 = load i64, i64* %_x941
  %_bop950 = mul i64 %_acc948, %_x949
  store i64 %_bop950, i64* %_acc942
  %_x951 = load i64, i64* %_x941
  %_bop952 = sub i64 %_x951, 1
  store i64 %_bop952, i64* %_x941
  br label %_cond947
_post945:
  %_acc953 = load i64, i64* %_acc942
  ret i64 %_acc953
}

define i64 @program(i64 %_argc935, { i64, [0 x i8*] }* %_argv933) {
  %_argc936 = alloca i64
  %_argv934 = alloca { i64, [0 x i8*] }*
  store i64 %_argc935, i64* %_argc936
  store { i64, [0 x i8*] }* %_argv933, { i64, [0 x i8*] }** %_argv934
  %_result937 = call i64 @fact(i64 5)
  %_result938 = call i8* @string_of_int(i64 %_result937)
  call void @print_string(i8* %_result938)
  ret i64 0
}


declare i64* @oat_alloc_array(i64)
declare { i64, [0 x i64] }* @array_of_string(i8*)
declare i8* @string_of_array({ i64, [0 x i64] }*)
declare i64 @length_of_string(i8*)
declare i8* @string_of_int(i64)
declare i8* @string_cat(i8*, i8*)
declare void @print_string(i8*)
declare void @print_int(i64)
declare void @print_bool(i1)
