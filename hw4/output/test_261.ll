; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1693, { i64, [0 x i8*] }* %_argv1691) {
  %_argc1694 = alloca i64
  %_argv1692 = alloca { i64, [0 x i8*] }*
  %_i1695 = alloca i64
  %_a1701 = alloca { i64, [0 x i64] }*
  store i64 %_argc1693, i64* %_argc1694
  store { i64, [0 x i8*] }* %_argv1691, { i64, [0 x i8*] }** %_argv1692
  store i64 999, i64* %_i1695
  %_raw_array1696 = call i64* @oat_alloc_array(i64 3)
  %_array1697 = bitcast i64* %_raw_array1696 to { i64, [0 x i64] }*
  %_ind1698 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1698
  %_ind1699 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1699
  %_ind1700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1697, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1700
  store { i64, [0 x i64] }* %_array1697, { i64, [0 x i64] }** %_a1701
  %_a1702 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1701
  %_index_ptr1704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1702, i32 0, i32 1, i32 2
  %_index1705 = load i64, i64* %_index_ptr1704
  ret i64 %_index1705
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
