; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1
@_constant1337 = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1331) {
  %_arr1332 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1331, { i64, [0 x i64] }** %_arr1332
  %_arr1333 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1332
  %_index_ptr1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1333, i32 0, i32 1, i32 3
  %_index1336 = load i64, i64* %_index_ptr1335
  ret i64 %_index1336
}

define { i64, [0 x i64] }* @g() {
  %_arr1329 = alloca { i64, [0 x i64] }*
  %_raw_array1323 = call i64* @oat_alloc_array(i64 4)
  %_array1324 = bitcast i64* %_raw_array1323 to { i64, [0 x i64] }*
  %_ind1325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1325
  %_ind1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1326
  %_ind1327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1327
  %_ind1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1328
  store { i64, [0 x i64] }* %_array1324, { i64, [0 x i64] }** %_arr1329
  %_arr1330 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1329
  ret { i64, [0 x i64] }* %_arr1330
}

define i64 @program(i64 %_argc1249, { i64, [0 x i8*] }* %_argv1247) {
  %_argc1250 = alloca i64
  %_argv1248 = alloca { i64, [0 x i8*] }*
  %_arr11256 = alloca { i64, [0 x i64] }*
  %_arr21277 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1278 = alloca i64
  %_arr41280 = alloca { i64, [0 x i64] }*
  %_arr31287 = alloca { i64, [0 x i64] }*
  store i64 %_argc1249, i64* %_argc1250
  store { i64, [0 x i8*] }* %_argv1247, { i64, [0 x i8*] }** %_argv1248
  %_raw_array1251 = call i64* @oat_alloc_array(i64 3)
  %_array1252 = bitcast i64* %_raw_array1251 to { i64, [0 x i64] }*
  %_ind1253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1253
  %_ind1254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1254
  %_ind1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1252, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1255
  store { i64, [0 x i64] }* %_array1252, { i64, [0 x i64] }** %_arr11256
  %_raw_array1257 = call i64* @oat_alloc_array(i64 3)
  %_array1258 = bitcast i64* %_raw_array1257 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1259 = call i64* @oat_alloc_array(i64 3)
  %_array1260 = bitcast i64* %_raw_array1259 to { i64, [0 x i64] }*
  %_ind1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1261
  %_ind1262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1262
  %_ind1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1263
  %_ind1264 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1260, { i64, [0 x i64] }** %_ind1264
  %_raw_array1265 = call i64* @oat_alloc_array(i64 3)
  %_array1266 = bitcast i64* %_raw_array1265 to { i64, [0 x i64] }*
  %_ind1267 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1267
  %_ind1268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1268
  %_ind1269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1266, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1269
  %_ind1270 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1266, { i64, [0 x i64] }** %_ind1270
  %_raw_array1271 = call i64* @oat_alloc_array(i64 3)
  %_array1272 = bitcast i64* %_raw_array1271 to { i64, [0 x i64] }*
  %_ind1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1272, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1273
  %_ind1274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1272, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1274
  %_ind1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1272, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1275
  %_ind1276 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1272, { i64, [0 x i64] }** %_ind1276
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1258, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21277
  store i64 1, i64* %_c1278
  %_result1279 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_result1279, { i64, [0 x i64] }** %_arr41280
  %_raw_array1281 = call i64* @oat_alloc_array(i64 4)
  %_array1282 = bitcast i64* %_raw_array1281 to { i64, [0 x i64] }*
  %_ind1283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1283
  %_ind1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1284
  %_ind1285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1285
  %_ind1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1286
  store { i64, [0 x i64] }* %_array1282, { i64, [0 x i64] }** %_arr31287
  %_c1288 = load i64, i64* %_c1278
  %_i1289 = load i64, i64* @i
  %_bop1290 = add i64 %_c1288, %_i1289
  store i64 %_bop1290, i64* %_c1278
  %_c1291 = load i64, i64* %_c1278
  %_arr11292 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11256
  %_index_ptr1294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11292, i32 0, i32 1, i32 1
  %_index1295 = load i64, i64* %_index_ptr1294
  %_bop1296 = add i64 %_c1291, %_index1295
  store i64 %_bop1296, i64* %_c1278
  %_c1297 = load i64, i64* %_c1278
  %_arr21298 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21277
  %_index_ptr1300 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21298, i32 0, i32 1, i32 1
  %_index1301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1300
  %_index_ptr1303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1301, i32 0, i32 1, i32 1
  %_index1304 = load i64, i64* %_index_ptr1303
  %_bop1305 = add i64 %_c1297, %_index1304
  store i64 %_bop1305, i64* %_c1278
  %_c1306 = load i64, i64* %_c1278
  %_arr31307 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31287
  %_index_ptr1309 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31307, i32 0, i32 1, i32 3
  %_index1310 = load i64, i64* %_index_ptr1309
  %_bop1311 = add i64 %_c1306, %_index1310
  store i64 %_bop1311, i64* %_c1278
  %_c1312 = load i64, i64* %_c1278
  %_arr31313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31287
  %_result1314 = call i64 @f({ i64, [0 x i64] }* %_arr31313)
  %_bop1315 = add i64 %_c1312, %_result1314
  store i64 %_bop1315, i64* %_c1278
  %_c1316 = load i64, i64* %_c1278
  %_arr41317 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41280
  %_index_ptr1319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41317, i32 0, i32 1, i32 1
  %_index1320 = load i64, i64* %_index_ptr1319
  %_bop1321 = add i64 %_c1316, %_index1320
  store i64 %_bop1321, i64* %_c1278
  %_c1322 = load i64, i64* %_c1278
  ret i64 %_c1322
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
