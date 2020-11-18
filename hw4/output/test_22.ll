; generated from: oatprograms/run26.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc309, { i64, [0 x i8*] }* %_argv307) {
  %_argc310 = alloca i64
  %_argv308 = alloca { i64, [0 x i8*] }*
  store i64 %_argc309, i64* %_argc310
  store { i64, [0 x i8*] }* %_argv307, { i64, [0 x i8*] }** %_argv308
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
