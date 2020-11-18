; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1584, { i64, [0 x i8*] }* %_argv1582) {
  %_argc1585 = alloca i64
  %_argv1583 = alloca { i64, [0 x i8*] }*
  %_a1591 = alloca { i64, [0 x i64] }*
  %_str1594 = alloca i8*
  store i64 %_argc1584, i64* %_argc1585
  store { i64, [0 x i8*] }* %_argv1582, { i64, [0 x i8*] }** %_argv1583
  %_raw_array1586 = call i64* @oat_alloc_array(i64 3)
  %_array1587 = bitcast i64* %_raw_array1586 to { i64, [0 x i64] }*
  %_ind1588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1587, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1588
  %_ind1589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1587, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1589
  %_ind1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1587, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1590
  store { i64, [0 x i64] }* %_array1587, { i64, [0 x i64] }** %_a1591
  %_a1592 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1591
  %_result1593 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1592)
  store i8* %_result1593, i8** %_str1594
  %_str1595 = load i8*, i8** %_str1594
  call void @print_string(i8* %_str1595)
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
