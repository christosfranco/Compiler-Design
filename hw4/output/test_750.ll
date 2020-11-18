; generated from: oatprograms/path1.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc250, { i64, [0 x i8*] }* %_argv248) {
  %_argc251 = alloca i64
  %_argv249 = alloca { i64, [0 x i8*] }*
  %_x252 = alloca i64
  store i64 %_argc250, i64* %_argc251
  store { i64, [0 x i8*] }* %_argv248, { i64, [0 x i8*] }** %_argv249
  store i64 17, i64* %_x252
  %_x253 = load i64, i64* %_x252
  ret i64 %_x253
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
