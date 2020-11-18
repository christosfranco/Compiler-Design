; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str_arr1551 = global [4 x i8] c"abc\00"
@_str_arr1554 = global [4 x i8] c"def\00"
@_str_arr1560 = global [4 x i8] c"789\00"
@_str_arr1563 = global [4 x i8] c"123\00"

define i64 @program(i64 %_argc1544, { i64, [0 x i8*] }* %_argv1542) {
  %_argc1545 = alloca i64
  %_argv1543 = alloca { i64, [0 x i8*] }*
  %_strs1566 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  store i64 %_argc1544, i64* %_argc1545
  store { i64, [0 x i8*] }* %_argv1542, { i64, [0 x i8*] }** %_argv1543
  %_raw_array1546 = call i64* @oat_alloc_array(i64 2)
  %_array1547 = bitcast i64* %_raw_array1546 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1548 = call i64* @oat_alloc_array(i64 2)
  %_array1549 = bitcast i64* %_raw_array1548 to { i64, [0 x i8*] }*
  %_str1550 = getelementptr [4 x i8], [4 x i8]* @_str_arr1551, i32 0, i32 0
  %_ind1552 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1549, i32 0, i32 1, i32 0
  store i8* %_str1550, i8** %_ind1552
  %_str1553 = getelementptr [4 x i8], [4 x i8]* @_str_arr1554, i32 0, i32 0
  %_ind1555 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1549, i32 0, i32 1, i32 1
  store i8* %_str1553, i8** %_ind1555
  %_ind1556 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1547, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1549, { i64, [0 x i8*] }** %_ind1556
  %_raw_array1557 = call i64* @oat_alloc_array(i64 2)
  %_array1558 = bitcast i64* %_raw_array1557 to { i64, [0 x i8*] }*
  %_str1559 = getelementptr [4 x i8], [4 x i8]* @_str_arr1560, i32 0, i32 0
  %_ind1561 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1558, i32 0, i32 1, i32 0
  store i8* %_str1559, i8** %_ind1561
  %_str1562 = getelementptr [4 x i8], [4 x i8]* @_str_arr1563, i32 0, i32 0
  %_ind1564 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1558, i32 0, i32 1, i32 1
  store i8* %_str1562, i8** %_ind1564
  %_ind1565 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1547, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1558, { i64, [0 x i8*] }** %_ind1565
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1547, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1566
  %_strs1567 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1566
  %_index_ptr1569 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1567, i32 0, i32 1, i32 1
  %_index1570 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1569
  %_index_ptr1572 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1570, i32 0, i32 1, i32 1
  %_index1573 = load i8*, i8** %_index_ptr1572
  call void @print_string(i8* %_index1573)
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
