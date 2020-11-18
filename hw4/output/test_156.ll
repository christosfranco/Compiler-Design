; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1483, { i64, [0 x i8*] }* %_argv1481) {
  %_argc1484 = alloca i64
  %_argv1482 = alloca { i64, [0 x i8*] }*
  %_a1490 = alloca { i64, [0 x i64] }*
  store i64 %_argc1483, i64* %_argc1484
  store { i64, [0 x i8*] }* %_argv1481, { i64, [0 x i8*] }** %_argv1482
  %_raw_array1485 = call i64* @oat_alloc_array(i64 3)
  %_array1486 = bitcast i64* %_raw_array1485 to { i64, [0 x i64] }*
  %_ind1487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1486, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1487
  %_ind1488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1486, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1488
  %_ind1489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1486, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1489
  store { i64, [0 x i64] }* %_array1486, { i64, [0 x i64] }** %_a1490
  %_a1491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1490
  %_index_ptr1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1491, i32 0, i32 1, i32 2
  %_index1494 = load i64, i64* %_index_ptr1493
  ret i64 %_index1494
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
