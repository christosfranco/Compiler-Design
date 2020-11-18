; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %_argc1132, { i64, [0 x i8*] }* %_argv1130) {
  %_argc1133 = alloca i64
  %_argv1131 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1132, i64* %_argc1133
  store { i64, [0 x i8*] }* %_argv1130, { i64, [0 x i8*] }** %_argv1131
  %_raw_array1134 = call i64* @oat_alloc_array(i64 3)
  %_array1135 = bitcast i64* %_raw_array1134 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array1136 = call i64* @oat_alloc_array(i64 2)
  %_array1137 = bitcast i64* %_raw_array1136 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1138 = call i64* @oat_alloc_array(i64 2)
  %_array1139 = bitcast i64* %_raw_array1138 to { i64, [0 x i64] }*
  %_ind1140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1140
  %_ind1141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1139, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1141
  %_ind1142 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1137, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1139, { i64, [0 x i64] }** %_ind1142
  %_raw_array1143 = call i64* @oat_alloc_array(i64 2)
  %_array1144 = bitcast i64* %_raw_array1143 to { i64, [0 x i64] }*
  %_ind1145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1144, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1145
  %_ind1146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1144, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1146
  %_ind1147 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1137, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1144, { i64, [0 x i64] }** %_ind1147
  %_ind1148 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1135, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1137, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1148
  %_raw_array1149 = call i64* @oat_alloc_array(i64 1)
  %_array1150 = bitcast i64* %_raw_array1149 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1151 = call i64* @oat_alloc_array(i64 1)
  %_array1152 = bitcast i64* %_raw_array1151 to { i64, [0 x i64] }*
  %_ind1153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1152, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind1153
  %_ind1154 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1150, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1152, { i64, [0 x i64] }** %_ind1154
  %_ind1155 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1135, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1150, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1155
  %_raw_array1156 = call i64* @oat_alloc_array(i64 2)
  %_array1157 = bitcast i64* %_raw_array1156 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1158 = call i64* @oat_alloc_array(i64 2)
  %_array1159 = bitcast i64* %_raw_array1158 to { i64, [0 x i64] }*
  %_ind1160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1159, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind1160
  %_ind1161 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1159, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind1161
  %_ind1162 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1157, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1159, { i64, [0 x i64] }** %_ind1162
  %_raw_array1163 = call i64* @oat_alloc_array(i64 2)
  %_array1164 = bitcast i64* %_raw_array1163 to { i64, [0 x i64] }*
  %_ind1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1164, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind1165
  %_ind1166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1164, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind1166
  %_ind1167 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1157, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1164, { i64, [0 x i64] }** %_ind1167
  %_ind1168 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1135, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1157, { i64, [0 x { i64, [0 x i64] }*] }** %_ind1168
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array1135, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr1169 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr1171 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr1169, i32 0, i32 1, i32 2
  %_index1172 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr1171
  %_index_ptr1174 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index1172, i32 0, i32 1, i32 0
  %_index1175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1174
  %_index_ptr1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1175, i32 0, i32 1, i32 1
  %_index1178 = load i64, i64* %_index_ptr1177
  ret i64 %_index1178
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
