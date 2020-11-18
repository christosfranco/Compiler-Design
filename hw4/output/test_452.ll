; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8
@_constant784 = global i64 8

define i64 @f() {
  %_j781 = alloca i64
  store i64 0, i64* %_j781
  %_result782 = call i64 @g()
  store i64 %_result782, i64* %_j781
  %_j783 = load i64, i64* %_j781
  ret i64 %_j783
}

define i64 @g() {
  %_i780 = load i64, i64* @i
  ret i64 %_i780
}

define i64 @program(i64 %_argc777, { i64, [0 x i8*] }* %_argv775) {
  %_argc778 = alloca i64
  %_argv776 = alloca { i64, [0 x i8*] }*
  store i64 %_argc777, i64* %_argc778
  store { i64, [0 x i8*] }* %_argv775, { i64, [0 x i8*] }** %_argv776
  %_result779 = call i64 @f()
  ret i64 %_result779
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
