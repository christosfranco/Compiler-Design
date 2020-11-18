; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1679, { i64, [0 x i8*] }* %_argv1677) {
  %_argc1680 = alloca i64
  %_argv1678 = alloca { i64, [0 x i8*] }*
  %_a1686 = alloca { i64, [0 x i64] }*
  store i64 %_argc1679, i64* %_argc1680
  store { i64, [0 x i8*] }* %_argv1677, { i64, [0 x i8*] }** %_argv1678
  %_raw_array1681 = call i64* @oat_alloc_array(i64 3)
  %_array1682 = bitcast i64* %_raw_array1681 to { i64, [0 x i64] }*
  %_ind1683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1683
  %_ind1684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1684
  %_ind1685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1682, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1685
  store { i64, [0 x i64] }* %_array1682, { i64, [0 x i64] }** %_a1686
  %_a1687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1686
  %_index_ptr1689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1687, i32 0, i32 1, i32 2
  %_index1690 = load i64, i64* %_index_ptr1689
  ret i64 %_index1690
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
