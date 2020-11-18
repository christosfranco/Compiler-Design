; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str_arr2437 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %_argc2434, { i64, [0 x i8*] }* %_argv2432) {
  %_argc2435 = alloca i64
  %_argv2433 = alloca { i64, [0 x i8*] }*
  %_str2438 = alloca i8*
  store i64 %_argc2434, i64* %_argc2435
  store { i64, [0 x i8*] }* %_argv2432, { i64, [0 x i8*] }** %_argv2433
  %_str2436 = getelementptr [13 x i8], [13 x i8]* @_str_arr2437, i32 0, i32 0
  store i8* %_str2436, i8** %_str2438
  %_str2439 = load i8*, i8** %_str2438
  call void @print_string(i8* %_str2439)
  ret i64 0
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
