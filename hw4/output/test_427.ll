; generated from: oatprograms/globals6.oat
target triple = "x86_64-unknown-linux"
@_str_arr235 = global [7 x i8] c"hello!\00"

define i64 @program(i64 %_argc232, { i64, [0 x i8*] }* %_args230) {
  %_argc233 = alloca i64
  %_args231 = alloca { i64, [0 x i8*] }*
  %_s236 = alloca i8*
  store i64 %_argc232, i64* %_argc233
  store { i64, [0 x i8*] }* %_args230, { i64, [0 x i8*] }** %_args231
  %_str234 = getelementptr [7 x i8], [7 x i8]* @_str_arr235, i32 0, i32 0
  store i8* %_str234, i8** %_s236
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
