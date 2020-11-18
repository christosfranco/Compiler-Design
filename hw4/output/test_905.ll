; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str_arr1648 = global [4 x i8] c"abc\00"
@_str_arr1651 = global [4 x i8] c"def\00"

define i64 @program(i64 %_argc1643, { i64, [0 x i8*] }* %_argv1641) {
  %_argc1644 = alloca i64
  %_argv1642 = alloca { i64, [0 x i8*] }*
  %_strs1653 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1643, i64* %_argc1644
  store { i64, [0 x i8*] }* %_argv1641, { i64, [0 x i8*] }** %_argv1642
  %_raw_array1645 = call i64* @oat_alloc_array(i64 2)
  %_array1646 = bitcast i64* %_raw_array1645 to { i64, [0 x i8*] }*
  %_str1647 = getelementptr [4 x i8], [4 x i8]* @_str_arr1648, i32 0, i32 0
  %_ind1649 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1646, i32 0, i32 1, i32 0
  store i8* %_str1647, i8** %_ind1649
  %_str1650 = getelementptr [4 x i8], [4 x i8]* @_str_arr1651, i32 0, i32 0
  %_ind1652 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1646, i32 0, i32 1, i32 1
  store i8* %_str1650, i8** %_ind1652
  store { i64, [0 x i8*] }* %_array1646, { i64, [0 x i8*] }** %_strs1653
  %_strs1654 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1653
  %_index_ptr1655 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1654, i32 0, i32 1, i32 0
  %_index1656 = load i8*, i8** %_index_ptr1655
  call void @print_string(i8* %_index1656)
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
