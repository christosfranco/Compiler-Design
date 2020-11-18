; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %_argc1706, { i64, [0 x i8*] }* %_argv1704) {
  %_argc1707 = alloca i64
  %_argv1705 = alloca { i64, [0 x i8*] }*
  %_a1713 = alloca { i64, [0 x i64] }*
  store i64 %_argc1706, i64* %_argc1707
  store { i64, [0 x i8*] }* %_argv1704, { i64, [0 x i8*] }** %_argv1705
  %_raw_array1708 = call i64* @oat_alloc_array(i64 3)
  %_array1709 = bitcast i64* %_raw_array1708 to { i64, [0 x i64] }*
  %_ind1710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1709, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1710
  %_ind1711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1709, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1711
  %_ind1712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1709, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1712
  store { i64, [0 x i64] }* %_array1709, { i64, [0 x i64] }** %_a1713
  %_a1714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1713
  %_index_ptr1716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1714, i32 0, i32 1, i32 2
  %_index1717 = load i64, i64* %_index_ptr1716
  ret i64 %_index1717
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
