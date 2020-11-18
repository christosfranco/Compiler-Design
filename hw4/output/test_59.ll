; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %_argc1512, { i64, [0 x i8*] }* %_argv1510) {
  %_argc1513 = alloca i64
  %_argv1511 = alloca { i64, [0 x i8*] }*
  %_a1519 = alloca { i64, [0 x i64] }*
  store i64 %_argc1512, i64* %_argc1513
  store { i64, [0 x i8*] }* %_argv1510, { i64, [0 x i8*] }** %_argv1511
  %_raw_array1514 = call i64* @oat_alloc_array(i64 3)
  %_array1515 = bitcast i64* %_raw_array1514 to { i64, [0 x i64] }*
  %_ind1516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1515, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1516
  %_ind1517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1515, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1517
  %_ind1518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1515, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1518
  store { i64, [0 x i64] }* %_array1515, { i64, [0 x i64] }** %_a1519
  %_a1520 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1519
  %_index_ptr1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1520, i32 0, i32 1, i32 2
  %_index1523 = load i64, i64* %_index_ptr1522
  ret i64 %_index1523
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
