; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %_argc1088, { i64, [0 x i8*] }* %_argv1086) {
  %_argc1089 = alloca i64
  %_argv1087 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1088, i64* %_argc1089
  store { i64, [0 x i8*] }* %_argv1086, { i64, [0 x i8*] }** %_argv1087
  %_raw_array1090 = call i64* @oat_alloc_array(i64 3)
  %_array1091 = bitcast i64* %_raw_array1090 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1092 = call i64* @oat_alloc_array(i64 2)
  %_array1093 = bitcast i64* %_raw_array1092 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1094 = call i64* @oat_alloc_array(i64 2)
  %_array1095 = bitcast i64* %_raw_array1094 to { i64, [0 x i64] }*
  %_ind1096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1096
  %_ind1097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1095, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1097
  %_ind1098 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1093, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1095, { i64, [0 x i64] }** %_ind1098
  %_raw_array1099 = call i64* @oat_alloc_array(i64 2)
  %_array1100 = bitcast i64* %_raw_array1099 to { i64, [0 x i64] }*
  %_ind1101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1100, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1101
  %_ind1102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1100, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1102
  %_ind1103 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1093, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1100, { i64, [0 x i64] }** %_ind1103
  %_ind1104 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1091, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1093, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1104
  %_raw_array1105 = call i64* @oat_alloc_array(i64 1)
  %_array1106 = bitcast i64* %_raw_array1105 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1107 = call i64* @oat_alloc_array(i64 1)
  %_array1108 = bitcast i64* %_raw_array1107 to { i64, [0 x i64] }*
  %_ind1109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1108, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind1109
  %_ind1110 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1106, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1108, { i64, [0 x i64] }** %_ind1110
  %_ind1111 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1091, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1106, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1111
  %_raw_array1112 = call i64* @oat_alloc_array(i64 2)
  %_array1113 = bitcast i64* %_raw_array1112 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1114 = call i64* @oat_alloc_array(i64 2)
  %_array1115 = bitcast i64* %_raw_array1114 to { i64, [0 x i64] }*
  %_ind1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind1116
  %_ind1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind1117
  %_ind1118 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1113, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1115, { i64, [0 x i64] }** %_ind1118
  %_raw_array1119 = call i64* @oat_alloc_array(i64 2)
  %_array1120 = bitcast i64* %_raw_array1119 to { i64, [0 x i64] }*
  %_ind1121 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind1121
  %_ind1122 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1120, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind1122
  %_ind1123 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1113, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1120, { i64, [0 x i64] }** %_ind1123
  %_ind1124 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1091, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1113, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1124
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1091, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1125 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr1126 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1125, i32 0, i32 1, i32 2
  %_index1127 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr1126
  %_index_ptr1128 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index1127, i32 0, i32 1, i32 0
  %_index1129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1128
  %_index_ptr1130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1129, i32 0, i32 1, i32 1
  %_index1131 = load i64, i64* %_index_ptr1130
  ret i64 %_index1131
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
