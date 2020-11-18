; generated from: oatprograms/easyrun2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc7, { i64, [0 x i8*] }* %_argv5) {
  %_argc8 = alloca i64
  %_argv6 = alloca { i64, [0 x i8*] }*
  store i64 %_argc7, i64* %_argc8
  store { i64, [0 x i8*] }* %_argv5, { i64, [0 x i8*] }** %_argv6
  %_bop9 = add i64 17, 18
  ret i64 %_bop9
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
