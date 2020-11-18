; generated from: oatprograms/globals2.oat
target triple = "x86_64-unknown-linux"
@y = global i1 1
@_constant205 = global i1 1

define i64 @program(i64 %_argc199, { i64, [0 x i8*] }* %_args197) {
  %_argc200 = alloca i64
  %_args198 = alloca { i64, [0 x i8*] }*
  store i64 %_argc199, i64* %_argc200
  store { i64, [0 x i8*] }* %_args197, { i64, [0 x i8*] }** %_args198
  %_y201 = load i1, i1* @y
  br i1 %_y201, label %_then204, label %_else203
_then204:
  ret i64 17
_else203:
  br label %_merge202
_merge202:
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
