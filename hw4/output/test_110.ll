; generated from: oatprograms/globals2.oat
target triple = "x86_64-unknown-linux"
@y = global i1 1
@_constant209 = global i1 1

define i64 @program(i64 %_argc203, { i64, [0 x i8*] }* %_args201) {
  %_argc204 = alloca i64
  %_args202 = alloca { i64, [0 x i8*] }*
  store i64 %_argc203, i64* %_argc204
  store { i64, [0 x i8*] }* %_args201, { i64, [0 x i8*] }** %_args202
  %_y205 = load i1, i1* @y
  br i1 %_y205, label %_then208, label %_else207
_then208:
  ret i64 17
_else207:
  br label %_merge206
_merge206:
  ret i64 15
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
