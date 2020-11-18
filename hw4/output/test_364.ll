; generated from: oatprograms/run14.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x i64] }* %_a1431) {
  %_a1432 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a1431, { i64, [0 x i64] }** %_a1432
  %_a1433 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1432
  %_index_ptr1435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1433, i32 0, i32 1, i32 1
  %_index1436 = load i64, i64* %_index_ptr1435
  ret i64 %_index1436
}

define i64 @g(i64 %_x1409) {
  %_x1410 = alloca i64
  %_arr1413 = alloca { i64, [0 x i64] }*
  %_i1414 = alloca i64
  store i64 %_x1409, i64* %_x1410
  %_raw_array1411 = call i64* @oat_alloc_array(i64 3)
  %_array1412 = bitcast i64* %_raw_array1411 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1412, { i64, [0 x i64] }** %_arr1413
  store i64 0, i64* %_i1414
  br label %_cond1419
_cond1419:
  %_i1415 = load i64, i64* %_i1414
  %_bop1416 = icmp slt i64 %_i1415, 3
  br i1 %_bop1416, label %_body1418, label %_post1417
_body1418:
  %_arr1420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1413
  %_i1421 = load i64, i64* %_i1414
  %_index_ptr1423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1420, i32 0, i32 1, i64 %_i1421
  %_x1424 = load i64, i64* %_x1410
  store i64 %_x1424, i64* %_index_ptr1423
  %_i1425 = load i64, i64* %_i1414
  %_bop1426 = add i64 %_i1425, 1
  store i64 %_bop1426, i64* %_i1414
  br label %_cond1419
_post1417:
  %_arr1427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1413
  %_index_ptr1429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1427, i32 0, i32 1, i32 1
  %_index1430 = load i64, i64* %_index_ptr1429
  ret i64 %_index1430
}

define i64 @program(i64 %_argc1342, { i64, [0 x i8*] }* %_argv1340) {
  %_argc1343 = alloca i64
  %_argv1341 = alloca { i64, [0 x i8*] }*
  %_a1346 = alloca { i64, [0 x i64] }*
  %_i1347 = alloca i64
  %_arr1362 = alloca { i64, [0 x i64] }*
  %_i1363 = alloca i64
  %_arr01380 = alloca { i64, [0 x i64] }*
  %_i1381 = alloca i64
  store i64 %_argc1342, i64* %_argc1343
  store { i64, [0 x i8*] }* %_argv1340, { i64, [0 x i8*] }** %_argv1341
  %_raw_array1344 = call i64* @oat_alloc_array(i64 3)
  %_array1345 = bitcast i64* %_raw_array1344 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1345, { i64, [0 x i64] }** %_a1346
  store i64 0, i64* %_i1347
  br label %_cond1352
_cond1352:
  %_i1348 = load i64, i64* %_i1347
  %_bop1349 = icmp slt i64 %_i1348, 3
  br i1 %_bop1349, label %_body1351, label %_post1350
_body1351:
  %_a1353 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1346
  %_i1354 = load i64, i64* %_i1347
  %_index_ptr1356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1353, i32 0, i32 1, i64 %_i1354
  %_i1357 = load i64, i64* %_i1347
  store i64 %_i1357, i64* %_index_ptr1356
  %_i1358 = load i64, i64* %_i1347
  %_bop1359 = add i64 %_i1358, 1
  store i64 %_bop1359, i64* %_i1347
  br label %_cond1352
_post1350:
  %_raw_array1360 = call i64* @oat_alloc_array(i64 4)
  %_array1361 = bitcast i64* %_raw_array1360 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1361, { i64, [0 x i64] }** %_arr1362
  store i64 0, i64* %_i1363
  br label %_cond1368
_cond1368:
  %_i1364 = load i64, i64* %_i1363
  %_bop1365 = icmp slt i64 %_i1364, 4
  br i1 %_bop1365, label %_body1367, label %_post1366
_body1367:
  %_arr1369 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1362
  %_i1370 = load i64, i64* %_i1363
  %_index_ptr1372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1369, i32 0, i32 1, i64 %_i1370
  %_i1373 = load i64, i64* %_i1363
  %_i1374 = load i64, i64* %_i1363
  %_bop1375 = mul i64 %_i1373, %_i1374
  store i64 %_bop1375, i64* %_index_ptr1372
  %_i1376 = load i64, i64* %_i1363
  %_bop1377 = add i64 %_i1376, 1
  store i64 %_bop1377, i64* %_i1363
  br label %_cond1368
_post1366:
  %_raw_array1378 = call i64* @oat_alloc_array(i64 3)
  %_array1379 = bitcast i64* %_raw_array1378 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1379, { i64, [0 x i64] }** %_arr01380
  store i64 0, i64* %_i1381
  br label %_cond1386
_cond1386:
  %_i1382 = load i64, i64* %_i1381
  %_bop1383 = icmp slt i64 %_i1382, 3
  br i1 %_bop1383, label %_body1385, label %_post1384
_body1385:
  %_arr01387 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01380
  %_i1388 = load i64, i64* %_i1381
  %_index_ptr1390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr01387, i32 0, i32 1, i64 %_i1388
  %_i1391 = load i64, i64* %_i1381
  %_bop1392 = mul i64 2, %_i1391
  store i64 %_bop1392, i64* %_index_ptr1390
  %_i1393 = load i64, i64* %_i1381
  %_bop1394 = add i64 %_i1393, 1
  store i64 %_bop1394, i64* %_i1381
  br label %_cond1386
_post1384:
  %_arr1395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1362
  %_index_ptr1397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1395, i32 0, i32 1, i32 3
  %_index1398 = load i64, i64* %_index_ptr1397
  %_a1399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1346
  %_index_ptr1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1399, i32 0, i32 1, i32 1
  %_index1402 = load i64, i64* %_index_ptr1401
  %_bop1403 = add i64 %_index1398, %_index1402
  %_arr01404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr01380
  %_result1405 = call i64 @f({ i64, [0 x i64] }* %_arr01404)
  %_bop1406 = add i64 %_bop1403, %_result1405
  %_result1407 = call i64 @g(i64 4)
  %_bop1408 = add i64 %_bop1406, %_result1407
  ret i64 %_bop1408
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
