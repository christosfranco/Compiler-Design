; generated from: oatprograms/run24.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1771, { i64, [0 x i8*] }* %_argv1769) {
  %_argc1772 = alloca i64
  %_argv1770 = alloca { i64, [0 x i8*] }*
  %_a1775 = alloca { i64, [0 x i64] }*
  store i64 %_argc1771, i64* %_argc1772
  store { i64, [0 x i8*] }* %_argv1769, { i64, [0 x i8*] }** %_argv1770
  %_raw_array1773 = call i64* @oat_alloc_array(i64 0)
  %_array1774 = bitcast i64* %_raw_array1773 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1774, { i64, [0 x i64] }** %_a1775
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
