; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %_a1429) {
  %_a1430 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1429, { i64, [0 x i64] }** %_a1430
  %_a1431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1430
  %_index_ptr1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1431, i32 0, i32 1, i32 1
  %_index1434 = load i64, i64* %_index_ptr1433
  ret i64 %_index1434
}

define i64 @g(i64 %_x1407) {
  %_x1408 = alloca i64
  %_arr1411 = alloca { i64, [0 x i64] }*
  %_i1412 = alloca i64
  store i64 %_x1407, i64* %_x1408
  %_raw_array1409 = call i64* @oat_alloc_array(i64 3)
  %_array1410 = bitcast i64* %_raw_array1409 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1410, { i64, [0 x i64] }** %_arr1411
  store i64 0, i64* %_i1412
  br label %_cond1417
_cond1417:
  %_i1413 = load i64, i64* %_i1412
  %_bop1414 = icmp slt i64 %_i1413, 3
  br i1 %_bop1414, label %_body1416, label %_post1415
_body1416:
  %_arr1418 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1411
  %_i1419 = load i64, i64* %_i1412
  %_index_ptr1421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1418, i32 0, i32 1, i64 %_i1419
  %_x1422 = load i64, i64* %_x1408
  store i64 %_x1422, i64* %_index_ptr1421
  %_i1423 = load i64, i64* %_i1412
  %_bop1424 = add i64 %_i1423, 1
  store i64 %_bop1424, i64* %_i1412
  br label %_cond1417
_post1415:
  %_arr1425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1411
  %_index_ptr1427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1425, i32 0, i32 1, i32 1
  %_index1428 = load i64, i64* %_index_ptr1427
  ret i64 %_index1428
}

define i64 @program(i64 %_argc1340, { i64, [0 x i8*] }* %_argv1338) {
  %_argc1341 = alloca i64
  %_argv1339 = alloca { i64, [0 x i8*] }*
  %_a1344 = alloca { i64, [0 x i64] }*
  %_i1345 = alloca i64
  %_arr1360 = alloca { i64, [0 x i64] }*
  %_i1361 = alloca i64
  %_arr01378 = alloca { i64, [0 x i64] }*
  %_i1379 = alloca i64
  store i64 %_argc1340, i64* %_argc1341
  store { i64, [0 x i8*] }* %_argv1338, { i64, [0 x i8*] }** %_argv1339
  %_raw_array1342 = call i64* @oat_alloc_array(i64 3)
  %_array1343 = bitcast i64* %_raw_array1342 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1343, { i64, [0 x i64] }** %_a1344
  store i64 0, i64* %_i1345
  br label %_cond1350
_cond1350:
  %_i1346 = load i64, i64* %_i1345
  %_bop1347 = icmp slt i64 %_i1346, 3
  br i1 %_bop1347, label %_body1349, label %_post1348
_body1349:
  %_a1351 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1344
  %_i1352 = load i64, i64* %_i1345
  %_index_ptr1354 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1351, i32 0, i32 1, i64 %_i1352
  %_i1355 = load i64, i64* %_i1345
  store i64 %_i1355, i64* %_index_ptr1354
  %_i1356 = load i64, i64* %_i1345
  %_bop1357 = add i64 %_i1356, 1
  store i64 %_bop1357, i64* %_i1345
  br label %_cond1350
_post1348:
  %_raw_array1358 = call i64* @oat_alloc_array(i64 4)
  %_array1359 = bitcast i64* %_raw_array1358 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1359, { i64, [0 x i64] }** %_arr1360
  store i64 0, i64* %_i1361
  br label %_cond1366
_cond1366:
  %_i1362 = load i64, i64* %_i1361
  %_bop1363 = icmp slt i64 %_i1362, 4
  br i1 %_bop1363, label %_body1365, label %_post1364
_body1365:
  %_arr1367 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1360
  %_i1368 = load i64, i64* %_i1361
  %_index_ptr1370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1367, i32 0, i32 1, i64 %_i1368
  %_i1371 = load i64, i64* %_i1361
  %_i1372 = load i64, i64* %_i1361
  %_bop1373 = mul i64 %_i1371, %_i1372
  store i64 %_bop1373, i64* %_index_ptr1370
  %_i1374 = load i64, i64* %_i1361
  %_bop1375 = add i64 %_i1374, 1
  store i64 %_bop1375, i64* %_i1361
  br label %_cond1366
_post1364:
  %_raw_array1376 = call i64* @oat_alloc_array(i64 3)
  %_array1377 = bitcast i64* %_raw_array1376 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1377, { i64, [0 x i64] }** %_arr01378
  store i64 0, i64* %_i1379
  br label %_cond1384
_cond1384:
  %_i1380 = load i64, i64* %_i1379
  %_bop1381 = icmp slt i64 %_i1380, 3
  br i1 %_bop1381, label %_body1383, label %_post1382
_body1383:
  %_arr01385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01378
  %_i1386 = load i64, i64* %_i1379
  %_index_ptr1388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01385, i32 0, i32 1, i64 %_i1386
  %_i1389 = load i64, i64* %_i1379
  %_bop1390 = mul i64 2, %_i1389
  store i64 %_bop1390, i64* %_index_ptr1388
  %_i1391 = load i64, i64* %_i1379
  %_bop1392 = add i64 %_i1391, 1
  store i64 %_bop1392, i64* %_i1379
  br label %_cond1384
_post1382:
  %_arr1393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1360
  %_index_ptr1395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1393, i32 0, i32 1, i32 3
  %_index1396 = load i64, i64* %_index_ptr1395
  %_a1397 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1344
  %_index_ptr1399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1397, i32 0, i32 1, i32 1
  %_index1400 = load i64, i64* %_index_ptr1399
  %_bop1401 = add i64 %_index1396, %_index1400
  %_arr01402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01378
  %_result1403 = call i64 @f({ i64, [0 x i64] }* %_arr01402)
  %_bop1404 = add i64 %_bop1401, %_result1403
  %_result1405 = call i64 @g(i64 4)
  %_bop1406 = add i64 %_bop1404, %_result1405
  ret i64 %_bop1406
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
