; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1050) {
  %_arr1051 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1050, { i64, [0 x i64] }** %_arr1051
  %_arr1052 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1051
  ret { i64, [0 x i64] }* %_arr1052
}

define i64 @program(i64 %_argc1023, { i64, [0 x i8*] }* %_argv1021) {
  %_argc1024 = alloca i64
  %_argv1022 = alloca { i64, [0 x i8*] }*
  %_garr1039 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1045 = alloca { i64, [0 x i64] }*
  store i64 %_argc1023, i64* %_argc1024
  store { i64, [0 x i8*] }* %_argv1021, { i64, [0 x i8*] }** %_argv1022
  %_raw_array1025 = call i64* @oat_alloc_array(i64 2)
  %_array1026 = bitcast i64* %_raw_array1025 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1027 = call i64* @oat_alloc_array(i64 3)
  %_array1028 = bitcast i64* %_raw_array1027 to { i64, [0 x i64] }*
  %_ind1029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1028, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1029
  %_ind1030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1028, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1030
  %_ind1031 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1028, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1031
  %_ind1032 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1028, { i64, [0 x i64] }** %_ind1032
  %_raw_array1033 = call i64* @oat_alloc_array(i64 3)
  %_array1034 = bitcast i64* %_raw_array1033 to { i64, [0 x i64] }*
  %_ind1035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1034, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1035
  %_ind1036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1034, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1036
  %_ind1037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1034, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1037
  %_ind1038 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1034, { i64, [0 x i64] }** %_ind1038
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1026, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1039
  %_garr1040 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1039
  %_index_ptr1042 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1040, i32 0, i32 1, i32 1
  %_index1043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1042
  %_result1044 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index1043)
  store { i64, [0 x i64] }* %_result1044, { i64, [0 x i64] }** %_arr1045
  %_arr1046 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1045
  %_index_ptr1048 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1046, i32 0, i32 1, i32 1
  %_index1049 = load i64, i64* %_index_ptr1048
  ret i64 %_index1049
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
