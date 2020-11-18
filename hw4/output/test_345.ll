; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8
@_constant785 = global i64 8

define i64 @f() {
  %_j782 = alloca i64
  store i64 0, i64* %_j782
  %_result783 = call i64 @g()
  store i64 %_result783, i64* %_j782
  %_j784 = load i64, i64* %_j782
  ret i64 %_j784
}

define i64 @g() {
  %_i781 = load i64, i64* @i
  ret i64 %_i781
}

define i64 @program(i64 %_argc778, { i64, [0 x i8*] }* %_argv776) {
  %_argc779 = alloca i64
  %_argv777 = alloca { i64, [0 x i8*] }*
  store i64 %_argc778, i64* %_argc779
  store { i64, [0 x i8*] }* %_argv776, { i64, [0 x i8*] }** %_argv777
  %_result780 = call i64 @f()
  ret i64 %_result780
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
