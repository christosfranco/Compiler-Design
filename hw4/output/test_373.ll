; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1780, { i64, [0 x i8*] }* %_argv1778) {
  %_argc1781 = alloca i64
  %_argv1779 = alloca { i64, [0 x i8*] }*
  %_a1787 = alloca { i64, [0 x i64] }*
  %_str1790 = alloca i8*
  store i64 %_argc1780, i64* %_argc1781
  store { i64, [0 x i8*] }* %_argv1778, { i64, [0 x i8*] }** %_argv1779
  %_raw_array1782 = call i64* @oat_alloc_array(i64 3)
  %_array1783 = bitcast i64* %_raw_array1782 to { i64, [0 x i64] }*
  %_ind1784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1783, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1784
  %_ind1785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1783, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1785
  %_ind1786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1783, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1786
  store { i64, [0 x i64] }* %_array1783, { i64, [0 x i64] }** %_a1787
  %_a1788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1787
  %_result1789 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1788)
  store i8* %_result1789, i8** %_str1790
  %_str1791 = load i8*, i8** %_str1790
  call void @print_string(i8* %_str1791)
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
