; generated from: oatprograms/run50.oat
target triple = "x86_64-unknown-linux"
@_str_arr722 = global [6 x i8] c"abcde\00"

define i64 @program(i64 %_argc719, { i64, [0 x i8*] }* %_argv717) {
  %_argc720 = alloca i64
  %_argv718 = alloca { i64, [0 x i8*] }*
  store i64 %_argc719, i64* %_argc720
  store { i64, [0 x i8*] }* %_argv717, { i64, [0 x i8*] }** %_argv718
  %_str721 = getelementptr [6 x i8], [6 x i8]* @_str_arr722, i32 0, i32 0
  call void @print_string(i8* %_str721)
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
