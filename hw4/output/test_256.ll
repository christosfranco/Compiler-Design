; generated from: oatprograms/run11.oat
target triple = "x86_64-unknown-linux"
@i = global i64 1
@_constant1339 = global i64 1

define i64 @f({ i64, [0 x i64] }* %_arr1333) {
  %_arr1334 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1333, { i64, [0 x i64] }** %_arr1334
  %_arr1335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1334
  %_index_ptr1337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1335, i32 0, i32 1, i32 3
  %_index1338 = load i64, i64* %_index_ptr1337
  ret i64 %_index1338
}

define { i64, [0 x i64] }* @g() {
  %_arr1331 = alloca { i64, [0 x i64] }*
  %_raw_array1325 = call i64* @oat_alloc_array(i64 4)
  %_array1326 = bitcast i64* %_raw_array1325 to { i64, [0 x i64] }*
  %_ind1327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1326, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1327
  %_ind1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1326, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1328
  %_ind1329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1326, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1329
  %_ind1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1326, i32 0, i32 1, i32 3
  store i64 99, i64* %_ind1330
  store { i64, [0 x i64] }* %_array1326, { i64, [0 x i64] }** %_arr1331
  %_arr1332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1331
  ret { i64, [0 x i64] }* %_arr1332
}

define i64 @program(i64 %_argc1251, { i64, [0 x i8*] }* %_argv1249) {
  %_argc1252 = alloca i64
  %_argv1250 = alloca { i64, [0 x i8*] }*
  %_arr11258 = alloca { i64, [0 x i64] }*
  %_arr21279 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c1280 = alloca i64
  %_arr41282 = alloca { i64, [0 x i64] }*
  %_arr31289 = alloca { i64, [0 x i64] }*
  store i64 %_argc1251, i64* %_argc1252
  store { i64, [0 x i8*] }* %_argv1249, { i64, [0 x i8*] }** %_argv1250
  %_raw_array1253 = call i64* @oat_alloc_array(i64 3)
  %_array1254 = bitcast i64* %_raw_array1253 to { i64, [0 x i64] }*
  %_ind1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1255
  %_ind1256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1256
  %_ind1257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1257
  store { i64, [0 x i64] }* %_array1254, { i64, [0 x i64] }** %_arr11258
  %_raw_array1259 = call i64* @oat_alloc_array(i64 3)
  %_array1260 = bitcast i64* %_raw_array1259 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1261 = call i64* @oat_alloc_array(i64 3)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x i64] }*
  %_ind1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1263
  %_ind1264 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1264
  %_ind1265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1262, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1265
  %_ind1266 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1260, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1262, { i64, [0 x i64] }** %_ind1266
  %_raw_array1267 = call i64* @oat_alloc_array(i64 3)
  %_array1268 = bitcast i64* %_raw_array1267 to { i64, [0 x i64] }*
  %_ind1269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1268, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1269
  %_ind1270 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1268, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1270
  %_ind1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1268, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1271
  %_ind1272 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1260, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1268, { i64, [0 x i64] }** %_ind1272
  %_raw_array1273 = call i64* @oat_alloc_array(i64 3)
  %_array1274 = bitcast i64* %_raw_array1273 to { i64, [0 x i64] }*
  %_ind1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1274, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1275
  %_ind1276 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1274, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1276
  %_ind1277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1274, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1277
  %_ind1278 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1260, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1274, { i64, [0 x i64] }** %_ind1278
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1260, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21279
  store i64 1, i64* %_c1280
  %_result1281 = call { i64, [0 x i64] }* @g()
  store { i64, [0 x i64] }* %_result1281, { i64, [0 x i64] }** %_arr41282
  %_raw_array1283 = call i64* @oat_alloc_array(i64 4)
  %_array1284 = bitcast i64* %_raw_array1283 to { i64, [0 x i64] }*
  %_ind1285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind1285
  %_ind1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 1
  store i64 99, i64* %_ind1286
  %_ind1287 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 2
  store i64 99, i64* %_ind1287
  %_ind1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1284, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind1288
  store { i64, [0 x i64] }* %_array1284, { i64, [0 x i64] }** %_arr31289
  %_c1290 = load i64, i64* %_c1280
  %_i1291 = load i64, i64* @i
  %_bop1292 = add i64 %_c1290, %_i1291
  store i64 %_bop1292, i64* %_c1280
  %_c1293 = load i64, i64* %_c1280
  %_arr11294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr11258
  %_index_ptr1296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr11294, i32 0, i32 1, i32 1
  %_index1297 = load i64, i64* %_index_ptr1296
  %_bop1298 = add i64 %_c1293, %_index1297
  store i64 %_bop1298, i64* %_c1280
  %_c1299 = load i64, i64* %_c1280
  %_arr21300 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr21279
  %_index_ptr1302 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr21300, i32 0, i32 1, i32 1
  %_index1303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1302
  %_index_ptr1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1303, i32 0, i32 1, i32 1
  %_index1306 = load i64, i64* %_index_ptr1305
  %_bop1307 = add i64 %_c1299, %_index1306
  store i64 %_bop1307, i64* %_c1280
  %_c1308 = load i64, i64* %_c1280
  %_arr31309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31289
  %_index_ptr1311 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr31309, i32 0, i32 1, i32 3
  %_index1312 = load i64, i64* %_index_ptr1311
  %_bop1313 = add i64 %_c1308, %_index1312
  store i64 %_bop1313, i64* %_c1280
  %_c1314 = load i64, i64* %_c1280
  %_arr31315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr31289
  %_result1316 = call i64 @f({ i64, [0 x i64] }* %_arr31315)
  %_bop1317 = add i64 %_c1314, %_result1316
  store i64 %_bop1317, i64* %_c1280
  %_c1318 = load i64, i64* %_c1280
  %_arr41319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr41282
  %_index_ptr1321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr41319, i32 0, i32 1, i32 1
  %_index1322 = load i64, i64* %_index_ptr1321
  %_bop1323 = add i64 %_c1318, %_index1322
  store i64 %_bop1323, i64* %_c1280
  %_c1324 = load i64, i64* %_c1280
  ret i64 %_c1324
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
