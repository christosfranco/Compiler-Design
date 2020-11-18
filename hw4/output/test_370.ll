; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str_arr1727 = global [4 x i8] c"abc\00"
@_str_arr1730 = global [4 x i8] c"def\00"

define i64 @program(i64 %_argc1722, { i64, [0 x i8*] }* %_argv1720) {
  %_argc1723 = alloca i64
  %_argv1721 = alloca { i64, [0 x i8*] }*
  %_strs1732 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1722, i64* %_argc1723
  store { i64, [0 x i8*] }* %_argv1720, { i64, [0 x i8*] }** %_argv1721
  %_raw_array1724 = call i64* @oat_alloc_array(i64 2)
  %_array1725 = bitcast i64* %_raw_array1724 to { i64, [0 x i8*] }*
  %_str1726 = getelementptr [4 x i8], [4 x i8]* @_str_arr1727, i32 0, i32 0
  %_ind1728 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1725, i32 0, i32 1, i32 0
  store i8* %_str1726, i8** %_ind1728
  %_str1729 = getelementptr [4 x i8], [4 x i8]* @_str_arr1730, i32 0, i32 0
  %_ind1731 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1725, i32 0, i32 1, i32 1
  store i8* %_str1729, i8** %_ind1731
  store { i64, [0 x i8*] }* %_array1725, { i64, [0 x i8*] }** %_strs1732
  %_strs1733 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1732
  %_index_ptr1735 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1733, i32 0, i32 1, i32 0
  %_index1736 = load i8*, i8** %_index_ptr1735
  call void @print_string(i8* %_index1736)
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
