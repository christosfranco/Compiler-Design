; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str_arr1747 = global [4 x i8] c"abc\00"
@_str_arr1750 = global [4 x i8] c"def\00"
@_str_arr1756 = global [4 x i8] c"789\00"
@_str_arr1759 = global [4 x i8] c"123\00"

define i64 @program(i64 %_argc1740, { i64, [0 x i8*] }* %_argv1738) {
  %_argc1741 = alloca i64
  %_argv1739 = alloca { i64, [0 x i8*] }*
  %_strs1762 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %_argc1740, i64* %_argc1741
  store { i64, [0 x i8*] }* %_argv1738, { i64, [0 x i8*] }** %_argv1739
  %_raw_array1742 = call i64* @oat_alloc_array(i64 2)
  %_array1743 = bitcast i64* %_raw_array1742 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1744 = call i64* @oat_alloc_array(i64 2)
  %_array1745 = bitcast i64* %_raw_array1744 to { i64, [0 x i8*] }*
  %_str1746 = getelementptr [4 x i8], [4 x i8]* @_str_arr1747, i32 0, i32 0
  %_ind1748 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1745, i32 0, i32 1, i32 0
  store i8* %_str1746, i8** %_ind1748
  %_str1749 = getelementptr [4 x i8], [4 x i8]* @_str_arr1750, i32 0, i32 0
  %_ind1751 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1745, i32 0, i32 1, i32 1
  store i8* %_str1749, i8** %_ind1751
  %_ind1752 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1743, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1745, { i64, [0 x i8*] }** %_ind1752
  %_raw_array1753 = call i64* @oat_alloc_array(i64 2)
  %_array1754 = bitcast i64* %_raw_array1753 to { i64, [0 x i8*] }*
  %_str1755 = getelementptr [4 x i8], [4 x i8]* @_str_arr1756, i32 0, i32 0
  %_ind1757 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1754, i32 0, i32 1, i32 0
  store i8* %_str1755, i8** %_ind1757
  %_str1758 = getelementptr [4 x i8], [4 x i8]* @_str_arr1759, i32 0, i32 0
  %_ind1760 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1754, i32 0, i32 1, i32 1
  store i8* %_str1758, i8** %_ind1760
  %_ind1761 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1743, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1754, { i64, [0 x i8*] }** %_ind1761
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1743, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1762
  %_strs1763 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1762
  %_index_ptr1765 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1763, i32 0, i32 1, i32 1
  %_index1766 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1765
  %_index_ptr1768 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1766, i32 0, i32 1, i32 1
  %_index1769 = load i8*, i8** %_index_ptr1768
  call void @print_string(i8* %_index1769)
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
