; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str_arr1667 = global [4 x i8] c"abc\00"
@_str_arr1670 = global [4 x i8] c"def\00"
@_str_arr1676 = global [4 x i8] c"789\00"
@_str_arr1679 = global [4 x i8] c"123\00"

define i64 @program(i64 %_argc1660, { i64, [0 x i8*] }* %_argv1658) {
  %_argc1661 = alloca i64
  %_argv1659 = alloca { i64, [0 x i8*] }*
  %_strs1682 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %_argc1660, i64* %_argc1661
  store { i64, [0 x i8*] }* %_argv1658, { i64, [0 x i8*] }** %_argv1659
  %_raw_array1662 = call i64* @oat_alloc_array(i64 2)
  %_array1663 = bitcast i64* %_raw_array1662 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1664 = call i64* @oat_alloc_array(i64 2)
  %_array1665 = bitcast i64* %_raw_array1664 to { i64, [0 x i8*] }*
  %_str1666 = getelementptr [4 x i8], [4 x i8]* @_str_arr1667, i32 0, i32 0
  %_ind1668 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1665, i32 0, i32 1, i32 0
  store i8* %_str1666, i8** %_ind1668
  %_str1669 = getelementptr [4 x i8], [4 x i8]* @_str_arr1670, i32 0, i32 0
  %_ind1671 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1665, i32 0, i32 1, i32 1
  store i8* %_str1669, i8** %_ind1671
  %_ind1672 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1663, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1665, { i64, [0 x i8*] }** %_ind1672
  %_raw_array1673 = call i64* @oat_alloc_array(i64 2)
  %_array1674 = bitcast i64* %_raw_array1673 to { i64, [0 x i8*] }*
  %_str1675 = getelementptr [4 x i8], [4 x i8]* @_str_arr1676, i32 0, i32 0
  %_ind1677 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1674, i32 0, i32 1, i32 0
  store i8* %_str1675, i8** %_ind1677
  %_str1678 = getelementptr [4 x i8], [4 x i8]* @_str_arr1679, i32 0, i32 0
  %_ind1680 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1674, i32 0, i32 1, i32 1
  store i8* %_str1678, i8** %_ind1680
  %_ind1681 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1663, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1674, { i64, [0 x i8*] }** %_ind1681
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1663, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1682
  %_strs1683 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1682
  %_index_ptr1684 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1683, i32 0, i32 1, i32 1
  %_index1685 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1684
  %_index_ptr1686 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1685, i32 0, i32 1, i32 1
  %_index1687 = load i8*, i8** %_index_ptr1686
  call void @print_string(i8* %_index1687)
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
