; generated from: oatprograms/run13.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x450, i64 %_y448) {
  %_x451 = alloca i64
  %_y449 = alloca i64
  store i64 %_x450, i64* %_x451
  store i64 %_y448, i64* %_y449
  %_x452 = load i64, i64* %_x451
  ret i64 %_x452
}

define i64 @program(i64 %_argc445, { i64, [0 x i8*] }* %_argv443) {
  %_argc446 = alloca i64
  %_argv444 = alloca { i64, [0 x i8*] }*
  store i64 %_argc445, i64* %_argc446
  store { i64, [0 x i8*] }* %_argv443, { i64, [0 x i8*] }** %_argv444
  %_result447 = call i64 @f(i64 1, i64 2)
  ret i64 %_result447
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
