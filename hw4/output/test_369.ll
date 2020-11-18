; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %_argc1708, { i64, [0 x i8*] }* %_argv1706) {
  %_argc1709 = alloca i64
  %_argv1707 = alloca { i64, [0 x i8*] }*
  %_a1715 = alloca { i64, [0 x i64] }*
  store i64 %_argc1708, i64* %_argc1709
  store { i64, [0 x i8*] }* %_argv1706, { i64, [0 x i8*] }** %_argv1707
  %_raw_array1710 = call i64* @oat_alloc_array(i64 3)
  %_array1711 = bitcast i64* %_raw_array1710 to { i64, [0 x i64] }*
  %_ind1712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1711, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1712
  %_ind1713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1711, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1713
  %_ind1714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1711, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1714
  store { i64, [0 x i64] }* %_array1711, { i64, [0 x i64] }** %_a1715
  %_a1716 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1715
  %_index_ptr1718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1716, i32 0, i32 1, i32 2
  %_index1719 = load i64, i64* %_index_ptr1718
  ret i64 %_index1719
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
