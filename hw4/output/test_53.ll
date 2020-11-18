; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1
@_constant1143 = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1137) {
  %_arr1138 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1137, { i64, [0 x i64] }** %_arr1138
  %_arr1139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1138
  %_index_ptr1141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1139, i32 0, i32 1, i32 3
  %_index1142 = load i64, i64* %_index_ptr1141
  ret i64 %_index1142
}

define { i64, [0 x i64] }* @g() {
  %_arr1135 = alloca { i64, [0 x i64] }*
  %_raw_array1129 = call i64* @oat_alloc_array(i64 4)
  %_array1130 = bitcast i64* %_raw_array1129 to { i64, [0 x i64] }*
  %_ind1131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1131
  %_ind1132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1132
  %_ind1133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1133
  %_ind1134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1130, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1134
  store { i64, [0 x i64] }* %_array1130, { i64, [0 x i64] }** %_arr1135
  %_arr1136 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1135
  ret { i64, [0 x i64] }* %_arr1136
}

define i64 @program(i64 %_argc1055, { i64, [0 x i8*] }* %_argv1053) {
  %_argc1056 = alloca i64
  %_argv1054 = alloca { i64, [0 x i8*] }*
  %_arr11062 = alloca { i64, [0 x i64] }*
  %_arr21083 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1084 = alloca i64
  %_arr41086 = alloca { i64, [0 x i64] }*
  %_arr31093 = alloca { i64, [0 x i64] }*
  store i64 %_argc1055, i64* %_argc1056
  store { i64, [0 x i8*] }* %_argv1053, { i64, [0 x i8*] }** %_argv1054
  %_raw_array1057 = call i64* @oat_alloc_array(i64 3)
  %_array1058 = bitcast i64* %_raw_array1057 to { i64, [0 x i64] }*
  %_ind1059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1058, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1059
  %_ind1060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1058, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1060
  %_ind1061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1058, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1061
  store { i64, [0 x i64] }* %_array1058, { i64, [0 x i64] }** %_arr11062
  %_raw_array1063 = call i64* @oat_alloc_array(i64 3)
  %_array1064 = bitcast i64* %_raw_array1063 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1065 = call i64* @oat_alloc_array(i64 3)
  %_array1066 = bitcast i64* %_raw_array1065 to { i64, [0 x i64] }*
  %_ind1067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1066, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1067
  %_ind1068 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1066, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1068
  %_ind1069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1066, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1069
  %_ind1070 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1064, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1066, { i64, [0 x i64] }** %_ind1070
  %_raw_array1071 = call i64* @oat_alloc_array(i64 3)
  %_array1072 = bitcast i64* %_raw_array1071 to { i64, [0 x i64] }*
  %_ind1073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1073
  %_ind1074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1074
  %_ind1075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1072, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1075
  %_ind1076 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1064, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1072, { i64, [0 x i64] }** %_ind1076
  %_raw_array1077 = call i64* @oat_alloc_array(i64 3)
  %_array1078 = bitcast i64* %_raw_array1077 to { i64, [0 x i64] }*
  %_ind1079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1078, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1079
  %_ind1080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1078, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1080
  %_ind1081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1078, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1081
  %_ind1082 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1064, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1078, { i64, [0 x i64] }** %_ind1082
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1064, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21083
  store i64 1, i64* %_c1084
  %_result1085 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_result1085, { i64, [0 x i64] }** %_arr41086
  %_raw_array1087 = call i64* @oat_alloc_array(i64 4)
  %_array1088 = bitcast i64* %_raw_array1087 to { i64, [0 x i64] }*
  %_ind1089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1089
  %_ind1090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1090
  %_ind1091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1091
  %_ind1092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1088, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1092
  store { i64, [0 x i64] }* %_array1088, { i64, [0 x i64] }** %_arr31093
  %_c1094 = load i64, i64* %_c1084
  %_i1095 = load i64, i64* @i
  %_bop1096 = add i64 %_c1094, %_i1095
  store i64 %_bop1096, i64* %_c1084
  %_c1097 = load i64, i64* %_c1084
  %_arr11098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11062
  %_index_ptr1100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11098, i32 0, i32 1, i32 1
  %_index1101 = load i64, i64* %_index_ptr1100
  %_bop1102 = add i64 %_c1097, %_index1101
  store i64 %_bop1102, i64* %_c1084
  %_c1103 = load i64, i64* %_c1084
  %_arr21104 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21083
  %_index_ptr1106 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21104, i32 0, i32 1, i32 1
  %_index1107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1106
  %_index_ptr1109 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1107, i32 0, i32 1, i32 1
  %_index1110 = load i64, i64* %_index_ptr1109
  %_bop1111 = add i64 %_c1103, %_index1110
  store i64 %_bop1111, i64* %_c1084
  %_c1112 = load i64, i64* %_c1084
  %_arr31113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31093
  %_index_ptr1115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31113, i32 0, i32 1, i32 3
  %_index1116 = load i64, i64* %_index_ptr1115
  %_bop1117 = add i64 %_c1112, %_index1116
  store i64 %_bop1117, i64* %_c1084
  %_c1118 = load i64, i64* %_c1084
  %_arr31119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31093
  %_result1120 = call i64 @f({ i64, [0 x i64] }* %_arr31119)
  %_bop1121 = add i64 %_c1118, %_result1120
  store i64 %_bop1121, i64* %_c1084
  %_c1122 = load i64, i64* %_c1084
  %_arr41123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41086
  %_index_ptr1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41123, i32 0, i32 1, i32 1
  %_index1126 = load i64, i64* %_index_ptr1125
  %_bop1127 = add i64 %_c1122, %_index1126
  store i64 %_bop1127, i64* %_c1084
  %_c1128 = load i64, i64* %_c1084
  ret i64 %_c1128
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
