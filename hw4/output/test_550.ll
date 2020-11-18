; generated from: oatprograms/run31.oat
target triple = "x86_64-unknown-linux"
@i = global i64 9
@_constant537 = global i64 9

define i64 @program(i64 %_argc532, { i64, [0 x i8*] }* %_argv530) {
  %_argc533 = alloca i64
  %_argv531 = alloca { i64, [0 x i8*] }*
  %_j535 = alloca i64
  store i64 %_argc532, i64* %_argc533
  store { i64, [0 x i8*] }* %_argv530, { i64, [0 x i8*] }** %_argv531
  %_i534 = load i64, i64* @i
  store i64 %_i534, i64* %_j535
  %_j536 = load i64, i64* %_j535
  ret i64 %_j536
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
