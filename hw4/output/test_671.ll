; generated from: oatprograms/run60.oat
target triple = "x86_64-unknown-linux"
@i = global i64 3
@_constant892 = global i64 3

define i64 @program(i64 %_argc889, { i64, [0 x i8*] }* %_argv887) {
  %_argc890 = alloca i64
  %_argv888 = alloca { i64, [0 x i8*] }*
  store i64 %_argc889, i64* %_argc890
  store { i64, [0 x i8*] }* %_argv887, { i64, [0 x i8*] }** %_argv888
  store i64 42, i64* @i
  %_i891 = load i64, i64* @i
  ret i64 %_i891
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
