; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc84, { i64, [0 x i8*] }* %_argv82) {
  %_argc85 = alloca i64
  %_argv83 = alloca { i64, [0 x i8*] }*
  store i64 %_argc84, i64* %_argc85
  store { i64, [0 x i8*] }* %_argv82, { i64, [0 x i8*] }** %_argv83
  %_unop86 = xor i64 5, -1
  %_bop87 = and i64 %_unop86, 6
  %_bop88 = or i64 2, 0
  %_bop89 = icmp sge i64 %_bop87, %_bop88
  br i1 %_bop89, label %_then92, label %_else91
_then92:
  ret i64 23
_else91:
  ret i64 46
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
