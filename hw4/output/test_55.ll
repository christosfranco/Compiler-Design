; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1410) {
  %_a1411 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1410, { i64, [0 x { i64, [0 x i64] }*] }** %_a1411
  %_a1412 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1411
  %_index_ptr1414 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1412, i32 0, i32 1, i32 1
  %_index1415 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1414
  %_index_ptr1417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1415, i32 0, i32 1, i32 1
  %_index1418 = load i64, i64* %_index_ptr1417
  ret i64 %_index1418
}

define i64 @g(i64 %_x1371) {
  %_x1372 = alloca i64
  %_arr1402 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_x1371, i64* %_x1372
  %_raw_array1373 = call i64* @oat_alloc_array(i64 3)
  %_array1374 = bitcast i64* %_raw_array1373 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1375 = call i64* @oat_alloc_array(i64 3)
  %_array1376 = bitcast i64* %_raw_array1375 to { i64, [0 x i64] }*
  %_x1377 = load i64, i64* %_x1372
  %_ind1378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1376, i32 0, i32 1, i32 0
  store i64 %_x1377, i64* %_ind1378
  %_x1379 = load i64, i64* %_x1372
  %_ind1380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1376, i32 0, i32 1, i32 1
  store i64 %_x1379, i64* %_ind1380
  %_x1381 = load i64, i64* %_x1372
  %_ind1382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1376, i32 0, i32 1, i32 2
  store i64 %_x1381, i64* %_ind1382
  %_ind1383 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1374, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1376, { i64, [0 x i64] }** %_ind1383
  %_raw_array1384 = call i64* @oat_alloc_array(i64 3)
  %_array1385 = bitcast i64* %_raw_array1384 to { i64, [0 x i64] }*
  %_x1386 = load i64, i64* %_x1372
  %_ind1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 0
  store i64 %_x1386, i64* %_ind1387
  %_x1388 = load i64, i64* %_x1372
  %_ind1389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 1
  store i64 %_x1388, i64* %_ind1389
  %_x1390 = load i64, i64* %_x1372
  %_ind1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1385, i32 0, i32 1, i32 2
  store i64 %_x1390, i64* %_ind1391
  %_ind1392 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1374, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1385, { i64, [0 x i64] }** %_ind1392
  %_raw_array1393 = call i64* @oat_alloc_array(i64 3)
  %_array1394 = bitcast i64* %_raw_array1393 to { i64, [0 x i64] }*
  %_x1395 = load i64, i64* %_x1372
  %_ind1396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 0
  store i64 %_x1395, i64* %_ind1396
  %_x1397 = load i64, i64* %_x1372
  %_ind1398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 1
  store i64 %_x1397, i64* %_ind1398
  %_x1399 = load i64, i64* %_x1372
  %_ind1400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1394, i32 0, i32 1, i32 2
  store i64 %_x1399, i64* %_ind1400
  %_ind1401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1374, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1394, { i64, [0 x i64] }** %_ind1401
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1374, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1402
  %_arr1403 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1402
  %_index_ptr1405 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1403, i32 0, i32 1, i32 1
  %_index1406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1405
  %_index_ptr1408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1406, i32 0, i32 1, i32 1
  %_index1409 = load i64, i64* %_index_ptr1408
  ret i64 %_index1409
}

define i64 @program(i64 %_argc1243, { i64, [0 x i8*] }* %_argv1241) {
  %_argc1244 = alloca i64
  %_argv1242 = alloca { i64, [0 x i8*] }*
  %_a1265 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1320 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01350 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1243, i64* %_argc1244
  store { i64, [0 x i8*] }* %_argv1241, { i64, [0 x i8*] }** %_argv1242
  %_raw_array1245 = call i64* @oat_alloc_array(i64 3)
  %_array1246 = bitcast i64* %_raw_array1245 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1247 = call i64* @oat_alloc_array(i64 3)
  %_array1248 = bitcast i64* %_raw_array1247 to { i64, [0 x i64] }*
  %_ind1249 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1249
  %_ind1250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1250
  %_ind1251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1248, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1251
  %_ind1252 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1248, { i64, [0 x i64] }** %_ind1252
  %_raw_array1253 = call i64* @oat_alloc_array(i64 3)
  %_array1254 = bitcast i64* %_raw_array1253 to { i64, [0 x i64] }*
  %_ind1255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1255
  %_ind1256 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1256
  %_ind1257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1254, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1257
  %_ind1258 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1254, { i64, [0 x i64] }** %_ind1258
  %_raw_array1259 = call i64* @oat_alloc_array(i64 3)
  %_array1260 = bitcast i64* %_raw_array1259 to { i64, [0 x i64] }*
  %_ind1261 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1261
  %_ind1262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1262
  %_ind1263 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1260, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1263
  %_ind1264 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1260, { i64, [0 x i64] }** %_ind1264
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1246, { i64, [0 x { i64, [0 x i64] }*] }** %_a1265
  %_raw_array1266 = call i64* @oat_alloc_array(i64 4)
  %_array1267 = bitcast i64* %_raw_array1266 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1268 = call i64* @oat_alloc_array(i64 5)
  %_array1269 = bitcast i64* %_raw_array1268 to { i64, [0 x i64] }*
  %_bop1270 = mul i64 0, 0
  %_ind1271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 0
  store i64 %_bop1270, i64* %_ind1271
  %_bop1272 = mul i64 0, 1
  %_ind1273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 1
  store i64 %_bop1272, i64* %_ind1273
  %_bop1274 = mul i64 0, 2
  %_ind1275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 2
  store i64 %_bop1274, i64* %_ind1275
  %_bop1276 = mul i64 0, 3
  %_ind1277 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 3
  store i64 %_bop1276, i64* %_ind1277
  %_bop1278 = mul i64 0, 4
  %_ind1279 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1269, i32 0, i32 1, i32 4
  store i64 %_bop1278, i64* %_ind1279
  %_ind1280 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1267, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1269, { i64, [0 x i64] }** %_ind1280
  %_raw_array1281 = call i64* @oat_alloc_array(i64 5)
  %_array1282 = bitcast i64* %_raw_array1281 to { i64, [0 x i64] }*
  %_bop1283 = mul i64 1, 0
  %_ind1284 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 0
  store i64 %_bop1283, i64* %_ind1284
  %_bop1285 = mul i64 1, 1
  %_ind1286 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 1
  store i64 %_bop1285, i64* %_ind1286
  %_bop1287 = mul i64 1, 2
  %_ind1288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 2
  store i64 %_bop1287, i64* %_ind1288
  %_bop1289 = mul i64 1, 3
  %_ind1290 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 3
  store i64 %_bop1289, i64* %_ind1290
  %_bop1291 = mul i64 1, 4
  %_ind1292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1282, i32 0, i32 1, i32 4
  store i64 %_bop1291, i64* %_ind1292
  %_ind1293 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1267, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1282, { i64, [0 x i64] }** %_ind1293
  %_raw_array1294 = call i64* @oat_alloc_array(i64 5)
  %_array1295 = bitcast i64* %_raw_array1294 to { i64, [0 x i64] }*
  %_bop1296 = mul i64 2, 0
  %_ind1297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 0
  store i64 %_bop1296, i64* %_ind1297
  %_bop1298 = mul i64 2, 1
  %_ind1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 1
  store i64 %_bop1298, i64* %_ind1299
  %_bop1300 = mul i64 2, 2
  %_ind1301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 2
  store i64 %_bop1300, i64* %_ind1301
  %_bop1302 = mul i64 2, 3
  %_ind1303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 3
  store i64 %_bop1302, i64* %_ind1303
  %_bop1304 = mul i64 2, 4
  %_ind1305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1295, i32 0, i32 1, i32 4
  store i64 %_bop1304, i64* %_ind1305
  %_ind1306 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1267, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1295, { i64, [0 x i64] }** %_ind1306
  %_raw_array1307 = call i64* @oat_alloc_array(i64 5)
  %_array1308 = bitcast i64* %_raw_array1307 to { i64, [0 x i64] }*
  %_bop1309 = mul i64 3, 0
  %_ind1310 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 0
  store i64 %_bop1309, i64* %_ind1310
  %_bop1311 = mul i64 3, 1
  %_ind1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 1
  store i64 %_bop1311, i64* %_ind1312
  %_bop1313 = mul i64 3, 2
  %_ind1314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 2
  store i64 %_bop1313, i64* %_ind1314
  %_bop1315 = mul i64 3, 3
  %_ind1316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 3
  store i64 %_bop1315, i64* %_ind1316
  %_bop1317 = mul i64 3, 4
  %_ind1318 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1308, i32 0, i32 1, i32 4
  store i64 %_bop1317, i64* %_ind1318
  %_ind1319 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1267, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1308, { i64, [0 x i64] }** %_ind1319
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1267, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1320
  %_raw_array1321 = call i64* @oat_alloc_array(i64 3)
  %_array1322 = bitcast i64* %_raw_array1321 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1323 = call i64* @oat_alloc_array(i64 3)
  %_array1324 = bitcast i64* %_raw_array1323 to { i64, [0 x i64] }*
  %_bop1325 = mul i64 0, 0
  %_ind1326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 0
  store i64 %_bop1325, i64* %_ind1326
  %_bop1327 = mul i64 0, 1
  %_ind1328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 1
  store i64 %_bop1327, i64* %_ind1328
  %_bop1329 = mul i64 0, 2
  %_ind1330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1324, i32 0, i32 1, i32 2
  store i64 %_bop1329, i64* %_ind1330
  %_ind1331 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1322, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1324, { i64, [0 x i64] }** %_ind1331
  %_raw_array1332 = call i64* @oat_alloc_array(i64 3)
  %_array1333 = bitcast i64* %_raw_array1332 to { i64, [0 x i64] }*
  %_bop1334 = mul i64 1, 0
  %_ind1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 0
  store i64 %_bop1334, i64* %_ind1335
  %_bop1336 = mul i64 1, 1
  %_ind1337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 1
  store i64 %_bop1336, i64* %_ind1337
  %_bop1338 = mul i64 1, 2
  %_ind1339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1333, i32 0, i32 1, i32 2
  store i64 %_bop1338, i64* %_ind1339
  %_ind1340 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1322, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1333, { i64, [0 x i64] }** %_ind1340
  %_raw_array1341 = call i64* @oat_alloc_array(i64 3)
  %_array1342 = bitcast i64* %_raw_array1341 to { i64, [0 x i64] }*
  %_bop1343 = mul i64 2, 0
  %_ind1344 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1342, i32 0, i32 1, i32 0
  store i64 %_bop1343, i64* %_ind1344
  %_bop1345 = mul i64 2, 1
  %_ind1346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1342, i32 0, i32 1, i32 1
  store i64 %_bop1345, i64* %_ind1346
  %_bop1347 = mul i64 2, 2
  %_ind1348 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1342, i32 0, i32 1, i32 2
  store i64 %_bop1347, i64* %_ind1348
  %_ind1349 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1322, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1342, { i64, [0 x i64] }** %_ind1349
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1322, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01350
  %_arr1351 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1320
  %_index_ptr1353 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1351, i32 0, i32 1, i32 3
  %_index1354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1353
  %_index_ptr1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1354, i32 0, i32 1, i32 4
  %_index1357 = load i64, i64* %_index_ptr1356
  %_a1358 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1265
  %_index_ptr1360 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1358, i32 0, i32 1, i32 1
  %_index1361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1360
  %_index_ptr1363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1361, i32 0, i32 1, i32 2
  %_index1364 = load i64, i64* %_index_ptr1363
  %_bop1365 = add i64 %_index1357, %_index1364
  %_arr01366 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01350
  %_result1367 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01366)
  %_bop1368 = add i64 %_bop1365, %_result1367
  %_result1369 = call i64 @g(i64 4)
  %_bop1370 = add i64 %_bop1368, %_result1369
  ret i64 %_bop1370
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
