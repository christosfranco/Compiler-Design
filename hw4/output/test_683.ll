; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1194) {
  %_arr1195 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1194, { i64, [0 x i64] }** %_arr1195
  %_arr1196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1195
  ret { i64, [0 x i64] }* %_arr1196
}

define i64 @program(i64 %_argc1169, { i64, [0 x i8*] }* %_argv1167) {
  %_argc1170 = alloca i64
  %_argv1168 = alloca { i64, [0 x i8*] }*
  %_garr1185 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1190 = alloca { i64, [0 x i64] }*
  store i64 %_argc1169, i64* %_argc1170
  store { i64, [0 x i8*] }* %_argv1167, { i64, [0 x i8*] }** %_argv1168
  %_raw_array1171 = call i64* @oat_alloc_array(i64 2)
  %_array1172 = bitcast i64* %_raw_array1171 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1173 = call i64* @oat_alloc_array(i64 3)
  %_array1174 = bitcast i64* %_raw_array1173 to { i64, [0 x i64] }*
  %_ind1175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1175
  %_ind1176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1176
  %_ind1177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1174, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1177
  %_ind1178 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1172, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1174, { i64, [0 x i64] }** %_ind1178
  %_raw_array1179 = call i64* @oat_alloc_array(i64 3)
  %_array1180 = bitcast i64* %_raw_array1179 to { i64, [0 x i64] }*
  %_ind1181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1181
  %_ind1182 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1182
  %_ind1183 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1180, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1183
  %_ind1184 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1172, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1180, { i64, [0 x i64] }** %_ind1184
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1172, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1185
  %_garr1186 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1185
  %_index_ptr1187 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1186, i32 0, i32 1, i32 1
  %_index1188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1187
  %_result1189 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index1188)
  store { i64, [0 x i64] }* %_result1189, { i64, [0 x i64] }** %_arr1190
  %_arr1191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1190
  %_index_ptr1192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1191, i32 0, i32 1, i32 1
  %_index1193 = load i64, i64* %_index_ptr1192
  ret i64 %_index1193
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
