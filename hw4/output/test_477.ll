; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str_arr1725 = global [4 x i8] c"abc\00"
@_str_arr1728 = global [4 x i8] c"def\00"

define i64 @program(i64 %_argc1720, { i64, [0 x i8*] }* %_argv1718) {
  %_argc1721 = alloca i64
  %_argv1719 = alloca { i64, [0 x i8*] }*
  %_strs1730 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1720, i64* %_argc1721
  store { i64, [0 x i8*] }* %_argv1718, { i64, [0 x i8*] }** %_argv1719
  %_raw_array1722 = call i64* @oat_alloc_array(i64 2)
  %_array1723 = bitcast i64* %_raw_array1722 to { i64, [0 x i8*] }*
  %_str1724 = getelementptr [4 x i8], [4 x i8]* @_str_arr1725, i32 0, i32 0
  %_ind1726 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1723, i32 0, i32 1, i32 0
  store i8* %_str1724, i8** %_ind1726
  %_str1727 = getelementptr [4 x i8], [4 x i8]* @_str_arr1728, i32 0, i32 0
  %_ind1729 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1723, i32 0, i32 1, i32 1
  store i8* %_str1727, i8** %_ind1729
  store { i64, [0 x i8*] }* %_array1723, { i64, [0 x i8*] }** %_strs1730
  %_strs1731 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1730
  %_index_ptr1733 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1731, i32 0, i32 1, i32 0
  %_index1734 = load i8*, i8** %_index_ptr1733
  call void @print_string(i8* %_index1734)
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
