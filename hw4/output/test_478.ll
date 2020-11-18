; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str_arr1745 = global [4 x i8] c"abc\00"
@_str_arr1748 = global [4 x i8] c"def\00"
@_str_arr1754 = global [4 x i8] c"789\00"
@_str_arr1757 = global [4 x i8] c"123\00"

define i64 @program(i64 %_argc1738, { i64, [0 x i8*] }* %_argv1736) {
  %_argc1739 = alloca i64
  %_argv1737 = alloca { i64, [0 x i8*] }*
  %_strs1760 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %_argc1738, i64* %_argc1739
  store { i64, [0 x i8*] }* %_argv1736, { i64, [0 x i8*] }** %_argv1737
  %_raw_array1740 = call i64* @oat_alloc_array(i64 2)
  %_array1741 = bitcast i64* %_raw_array1740 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1742 = call i64* @oat_alloc_array(i64 2)
  %_array1743 = bitcast i64* %_raw_array1742 to { i64, [0 x i8*] }*
  %_str1744 = getelementptr [4 x i8], [4 x i8]* @_str_arr1745, i32 0, i32 0
  %_ind1746 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1743, i32 0, i32 1, i32 0
  store i8* %_str1744, i8** %_ind1746
  %_str1747 = getelementptr [4 x i8], [4 x i8]* @_str_arr1748, i32 0, i32 0
  %_ind1749 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1743, i32 0, i32 1, i32 1
  store i8* %_str1747, i8** %_ind1749
  %_ind1750 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1741, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1743, { i64, [0 x i8*] }** %_ind1750
  %_raw_array1751 = call i64* @oat_alloc_array(i64 2)
  %_array1752 = bitcast i64* %_raw_array1751 to { i64, [0 x i8*] }*
  %_str1753 = getelementptr [4 x i8], [4 x i8]* @_str_arr1754, i32 0, i32 0
  %_ind1755 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1752, i32 0, i32 1, i32 0
  store i8* %_str1753, i8** %_ind1755
  %_str1756 = getelementptr [4 x i8], [4 x i8]* @_str_arr1757, i32 0, i32 0
  %_ind1758 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1752, i32 0, i32 1, i32 1
  store i8* %_str1756, i8** %_ind1758
  %_ind1759 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1741, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1752, { i64, [0 x i8*] }** %_ind1759
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1741, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1760
  %_strs1761 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1760
  %_index_ptr1763 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1761, i32 0, i32 1, i32 1
  %_index1764 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1763
  %_index_ptr1766 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1764, i32 0, i32 1, i32 1
  %_index1767 = load i8*, i8** %_index_ptr1766
  call void @print_string(i8* %_index1767)
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
