; generated from: oatprograms/run31.oat
target triple = "x86_64-unknown-linux"
@i = global i64 9
@_constant518 = global i64 9

define i64 @program(i64 %_argc513, { i64, [0 x i8*] }* %_argv511) {
  %_argc514 = alloca i64
  %_argv512 = alloca { i64, [0 x i8*] }*
  %_j516 = alloca i64
  store i64 %_argc513, i64* %_argc514
  store { i64, [0 x i8*] }* %_argv511, { i64, [0 x i8*] }** %_argv512
  %_i515 = load i64, i64* @i
  store i64 %_i515, i64* %_j516
  %_j517 = load i64, i64* %_j516
  ret i64 %_j517
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
