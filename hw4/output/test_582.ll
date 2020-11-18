; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1691, { i64, [0 x i8*] }* %_argv1689) {
  %_argc1692 = alloca i64
  %_argv1690 = alloca { i64, [0 x i8*] }*
  %_i1693 = alloca i64
  %_a1699 = alloca { i64, [0 x i64] }*
  store i64 %_argc1691, i64* %_argc1692
  store { i64, [0 x i8*] }* %_argv1689, { i64, [0 x i8*] }** %_argv1690
  store i64 999, i64* %_i1693
  %_raw_array1694 = call i64* @oat_alloc_array(i64 3)
  %_array1695 = bitcast i64* %_raw_array1694 to { i64, [0 x i64] }*
  %_ind1696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1695, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1696
  %_ind1697 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1695, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1697
  %_ind1698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1695, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1698
  store { i64, [0 x i64] }* %_array1695, { i64, [0 x i64] }** %_a1699
  %_a1700 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1699
  %_index_ptr1702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1700, i32 0, i32 1, i32 2
  %_index1703 = load i64, i64* %_index_ptr1702
  ret i64 %_index1703
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
