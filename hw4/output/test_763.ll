; generated from: oatprograms/run30.oat
target triple = "x86_64-unknown-linux"
@i = global i64 9
@_constant510 = global i64 9

define i64 @program(i64 %_argc507, { i64, [0 x i8*] }* %_argv505) {
  %_argc508 = alloca i64
  %_argv506 = alloca { i64, [0 x i8*] }*
  store i64 %_argc507, i64* %_argc508
  store { i64, [0 x i8*] }* %_argv505, { i64, [0 x i8*] }** %_argv506
  %_i509 = load i64, i64* @i
  ret i64 %_i509
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
