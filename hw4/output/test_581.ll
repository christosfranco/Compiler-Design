; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1677, { i64, [0 x i8*] }* %_argv1675) {
  %_argc1678 = alloca i64
  %_argv1676 = alloca { i64, [0 x i8*] }*
  %_a1684 = alloca { i64, [0 x i64] }*
  store i64 %_argc1677, i64* %_argc1678
  store { i64, [0 x i8*] }* %_argv1675, { i64, [0 x i8*] }** %_argv1676
  %_raw_array1679 = call i64* @oat_alloc_array(i64 3)
  %_array1680 = bitcast i64* %_raw_array1679 to { i64, [0 x i64] }*
  %_ind1681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1681
  %_ind1682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1682
  %_ind1683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1680, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1683
  store { i64, [0 x i64] }* %_array1680, { i64, [0 x i64] }** %_a1684
  %_a1685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1684
  %_index_ptr1687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1685, i32 0, i32 1, i32 2
  %_index1688 = load i64, i64* %_index_ptr1687
  ret i64 %_index1688
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
