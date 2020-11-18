; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1043, { i64, [0 x i8*] }* %_argv1041) {
  %_argc1044 = alloca i64
  %_argv1042 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1043, i64* %_argc1044
  store { i64, [0 x i8*] }* %_argv1041, { i64, [0 x i8*] }** %_argv1042
  %_raw_array1045 = call i64* @oat_alloc_array(i64 2)
  %_array1046 = bitcast i64* %_raw_array1045 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1047 = call i64* @oat_alloc_array(i64 2)
  %_array1048 = bitcast i64* %_raw_array1047 to { i64, [0 x i64] }*
  %_ind1049 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1048, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1049
  %_ind1050 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1048, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1050
  %_ind1051 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1046, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1048, { i64, [0 x i64] }** %_ind1051
  %_raw_array1052 = call i64* @oat_alloc_array(i64 2)
  %_array1053 = bitcast i64* %_raw_array1052 to { i64, [0 x i64] }*
  %_ind1054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1053, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1054
  %_ind1055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1053, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1055
  %_ind1056 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1046, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1053, { i64, [0 x i64] }** %_ind1056
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1046, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1057 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_ptr1058 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1057, i32 0, i32 1, i32 1
  %_index1059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1058
  %_index_ptr1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1059, i32 0, i32 1, i32 1
  %_index1061 = load i64, i64* %_index_ptr1060
  ret i64 %_index1061
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
