; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc999, { i64, [0 x i8*] }* %_argv997) {
  %_argc1000 = alloca i64
  %_argv998 = alloca { i64, [0 x i8*] }*
  %_arr1013 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc999, i64* %_argc1000
  store { i64, [0 x i8*] }* %_argv997, { i64, [0 x i8*] }** %_argv998
  %_raw_array1001 = call i64* @oat_alloc_array(i64 2)
  %_array1002 = bitcast i64* %_raw_array1001 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1003 = call i64* @oat_alloc_array(i64 2)
  %_array1004 = bitcast i64* %_raw_array1003 to { i64, [0 x i64] }*
  %_ind1005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1005
  %_ind1006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1004, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1006
  %_ind1007 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1002, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1004, { i64, [0 x i64] }** %_ind1007
  %_raw_array1008 = call i64* @oat_alloc_array(i64 2)
  %_array1009 = bitcast i64* %_raw_array1008 to { i64, [0 x i64] }*
  %_ind1010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1009, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1010
  %_ind1011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1009, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1011
  %_ind1012 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1002, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1009, { i64, [0 x i64] }** %_ind1012
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1002, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1013
  %_arr1014 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1013
  %_index_ptr1016 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1014, i32 0, i32 1, i32 1
  %_index1017 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1016
  %_index_ptr1019 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1017, i32 0, i32 1, i32 1
  %_index1020 = load i64, i64* %_index_ptr1019
  ret i64 %_index1020
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
