; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str_arr2632 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %_argc2629, { i64, [0 x i8*] }* %_argv2627) {
  %_argc2630 = alloca i64
  %_argv2628 = alloca { i64, [0 x i8*] }*
  %_str2633 = alloca i8*
  store i64 %_argc2629, i64* %_argc2630
  store { i64, [0 x i8*] }* %_argv2627, { i64, [0 x i8*] }** %_argv2628
  %_str2631 = getelementptr [13 x i8], [13 x i8]* @_str_arr2632, i32 0, i32 0
  store i8* %_str2631, i8** %_str2633
  %_str2634 = load i8*, i8** %_str2633
  call void @print_string(i8* %_str2634)
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
