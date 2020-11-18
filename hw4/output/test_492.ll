; generated from: oatprograms/lib8.oat
target triple = "x86_64-unknown-linux"
@_str_arr2629 = global [13 x i8] c"Hello world!\00"

define i64 @program(i64 %_argc2626, { i64, [0 x i8*] }* %_argv2624) {
  %_argc2627 = alloca i64
  %_argv2625 = alloca { i64, [0 x i8*] }*
  %_str2630 = alloca i8*
  store i64 %_argc2626, i64* %_argc2627
  store { i64, [0 x i8*] }* %_argv2624, { i64, [0 x i8*] }** %_argv2625
  %_str2628 = getelementptr [13 x i8], [13 x i8]* @_str_arr2629, i32 0, i32 0
  store i8* %_str2628, i8** %_str2630
  %_str2631 = load i8*, i8** %_str2630
  call void @print_string(i8* %_str2631)
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
