; generated from: oatprograms/path2.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc262, { i64, [0 x i8*] }* %_argv260) {
  %_argc263 = alloca i64
  %_argv261 = alloca { i64, [0 x i8*] }*
  %_x264 = alloca i64
  %_y265 = alloca i64
  store i64 %_argc262, i64* %_argc263
  store { i64, [0 x i8*] }* %_argv260, { i64, [0 x i8*] }** %_argv261
  store i64 17, i64* %_x264
  store i64 18, i64* %_y265
  %_x266 = load i64, i64* %_x264
  %_y267 = load i64, i64* %_y265
  %_bop268 = add i64 %_x266, %_y267
  ret i64 %_bop268
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
