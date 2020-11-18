; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x1146 = alloca i64
  %_a1194 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1196 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_alloca1144 = alloca i64
  store i64 %argc, i64* %_alloca1144
  %_alloca1145 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1145
  store i64 10, i64* %_x1146
  %_raw_array1147 = call i64* @oat_alloc_array(i64 3)
  %_array1148 = bitcast i64* %_raw_array1147 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1149 = call i64* @oat_alloc_array(i64 3)
  %_array1150 = bitcast i64* %_raw_array1149 to { i64, [0 x i64] }*
  %_x1151 = load i64, i64* %_x1146
  %_bop1152 = add i64 %_x1151, 0
  %_bop1153 = add i64 %_bop1152, 0
  %_ind1154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1150, i32 0, i32 1, i32 0
  store i64 %_bop1153, i64* %_ind1154
  %_x1155 = load i64, i64* %_x1146
  %_bop1156 = add i64 %_x1155, 0
  %_bop1157 = add i64 %_bop1156, 1
  %_ind1158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1150, i32 0, i32 1, i32 1
  store i64 %_bop1157, i64* %_ind1158
  %_x1159 = load i64, i64* %_x1146
  %_bop1160 = add i64 %_x1159, 0
  %_bop1161 = add i64 %_bop1160, 2
  %_ind1162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1150, i32 0, i32 1, i32 2
  store i64 %_bop1161, i64* %_ind1162
  %_ind1163 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1148, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1150, { i64, [0 x i64] }** %_ind1163
  %_raw_array1164 = call i64* @oat_alloc_array(i64 3)
  %_array1165 = bitcast i64* %_raw_array1164 to { i64, [0 x i64] }*
  %_x1166 = load i64, i64* %_x1146
  %_bop1167 = add i64 %_x1166, 1
  %_bop1168 = add i64 %_bop1167, 0
  %_ind1169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 0
  store i64 %_bop1168, i64* %_ind1169
  %_x1170 = load i64, i64* %_x1146
  %_bop1171 = add i64 %_x1170, 1
  %_bop1172 = add i64 %_bop1171, 1
  %_ind1173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 1
  store i64 %_bop1172, i64* %_ind1173
  %_x1174 = load i64, i64* %_x1146
  %_bop1175 = add i64 %_x1174, 1
  %_bop1176 = add i64 %_bop1175, 2
  %_ind1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1165, i32 0, i32 1, i32 2
  store i64 %_bop1176, i64* %_ind1177
  %_ind1178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1148, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1165, { i64, [0 x i64] }** %_ind1178
  %_raw_array1179 = call i64* @oat_alloc_array(i64 3)
  %_array1180 = bitcast i64* %_raw_array1179 to { i64, [0 x i64] }*
  %_x1181 = load i64, i64* %_x1146
  %_bop1182 = add i64 %_x1181, 2
  %_bop1183 = add i64 %_bop1182, 0
  %_ind1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 0
  store i64 %_bop1183, i64* %_ind1184
  %_x1185 = load i64, i64* %_x1146
  %_bop1186 = add i64 %_x1185, 2
  %_bop1187 = add i64 %_bop1186, 1
  %_ind1188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 1
  store i64 %_bop1187, i64* %_ind1188
  %_x1189 = load i64, i64* %_x1146
  %_bop1190 = add i64 %_x1189, 2
  %_bop1191 = add i64 %_bop1190, 2
  %_ind1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 2
  store i64 %_bop1191, i64* %_ind1192
  %_ind1193 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1148, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1180, { i64, [0 x i64] }** %_ind1193
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1148, { i64, [0 x { i64, [0 x i64] }*] }** %_a1194
  %_a1195 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1194
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1195, { i64, [0 x { i64, [0 x i64] }*] }** %_b1196
  %_b1197 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1196
  %_index_ptr1199 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1197, i32 0, i32 1, i32 2
  %_index1200 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1199
  %_index_ptr1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1200, i32 0, i32 1, i32 1
  %_index1203 = load i64, i64* %_index_ptr1202
  ret i64 %_index1203
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
