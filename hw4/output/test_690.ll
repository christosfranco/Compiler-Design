; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %_argc1630, { i64, [0 x i8*] }* %_argv1628) {
  %_argc1631 = alloca i64
  %_argv1629 = alloca { i64, [0 x i8*] }*
  %_a1637 = alloca { i64, [0 x i64] }*
  store i64 %_argc1630, i64* %_argc1631
  store { i64, [0 x i8*] }* %_argv1628, { i64, [0 x i8*] }** %_argv1629
  %_raw_array1632 = call i64* @oat_alloc_array(i64 3)
  %_array1633 = bitcast i64* %_raw_array1632 to { i64, [0 x i64] }*
  %_ind1634 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1633, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1634
  %_ind1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1633, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1635
  %_ind1636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1633, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1636
  store { i64, [0 x i64] }* %_array1633, { i64, [0 x i64] }** %_a1637
  %_a1638 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1637
  %_index_ptr1639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1638, i32 0, i32 1, i32 2
  %_index1640 = load i64, i64* %_index_ptr1639
  ret i64 %_index1640
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
