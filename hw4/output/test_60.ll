; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str_arr1531 = global [4 x i8] c"abc\00"
@_str_arr1534 = global [4 x i8] c"def\00"

define i64 @program(i64 %_argc1526, { i64, [0 x i8*] }* %_argv1524) {
  %_argc1527 = alloca i64
  %_argv1525 = alloca { i64, [0 x i8*] }*
  %_strs1536 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1526, i64* %_argc1527
  store { i64, [0 x i8*] }* %_argv1524, { i64, [0 x i8*] }** %_argv1525
  %_raw_array1528 = call i64* @oat_alloc_array(i64 2)
  %_array1529 = bitcast i64* %_raw_array1528 to { i64, [0 x i8*] }*
  %_str1530 = getelementptr [4 x i8], [4 x i8]* @_str_arr1531, i32 0, i32 0
  %_ind1532 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1529, i32 0, i32 1, i32 0
  store i8* %_str1530, i8** %_ind1532
  %_str1533 = getelementptr [4 x i8], [4 x i8]* @_str_arr1534, i32 0, i32 0
  %_ind1535 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1529, i32 0, i32 1, i32 1
  store i8* %_str1533, i8** %_ind1535
  store { i64, [0 x i8*] }* %_array1529, { i64, [0 x i8*] }** %_strs1536
  %_strs1537 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1536
  %_index_ptr1539 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1537, i32 0, i32 1, i32 0
  %_index1540 = load i8*, i8** %_index_ptr1539
  call void @print_string(i8* %_index1540)
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
