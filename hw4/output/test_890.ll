; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %_argc1019, { i64, [0 x i8*] }* %_argv1017) {
  %_argc1020 = alloca i64
  %_argv1018 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1019, i64* %_argc1020
  store { i64, [0 x i8*] }* %_argv1017, { i64, [0 x i8*] }** %_argv1018
  %_raw_array1021 = call i64* @oat_alloc_array(i64 2)
  %_array1022 = bitcast i64* %_raw_array1021 to { i64, [0 x i64] }*
  %_ind1023 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1023
  %_ind1024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1022, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1024
  store { i64, [0 x i64] }* %_array1022, { i64, [0 x i64] }** @arr
  %_arr1025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr1026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1025, i32 0, i32 1, i32 1
  %_index1027 = load i64, i64* %_index_ptr1026
  ret i64 %_index1027
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
