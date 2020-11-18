; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1698, { i64, [0 x i8*] }* %_argv1696) {
  %_argc1699 = alloca i64
  %_argv1697 = alloca { i64, [0 x i8*] }*
  %_a1705 = alloca { i64, [0 x i64] }*
  %_str1708 = alloca i8*
  store i64 %_argc1698, i64* %_argc1699
  store { i64, [0 x i8*] }* %_argv1696, { i64, [0 x i8*] }** %_argv1697
  %_raw_array1700 = call i64* @oat_alloc_array(i64 3)
  %_array1701 = bitcast i64* %_raw_array1700 to { i64, [0 x i64] }*
  %_ind1702 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1702
  %_ind1703 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1703
  %_ind1704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1701, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1704
  store { i64, [0 x i64] }* %_array1701, { i64, [0 x i64] }** %_a1705
  %_a1706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1705
  %_result1707 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1706)
  store i8* %_result1707, i8** %_str1708
  %_str1709 = load i8*, i8** %_str1708
  call void @print_string(i8* %_str1709)
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
