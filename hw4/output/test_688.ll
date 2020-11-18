; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1603, { i64, [0 x i8*] }* %_argv1601) {
  %_argc1604 = alloca i64
  %_argv1602 = alloca { i64, [0 x i8*] }*
  %_a1610 = alloca { i64, [0 x i64] }*
  store i64 %_argc1603, i64* %_argc1604
  store { i64, [0 x i8*] }* %_argv1601, { i64, [0 x i8*] }** %_argv1602
  %_raw_array1605 = call i64* @oat_alloc_array(i64 3)
  %_array1606 = bitcast i64* %_raw_array1605 to { i64, [0 x i64] }*
  %_ind1607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1606, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1607
  %_ind1608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1606, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1608
  %_ind1609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1606, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1609
  store { i64, [0 x i64] }* %_array1606, { i64, [0 x i64] }** %_a1610
  %_a1611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1610
  %_index_ptr1612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1611, i32 0, i32 1, i32 2
  %_index1613 = load i64, i64* %_index_ptr1612
  ret i64 %_index1613
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
