; generated from: oatprograms/run13.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x291, i64 %_y289) {
  %_x292 = alloca i64
  %_y290 = alloca i64
  store i64 %_x291, i64* %_x292
  store i64 %_y289, i64* %_y290
  %_x293 = load i64, i64* %_x292
  ret i64 %_x293
}

define i64 @program(i64 %_argc286, { i64, [0 x i8*] }* %_argv284) {
  %_argc287 = alloca i64
  %_argv285 = alloca { i64, [0 x i8*] }*
  store i64 %_argc286, i64* %_argc287
  store { i64, [0 x i8*] }* %_argv284, { i64, [0 x i8*] }** %_argv285
  %_result288 = call i64 @f(i64 1, i64 2)
  ret i64 %_result288
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
