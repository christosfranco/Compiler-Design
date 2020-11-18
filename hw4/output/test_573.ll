; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %_argc1130, { i64, [0 x i8*] }* %_argv1128) {
  %_argc1131 = alloca i64
  %_argv1129 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1130, i64* %_argc1131
  store { i64, [0 x i8*] }* %_argv1128, { i64, [0 x i8*] }** %_argv1129
  %_raw_array1132 = call i64* @oat_alloc_array(i64 3)
  %_array1133 = bitcast i64* %_raw_array1132 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1134 = call i64* @oat_alloc_array(i64 2)
  %_array1135 = bitcast i64* %_raw_array1134 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1136 = call i64* @oat_alloc_array(i64 2)
  %_array1137 = bitcast i64* %_raw_array1136 to { i64, [0 x i64] }*
  %_ind1138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1137, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1138
  %_ind1139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1137, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1139
  %_ind1140 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1135, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1137, { i64, [0 x i64] }** %_ind1140
  %_raw_array1141 = call i64* @oat_alloc_array(i64 2)
  %_array1142 = bitcast i64* %_raw_array1141 to { i64, [0 x i64] }*
  %_ind1143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1143
  %_ind1144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1142, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1144
  %_ind1145 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1135, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1142, { i64, [0 x i64] }** %_ind1145
  %_ind1146 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1133, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1135, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1146
  %_raw_array1147 = call i64* @oat_alloc_array(i64 1)
  %_array1148 = bitcast i64* %_raw_array1147 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1149 = call i64* @oat_alloc_array(i64 1)
  %_array1150 = bitcast i64* %_raw_array1149 to { i64, [0 x i64] }*
  %_ind1151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1150, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind1151
  %_ind1152 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1148, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1150, { i64, [0 x i64] }** %_ind1152
  %_ind1153 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1133, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1148, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1153
  %_raw_array1154 = call i64* @oat_alloc_array(i64 2)
  %_array1155 = bitcast i64* %_raw_array1154 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1156 = call i64* @oat_alloc_array(i64 2)
  %_array1157 = bitcast i64* %_raw_array1156 to { i64, [0 x i64] }*
  %_ind1158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1157, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind1158
  %_ind1159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1157, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind1159
  %_ind1160 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1157, { i64, [0 x i64] }** %_ind1160
  %_raw_array1161 = call i64* @oat_alloc_array(i64 2)
  %_array1162 = bitcast i64* %_raw_array1161 to { i64, [0 x i64] }*
  %_ind1163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind1163
  %_ind1164 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1162, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind1164
  %_ind1165 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1162, { i64, [0 x i64] }** %_ind1165
  %_ind1166 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1133, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1155, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1166
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1133, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1167 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr1169 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1167, i32 0, i32 1, i32 2
  %_index1170 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr1169
  %_index_ptr1172 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index1170, i32 0, i32 1, i32 0
  %_index1173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1172
  %_index_ptr1175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1173, i32 0, i32 1, i32 1
  %_index1176 = load i64, i64* %_index_ptr1175
  ret i64 %_index1176
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
