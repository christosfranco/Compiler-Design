; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1
@_constant504 = global i1 1

define i64 @program(i64 %_argc496, { i64, [0 x i8*] }* %_argv494) {
  %_argc497 = alloca i64
  %_argv495 = alloca { i64, [0 x i8*] }*
  %_i498 = alloca i64
  store i64 %_argc496, i64* %_argc497
  store { i64, [0 x i8*] }* %_argv494, { i64, [0 x i8*] }** %_argv495
  store i64 0, i64* %_i498
  %_b499 = load i1, i1* @b
  br i1 %_b499, label %_then502, label %_else501
_then502:
  store i64 1, i64* %_i498
  br label %_merge500
_else501:
  br label %_merge500
_merge500:
  %_i503 = load i64, i64* %_i498
  ret i64 %_i503
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
