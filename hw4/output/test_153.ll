; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %_a1235) {
  %_a1236 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1235, { i64, [0 x i64] }** %_a1236
  %_a1237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1236
  %_index_ptr1239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1237, i32 0, i32 1, i32 1
  %_index1240 = load i64, i64* %_index_ptr1239
  ret i64 %_index1240
}

define i64 @g(i64 %_x1213) {
  %_x1214 = alloca i64
  %_arr1217 = alloca { i64, [0 x i64] }*
  %_i1218 = alloca i64
  store i64 %_x1213, i64* %_x1214
  %_raw_array1215 = call i64* @oat_alloc_array(i64 3)
  %_array1216 = bitcast i64* %_raw_array1215 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1216, { i64, [0 x i64] }** %_arr1217
  store i64 0, i64* %_i1218
  br label %_cond1223
_cond1223:
  %_i1219 = load i64, i64* %_i1218
  %_bop1220 = icmp slt i64 %_i1219, 3
  br i1 %_bop1220, label %_body1222, label %_post1221
_body1222:
  %_arr1224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1217
  %_i1225 = load i64, i64* %_i1218
  %_index_ptr1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1224, i32 0, i32 1, i64 %_i1225
  %_x1228 = load i64, i64* %_x1214
  store i64 %_x1228, i64* %_index_ptr1227
  %_i1229 = load i64, i64* %_i1218
  %_bop1230 = add i64 %_i1229, 1
  store i64 %_bop1230, i64* %_i1218
  br label %_cond1223
_post1221:
  %_arr1231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1217
  %_index_ptr1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1231, i32 0, i32 1, i32 1
  %_index1234 = load i64, i64* %_index_ptr1233
  ret i64 %_index1234
}

define i64 @program(i64 %_argc1146, { i64, [0 x i8*] }* %_argv1144) {
  %_argc1147 = alloca i64
  %_argv1145 = alloca { i64, [0 x i8*] }*
  %_a1150 = alloca { i64, [0 x i64] }*
  %_i1151 = alloca i64
  %_arr1166 = alloca { i64, [0 x i64] }*
  %_i1167 = alloca i64
  %_arr01184 = alloca { i64, [0 x i64] }*
  %_i1185 = alloca i64
  store i64 %_argc1146, i64* %_argc1147
  store { i64, [0 x i8*] }* %_argv1144, { i64, [0 x i8*] }** %_argv1145
  %_raw_array1148 = call i64* @oat_alloc_array(i64 3)
  %_array1149 = bitcast i64* %_raw_array1148 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1149, { i64, [0 x i64] }** %_a1150
  store i64 0, i64* %_i1151
  br label %_cond1156
_cond1156:
  %_i1152 = load i64, i64* %_i1151
  %_bop1153 = icmp slt i64 %_i1152, 3
  br i1 %_bop1153, label %_body1155, label %_post1154
_body1155:
  %_a1157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1150
  %_i1158 = load i64, i64* %_i1151
  %_index_ptr1160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1157, i32 0, i32 1, i64 %_i1158
  %_i1161 = load i64, i64* %_i1151
  store i64 %_i1161, i64* %_index_ptr1160
  %_i1162 = load i64, i64* %_i1151
  %_bop1163 = add i64 %_i1162, 1
  store i64 %_bop1163, i64* %_i1151
  br label %_cond1156
_post1154:
  %_raw_array1164 = call i64* @oat_alloc_array(i64 4)
  %_array1165 = bitcast i64* %_raw_array1164 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1165, { i64, [0 x i64] }** %_arr1166
  store i64 0, i64* %_i1167
  br label %_cond1172
_cond1172:
  %_i1168 = load i64, i64* %_i1167
  %_bop1169 = icmp slt i64 %_i1168, 4
  br i1 %_bop1169, label %_body1171, label %_post1170
_body1171:
  %_arr1173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1166
  %_i1174 = load i64, i64* %_i1167
  %_index_ptr1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1173, i32 0, i32 1, i64 %_i1174
  %_i1177 = load i64, i64* %_i1167
  %_i1178 = load i64, i64* %_i1167
  %_bop1179 = mul i64 %_i1177, %_i1178
  store i64 %_bop1179, i64* %_index_ptr1176
  %_i1180 = load i64, i64* %_i1167
  %_bop1181 = add i64 %_i1180, 1
  store i64 %_bop1181, i64* %_i1167
  br label %_cond1172
_post1170:
  %_raw_array1182 = call i64* @oat_alloc_array(i64 3)
  %_array1183 = bitcast i64* %_raw_array1182 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1183, { i64, [0 x i64] }** %_arr01184
  store i64 0, i64* %_i1185
  br label %_cond1190
_cond1190:
  %_i1186 = load i64, i64* %_i1185
  %_bop1187 = icmp slt i64 %_i1186, 3
  br i1 %_bop1187, label %_body1189, label %_post1188
_body1189:
  %_arr01191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01184
  %_i1192 = load i64, i64* %_i1185
  %_index_ptr1194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01191, i32 0, i32 1, i64 %_i1192
  %_i1195 = load i64, i64* %_i1185
  %_bop1196 = mul i64 2, %_i1195
  store i64 %_bop1196, i64* %_index_ptr1194
  %_i1197 = load i64, i64* %_i1185
  %_bop1198 = add i64 %_i1197, 1
  store i64 %_bop1198, i64* %_i1185
  br label %_cond1190
_post1188:
  %_arr1199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1166
  %_index_ptr1201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1199, i32 0, i32 1, i32 3
  %_index1202 = load i64, i64* %_index_ptr1201
  %_a1203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1150
  %_index_ptr1205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1203, i32 0, i32 1, i32 1
  %_index1206 = load i64, i64* %_index_ptr1205
  %_bop1207 = add i64 %_index1202, %_index1206
  %_arr01208 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01184
  %_result1209 = call i64 @f({ i64, [0 x i64] }* %_arr01208)
  %_bop1210 = add i64 %_bop1207, %_result1209
  %_result1211 = call i64 @g(i64 4)
  %_bop1212 = add i64 %_bop1210, %_result1211
  ret i64 %_bop1212
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
