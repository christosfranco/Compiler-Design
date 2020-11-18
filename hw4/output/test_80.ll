; generated from: oatprograms/globals2.oat
target triple = "x86_64-unknown-linux"
@y = global i1 1
@_constant185 = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %args) {
  %_alloca179 = alloca i64
  store i64 %argc, i64* %_alloca179
  %_alloca180 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %args, { i64, [0 x i8*] }** %_alloca180
  %_y181 = load i1, i1* @y
  br i1 %_y181, label %_then184, label %_else183
_then184:
  ret i64 17
_else183:
  br label %_merge182
_merge182:
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
