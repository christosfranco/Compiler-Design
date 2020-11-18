; generated from: oatprograms/globals1.oat
target triple = "x86_64-unknown-linux"
@x = global i64 42
@_constant196 = global i64 42

define i64 @program(i64 %_argc193, { i64, [0 x i8*] }* %_args191) {
  %_argc194 = alloca i64
  %_args192 = alloca { i64, [0 x i8*] }*
  store i64 %_argc193, i64* %_argc194
  store { i64, [0 x i8*] }* %_args191, { i64, [0 x i8*] }** %_args192
  %_x195 = load i64, i64* @x
  ret i64 %_x195
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
