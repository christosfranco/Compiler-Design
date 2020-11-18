; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1065, { i64, [0 x i8*] }* %_argv1063) {
  %_argc1066 = alloca i64
  %_argv1064 = alloca { i64, [0 x i8*] }*
  %_arr1079 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1065, i64* %_argc1066
  store { i64, [0 x i8*] }* %_argv1063, { i64, [0 x i8*] }** %_argv1064
  %_raw_array1067 = call i64* @oat_alloc_array(i64 2)
  %_array1068 = bitcast i64* %_raw_array1067 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1069 = call i64* @oat_alloc_array(i64 2)
  %_array1070 = bitcast i64* %_raw_array1069 to { i64, [0 x i64] }*
  %_ind1071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1070, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1071
  %_ind1072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1070, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1072
  %_ind1073 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1068, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1070, { i64, [0 x i64] }** %_ind1073
  %_raw_array1074 = call i64* @oat_alloc_array(i64 2)
  %_array1075 = bitcast i64* %_raw_array1074 to { i64, [0 x i64] }*
  %_ind1076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1075, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1076
  %_ind1077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1075, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1077
  %_ind1078 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1068, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1075, { i64, [0 x i64] }** %_ind1078
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1068, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1079
  %_arr1080 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1079
  %_index_ptr1081 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1080, i32 0, i32 1, i32 0
  %_index1082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1081
  %_index_ptr1083 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1082, i32 0, i32 1, i32 0
  %_index1084 = load i64, i64* %_index_ptr1083
  ret i64 %_index1084
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
