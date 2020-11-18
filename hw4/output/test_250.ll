; generated from: oatprograms/run5.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1083, { i64, [0 x i8*] }* %_argv1081) {
  %_argc1084 = alloca i64
  %_argv1082 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1083, i64* %_argc1084
  store { i64, [0 x i8*] }* %_argv1081, { i64, [0 x i8*] }** %_argv1082
  %_raw_array1085 = call i64* @oat_alloc_array(i64 2)
  %_array1086 = bitcast i64* %_raw_array1085 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1087 = call i64* @oat_alloc_array(i64 2)
  %_array1088 = bitcast i64* %_raw_array1087 to { i64, [0 x i64] }*
  %_ind1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1089
  %_ind1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1090
  %_ind1091 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1086, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1088, { i64, [0 x i64] }** %_ind1091
  %_raw_array1092 = call i64* @oat_alloc_array(i64 2)
  %_array1093 = bitcast i64* %_raw_array1092 to { i64, [0 x i64] }*
  %_ind1094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1093, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1094
  %_ind1095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1093, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1095
  %_ind1096 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1086, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1093, { i64, [0 x i64] }** %_ind1096
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1086, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_arr1097 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @arr
  %_index_ptr1099 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1097, i32 0, i32 1, i32 1
  %_index1100 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1099
  %_index_ptr1102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1100, i32 0, i32 1, i32 1
  %_index1103 = load i64, i64* %_index_ptr1102
  ret i64 %_index1103
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
