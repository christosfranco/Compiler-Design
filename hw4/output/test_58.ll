; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1497, { i64, [0 x i8*] }* %_argv1495) {
  %_argc1498 = alloca i64
  %_argv1496 = alloca { i64, [0 x i8*] }*
  %_i1499 = alloca i64
  %_a1505 = alloca { i64, [0 x i64] }*
  store i64 %_argc1497, i64* %_argc1498
  store { i64, [0 x i8*] }* %_argv1495, { i64, [0 x i8*] }** %_argv1496
  store i64 999, i64* %_i1499
  %_raw_array1500 = call i64* @oat_alloc_array(i64 3)
  %_array1501 = bitcast i64* %_raw_array1500 to { i64, [0 x i64] }*
  %_ind1502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1501, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1502
  %_ind1503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1501, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1503
  %_ind1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1501, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1504
  store { i64, [0 x i64] }* %_array1501, { i64, [0 x i64] }** %_a1505
  %_a1506 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1505
  %_index_ptr1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1506, i32 0, i32 1, i32 2
  %_index1509 = load i64, i64* %_index_ptr1508
  ret i64 %_index1509
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
