; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %_a1366) {
  %_a1367 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1366, { i64, [0 x i64] }** %_a1367
  %_a1368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1367
  %_index_ptr1369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1368, i32 0, i32 1, i32 1
  %_index1370 = load i64, i64* %_index_ptr1369
  ret i64 %_index1370
}

define i64 @g(i64 %_x1346) {
  %_x1347 = alloca i64
  %_arr1350 = alloca { i64, [0 x i64] }*
  %_i1351 = alloca i64
  store i64 %_x1346, i64* %_x1347
  %_raw_array1348 = call i64* @oat_alloc_array(i64 3)
  %_array1349 = bitcast i64* %_raw_array1348 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1349, { i64, [0 x i64] }** %_arr1350
  store i64 0, i64* %_i1351
  br label %_cond1356
_cond1356:
  %_i1352 = load i64, i64* %_i1351
  %_bop1353 = icmp slt i64 %_i1352, 3
  br i1 %_bop1353, label %_body1355, label %_post1354
_body1355:
  %_arr1357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1350
  %_i1358 = load i64, i64* %_i1351
  %_index_ptr1359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1357, i32 0, i32 1, i64 %_i1358
  %_x1360 = load i64, i64* %_x1347
  store i64 %_x1360, i64* %_index_ptr1359
  %_i1361 = load i64, i64* %_i1351
  %_bop1362 = add i64 %_i1361, 1
  store i64 %_bop1362, i64* %_i1351
  br label %_cond1356
_post1354:
  %_arr1363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1350
  %_index_ptr1364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1363, i32 0, i32 1, i32 1
  %_index1365 = load i64, i64* %_index_ptr1364
  ret i64 %_index1365
}

define i64 @program(i64 %_argc1284, { i64, [0 x i8*] }* %_argv1282) {
  %_argc1285 = alloca i64
  %_argv1283 = alloca { i64, [0 x i8*] }*
  %_a1288 = alloca { i64, [0 x i64] }*
  %_i1289 = alloca i64
  %_arr1303 = alloca { i64, [0 x i64] }*
  %_i1304 = alloca i64
  %_arr01320 = alloca { i64, [0 x i64] }*
  %_i1321 = alloca i64
  store i64 %_argc1284, i64* %_argc1285
  store { i64, [0 x i8*] }* %_argv1282, { i64, [0 x i8*] }** %_argv1283
  %_raw_array1286 = call i64* @oat_alloc_array(i64 3)
  %_array1287 = bitcast i64* %_raw_array1286 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1287, { i64, [0 x i64] }** %_a1288
  store i64 0, i64* %_i1289
  br label %_cond1294
_cond1294:
  %_i1290 = load i64, i64* %_i1289
  %_bop1291 = icmp slt i64 %_i1290, 3
  br i1 %_bop1291, label %_body1293, label %_post1292
_body1293:
  %_a1295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1288
  %_i1296 = load i64, i64* %_i1289
  %_index_ptr1297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1295, i32 0, i32 1, i64 %_i1296
  %_i1298 = load i64, i64* %_i1289
  store i64 %_i1298, i64* %_index_ptr1297
  %_i1299 = load i64, i64* %_i1289
  %_bop1300 = add i64 %_i1299, 1
  store i64 %_bop1300, i64* %_i1289
  br label %_cond1294
_post1292:
  %_raw_array1301 = call i64* @oat_alloc_array(i64 4)
  %_array1302 = bitcast i64* %_raw_array1301 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1302, { i64, [0 x i64] }** %_arr1303
  store i64 0, i64* %_i1304
  br label %_cond1309
_cond1309:
  %_i1305 = load i64, i64* %_i1304
  %_bop1306 = icmp slt i64 %_i1305, 4
  br i1 %_bop1306, label %_body1308, label %_post1307
_body1308:
  %_arr1310 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1303
  %_i1311 = load i64, i64* %_i1304
  %_index_ptr1312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1310, i32 0, i32 1, i64 %_i1311
  %_i1313 = load i64, i64* %_i1304
  %_i1314 = load i64, i64* %_i1304
  %_bop1315 = mul i64 %_i1313, %_i1314
  store i64 %_bop1315, i64* %_index_ptr1312
  %_i1316 = load i64, i64* %_i1304
  %_bop1317 = add i64 %_i1316, 1
  store i64 %_bop1317, i64* %_i1304
  br label %_cond1309
_post1307:
  %_raw_array1318 = call i64* @oat_alloc_array(i64 3)
  %_array1319 = bitcast i64* %_raw_array1318 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1319, { i64, [0 x i64] }** %_arr01320
  store i64 0, i64* %_i1321
  br label %_cond1326
_cond1326:
  %_i1322 = load i64, i64* %_i1321
  %_bop1323 = icmp slt i64 %_i1322, 3
  br i1 %_bop1323, label %_body1325, label %_post1324
_body1325:
  %_arr01327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01320
  %_i1328 = load i64, i64* %_i1321
  %_index_ptr1329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01327, i32 0, i32 1, i64 %_i1328
  %_i1330 = load i64, i64* %_i1321
  %_bop1331 = mul i64 2, %_i1330
  store i64 %_bop1331, i64* %_index_ptr1329
  %_i1332 = load i64, i64* %_i1321
  %_bop1333 = add i64 %_i1332, 1
  store i64 %_bop1333, i64* %_i1321
  br label %_cond1326
_post1324:
  %_arr1334 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1303
  %_index_ptr1335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1334, i32 0, i32 1, i32 3
  %_index1336 = load i64, i64* %_index_ptr1335
  %_a1337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1288
  %_index_ptr1338 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1337, i32 0, i32 1, i32 1
  %_index1339 = load i64, i64* %_index_ptr1338
  %_bop1340 = add i64 %_index1336, %_index1339
  %_arr01341 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01320
  %_result1342 = call i64 @f({ i64, [0 x i64] }* %_arr01341)
  %_bop1343 = add i64 %_bop1340, %_result1342
  %_result1344 = call i64 @g(i64 4)
  %_bop1345 = add i64 %_bop1343, %_result1344
  ret i64 %_bop1345
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
