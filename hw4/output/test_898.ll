; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1
@_constant1281 = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1276) {
  %_arr1277 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1276, { i64, [0 x i64] }** %_arr1277
  %_arr1278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1277
  %_index_ptr1279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1278, i32 0, i32 1, i32 3
  %_index1280 = load i64, i64* %_index_ptr1279
  ret i64 %_index1280
}

define { i64, [0 x i64] }* @g() {
  %_arr1274 = alloca { i64, [0 x i64] }*
  %_raw_array1268 = call i64* @oat_alloc_array(i64 4)
  %_array1269 = bitcast i64* %_raw_array1268 to { i64, [0 x i64] }*
  %_ind1270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1270
  %_ind1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1271
  %_ind1272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1272
  %_ind1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1273
  store { i64, [0 x i64] }* %_array1269, { i64, [0 x i64] }** %_arr1274
  %_arr1275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1274
  ret { i64, [0 x i64] }* %_arr1275
}

define i64 @program(i64 %_argc1199, { i64, [0 x i8*] }* %_argv1197) {
  %_argc1200 = alloca i64
  %_argv1198 = alloca { i64, [0 x i8*] }*
  %_arr11206 = alloca { i64, [0 x i64] }*
  %_arr21227 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1228 = alloca i64
  %_arr41230 = alloca { i64, [0 x i64] }*
  %_arr31237 = alloca { i64, [0 x i64] }*
  store i64 %_argc1199, i64* %_argc1200
  store { i64, [0 x i8*] }* %_argv1197, { i64, [0 x i8*] }** %_argv1198
  %_raw_array1201 = call i64* @oat_alloc_array(i64 3)
  %_array1202 = bitcast i64* %_raw_array1201 to { i64, [0 x i64] }*
  %_ind1203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1203
  %_ind1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1204
  %_ind1205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1202, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1205
  store { i64, [0 x i64] }* %_array1202, { i64, [0 x i64] }** %_arr11206
  %_raw_array1207 = call i64* @oat_alloc_array(i64 3)
  %_array1208 = bitcast i64* %_raw_array1207 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1209 = call i64* @oat_alloc_array(i64 3)
  %_array1210 = bitcast i64* %_raw_array1209 to { i64, [0 x i64] }*
  %_ind1211 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1210, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1211
  %_ind1212 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1210, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1212
  %_ind1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1210, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1213
  %_ind1214 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1208, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1210, { i64, [0 x i64] }** %_ind1214
  %_raw_array1215 = call i64* @oat_alloc_array(i64 3)
  %_array1216 = bitcast i64* %_raw_array1215 to { i64, [0 x i64] }*
  %_ind1217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1216, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1217
  %_ind1218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1216, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1218
  %_ind1219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1216, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1219
  %_ind1220 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1208, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1216, { i64, [0 x i64] }** %_ind1220
  %_raw_array1221 = call i64* @oat_alloc_array(i64 3)
  %_array1222 = bitcast i64* %_raw_array1221 to { i64, [0 x i64] }*
  %_ind1223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1223
  %_ind1224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1224
  %_ind1225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1225
  %_ind1226 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1208, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1222, { i64, [0 x i64] }** %_ind1226
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1208, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21227
  store i64 1, i64* %_c1228
  %_result1229 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_result1229, { i64, [0 x i64] }** %_arr41230
  %_raw_array1231 = call i64* @oat_alloc_array(i64 4)
  %_array1232 = bitcast i64* %_raw_array1231 to { i64, [0 x i64] }*
  %_ind1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1233
  %_ind1234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1234
  %_ind1235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1235
  %_ind1236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1236
  store { i64, [0 x i64] }* %_array1232, { i64, [0 x i64] }** %_arr31237
  %_c1238 = load i64, i64* %_c1228
  %_i1239 = load i64, i64* @i
  %_bop1240 = add i64 %_c1238, %_i1239
  store i64 %_bop1240, i64* %_c1228
  %_c1241 = load i64, i64* %_c1228
  %_arr11242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11206
  %_index_ptr1243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11242, i32 0, i32 1, i32 1
  %_index1244 = load i64, i64* %_index_ptr1243
  %_bop1245 = add i64 %_c1241, %_index1244
  store i64 %_bop1245, i64* %_c1228
  %_c1246 = load i64, i64* %_c1228
  %_arr21247 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21227
  %_index_ptr1248 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21247, i32 0, i32 1, i32 1
  %_index1249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1248
  %_index_ptr1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1249, i32 0, i32 1, i32 1
  %_index1251 = load i64, i64* %_index_ptr1250
  %_bop1252 = add i64 %_c1246, %_index1251
  store i64 %_bop1252, i64* %_c1228
  %_c1253 = load i64, i64* %_c1228
  %_arr31254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31237
  %_index_ptr1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31254, i32 0, i32 1, i32 3
  %_index1256 = load i64, i64* %_index_ptr1255
  %_bop1257 = add i64 %_c1253, %_index1256
  store i64 %_bop1257, i64* %_c1228
  %_c1258 = load i64, i64* %_c1228
  %_arr31259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31237
  %_result1260 = call i64 @f({ i64, [0 x i64] }* %_arr31259)
  %_bop1261 = add i64 %_c1258, %_result1260
  store i64 %_bop1261, i64* %_c1228
  %_c1262 = load i64, i64* %_c1228
  %_arr41263 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41230
  %_index_ptr1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41263, i32 0, i32 1, i32 1
  %_index1265 = load i64, i64* %_index_ptr1264
  %_bop1266 = add i64 %_c1262, %_index1265
  store i64 %_bop1266, i64* %_c1228
  %_c1267 = load i64, i64* %_c1228
  ret i64 %_c1267
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
