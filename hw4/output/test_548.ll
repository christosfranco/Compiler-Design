; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1
@_constant523 = global i1 1

define i64 @program(i64 %_argc515, { i64, [0 x i8*] }* %_argv513) {
  %_argc516 = alloca i64
  %_argv514 = alloca { i64, [0 x i8*] }*
  %_i517 = alloca i64
  store i64 %_argc515, i64* %_argc516
  store { i64, [0 x i8*] }* %_argv513, { i64, [0 x i8*] }** %_argv514
  store i64 0, i64* %_i517
  %_b518 = load i1, i1* @b
  br i1 %_b518, label %_then521, label %_else520
_then521:
  store i64 1, i64* %_i517
  br label %_merge519
_else520:
  br label %_merge519
_merge519:
  %_i522 = load i64, i64* %_i517
  ret i64 %_i522
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
