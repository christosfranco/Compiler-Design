; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1534) {
  %_a1535 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1534, { i64, [0 x { i64, [0 x i64] }*] }** %_a1535
  %_a1536 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1535
  %_index_ptr1537 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1536, i32 0, i32 1, i32 1
  %_index1538 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1537
  %_index_ptr1539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1538, i32 0, i32 1, i32 1
  %_index1540 = load i64, i64* %_index_ptr1539
  ret i64 %_index1540
}

define i64 @g(i64 %_x1497) {
  %_x1498 = alloca i64
  %_arr1528 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_x1497, i64* %_x1498
  %_raw_array1499 = call i64* @oat_alloc_array(i64 3)
  %_array1500 = bitcast i64* %_raw_array1499 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1501 = call i64* @oat_alloc_array(i64 3)
  %_array1502 = bitcast i64* %_raw_array1501 to { i64, [0 x i64] }*
  %_x1503 = load i64, i64* %_x1498
  %_ind1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 0
  store i64 %_x1503, i64* %_ind1504
  %_x1505 = load i64, i64* %_x1498
  %_ind1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 1
  store i64 %_x1505, i64* %_ind1506
  %_x1507 = load i64, i64* %_x1498
  %_ind1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 2
  store i64 %_x1507, i64* %_ind1508
  %_ind1509 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1500, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1502, { i64, [0 x i64] }** %_ind1509
  %_raw_array1510 = call i64* @oat_alloc_array(i64 3)
  %_array1511 = bitcast i64* %_raw_array1510 to { i64, [0 x i64] }*
  %_x1512 = load i64, i64* %_x1498
  %_ind1513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1511, i32 0, i32 1, i32 0
  store i64 %_x1512, i64* %_ind1513
  %_x1514 = load i64, i64* %_x1498
  %_ind1515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1511, i32 0, i32 1, i32 1
  store i64 %_x1514, i64* %_ind1515
  %_x1516 = load i64, i64* %_x1498
  %_ind1517 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1511, i32 0, i32 1, i32 2
  store i64 %_x1516, i64* %_ind1517
  %_ind1518 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1500, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1511, { i64, [0 x i64] }** %_ind1518
  %_raw_array1519 = call i64* @oat_alloc_array(i64 3)
  %_array1520 = bitcast i64* %_raw_array1519 to { i64, [0 x i64] }*
  %_x1521 = load i64, i64* %_x1498
  %_ind1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 0
  store i64 %_x1521, i64* %_ind1522
  %_x1523 = load i64, i64* %_x1498
  %_ind1524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 1
  store i64 %_x1523, i64* %_ind1524
  %_x1525 = load i64, i64* %_x1498
  %_ind1526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 2
  store i64 %_x1525, i64* %_ind1526
  %_ind1527 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1500, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1520, { i64, [0 x i64] }** %_ind1527
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1500, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1528
  %_arr1529 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1528
  %_index_ptr1530 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1529, i32 0, i32 1, i32 1
  %_index1531 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1530
  %_index_ptr1532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1531, i32 0, i32 1, i32 1
  %_index1533 = load i64, i64* %_index_ptr1532
  ret i64 %_index1533
}

define i64 @program(i64 %_argc1373, { i64, [0 x i8*] }* %_argv1371) {
  %_argc1374 = alloca i64
  %_argv1372 = alloca { i64, [0 x i8*] }*
  %_a1395 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1450 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01480 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1373, i64* %_argc1374
  store { i64, [0 x i8*] }* %_argv1371, { i64, [0 x i8*] }** %_argv1372
  %_raw_array1375 = call i64* @oat_alloc_array(i64 3)
  %_array1376 = bitcast i64* %_raw_array1375 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1377 = call i64* @oat_alloc_array(i64 3)
  %_array1378 = bitcast i64* %_raw_array1377 to { i64, [0 x i64] }*
  %_ind1379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1379
  %_ind1380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1380
  %_ind1381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1378, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1381
  %_ind1382 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1378, { i64, [0 x i64] }** %_ind1382
  %_raw_array1383 = call i64* @oat_alloc_array(i64 3)
  %_array1384 = bitcast i64* %_raw_array1383 to { i64, [0 x i64] }*
  %_ind1385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1385
  %_ind1386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1386
  %_ind1387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1384, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1387
  %_ind1388 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1384, { i64, [0 x i64] }** %_ind1388
  %_raw_array1389 = call i64* @oat_alloc_array(i64 3)
  %_array1390 = bitcast i64* %_raw_array1389 to { i64, [0 x i64] }*
  %_ind1391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1391
  %_ind1392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1392
  %_ind1393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1390, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1393
  %_ind1394 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1390, { i64, [0 x i64] }** %_ind1394
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1376, { i64, [0 x { i64, [0 x i64] }*] }** %_a1395
  %_raw_array1396 = call i64* @oat_alloc_array(i64 4)
  %_array1397 = bitcast i64* %_raw_array1396 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1398 = call i64* @oat_alloc_array(i64 5)
  %_array1399 = bitcast i64* %_raw_array1398 to { i64, [0 x i64] }*
  %_bop1400 = mul i64 0, 0
  %_ind1401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1399, i32 0, i32 1, i32 0
  store i64 %_bop1400, i64* %_ind1401
  %_bop1402 = mul i64 0, 1
  %_ind1403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1399, i32 0, i32 1, i32 1
  store i64 %_bop1402, i64* %_ind1403
  %_bop1404 = mul i64 0, 2
  %_ind1405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1399, i32 0, i32 1, i32 2
  store i64 %_bop1404, i64* %_ind1405
  %_bop1406 = mul i64 0, 3
  %_ind1407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1399, i32 0, i32 1, i32 3
  store i64 %_bop1406, i64* %_ind1407
  %_bop1408 = mul i64 0, 4
  %_ind1409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1399, i32 0, i32 1, i32 4
  store i64 %_bop1408, i64* %_ind1409
  %_ind1410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1397, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1399, { i64, [0 x i64] }** %_ind1410
  %_raw_array1411 = call i64* @oat_alloc_array(i64 5)
  %_array1412 = bitcast i64* %_raw_array1411 to { i64, [0 x i64] }*
  %_bop1413 = mul i64 1, 0
  %_ind1414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 0
  store i64 %_bop1413, i64* %_ind1414
  %_bop1415 = mul i64 1, 1
  %_ind1416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 1
  store i64 %_bop1415, i64* %_ind1416
  %_bop1417 = mul i64 1, 2
  %_ind1418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 2
  store i64 %_bop1417, i64* %_ind1418
  %_bop1419 = mul i64 1, 3
  %_ind1420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 3
  store i64 %_bop1419, i64* %_ind1420
  %_bop1421 = mul i64 1, 4
  %_ind1422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1412, i32 0, i32 1, i32 4
  store i64 %_bop1421, i64* %_ind1422
  %_ind1423 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1397, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1412, { i64, [0 x i64] }** %_ind1423
  %_raw_array1424 = call i64* @oat_alloc_array(i64 5)
  %_array1425 = bitcast i64* %_raw_array1424 to { i64, [0 x i64] }*
  %_bop1426 = mul i64 2, 0
  %_ind1427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1425, i32 0, i32 1, i32 0
  store i64 %_bop1426, i64* %_ind1427
  %_bop1428 = mul i64 2, 1
  %_ind1429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1425, i32 0, i32 1, i32 1
  store i64 %_bop1428, i64* %_ind1429
  %_bop1430 = mul i64 2, 2
  %_ind1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1425, i32 0, i32 1, i32 2
  store i64 %_bop1430, i64* %_ind1431
  %_bop1432 = mul i64 2, 3
  %_ind1433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1425, i32 0, i32 1, i32 3
  store i64 %_bop1432, i64* %_ind1433
  %_bop1434 = mul i64 2, 4
  %_ind1435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1425, i32 0, i32 1, i32 4
  store i64 %_bop1434, i64* %_ind1435
  %_ind1436 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1397, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1425, { i64, [0 x i64] }** %_ind1436
  %_raw_array1437 = call i64* @oat_alloc_array(i64 5)
  %_array1438 = bitcast i64* %_raw_array1437 to { i64, [0 x i64] }*
  %_bop1439 = mul i64 3, 0
  %_ind1440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 0
  store i64 %_bop1439, i64* %_ind1440
  %_bop1441 = mul i64 3, 1
  %_ind1442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 1
  store i64 %_bop1441, i64* %_ind1442
  %_bop1443 = mul i64 3, 2
  %_ind1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 2
  store i64 %_bop1443, i64* %_ind1444
  %_bop1445 = mul i64 3, 3
  %_ind1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 3
  store i64 %_bop1445, i64* %_ind1446
  %_bop1447 = mul i64 3, 4
  %_ind1448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1438, i32 0, i32 1, i32 4
  store i64 %_bop1447, i64* %_ind1448
  %_ind1449 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1397, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1438, { i64, [0 x i64] }** %_ind1449
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1397, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1450
  %_raw_array1451 = call i64* @oat_alloc_array(i64 3)
  %_array1452 = bitcast i64* %_raw_array1451 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1453 = call i64* @oat_alloc_array(i64 3)
  %_array1454 = bitcast i64* %_raw_array1453 to { i64, [0 x i64] }*
  %_bop1455 = mul i64 0, 0
  %_ind1456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1454, i32 0, i32 1, i32 0
  store i64 %_bop1455, i64* %_ind1456
  %_bop1457 = mul i64 0, 1
  %_ind1458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1454, i32 0, i32 1, i32 1
  store i64 %_bop1457, i64* %_ind1458
  %_bop1459 = mul i64 0, 2
  %_ind1460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1454, i32 0, i32 1, i32 2
  store i64 %_bop1459, i64* %_ind1460
  %_ind1461 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1452, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1454, { i64, [0 x i64] }** %_ind1461
  %_raw_array1462 = call i64* @oat_alloc_array(i64 3)
  %_array1463 = bitcast i64* %_raw_array1462 to { i64, [0 x i64] }*
  %_bop1464 = mul i64 1, 0
  %_ind1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 0
  store i64 %_bop1464, i64* %_ind1465
  %_bop1466 = mul i64 1, 1
  %_ind1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 1
  store i64 %_bop1466, i64* %_ind1467
  %_bop1468 = mul i64 1, 2
  %_ind1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 2
  store i64 %_bop1468, i64* %_ind1469
  %_ind1470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1452, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1463, { i64, [0 x i64] }** %_ind1470
  %_raw_array1471 = call i64* @oat_alloc_array(i64 3)
  %_array1472 = bitcast i64* %_raw_array1471 to { i64, [0 x i64] }*
  %_bop1473 = mul i64 2, 0
  %_ind1474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1472, i32 0, i32 1, i32 0
  store i64 %_bop1473, i64* %_ind1474
  %_bop1475 = mul i64 2, 1
  %_ind1476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1472, i32 0, i32 1, i32 1
  store i64 %_bop1475, i64* %_ind1476
  %_bop1477 = mul i64 2, 2
  %_ind1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1472, i32 0, i32 1, i32 2
  store i64 %_bop1477, i64* %_ind1478
  %_ind1479 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1452, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1472, { i64, [0 x i64] }** %_ind1479
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1452, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01480
  %_arr1481 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1450
  %_index_ptr1482 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1481, i32 0, i32 1, i32 3
  %_index1483 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1482
  %_index_ptr1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1483, i32 0, i32 1, i32 4
  %_index1485 = load i64, i64* %_index_ptr1484
  %_a1486 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1395
  %_index_ptr1487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1486, i32 0, i32 1, i32 1
  %_index1488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1487
  %_index_ptr1489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1488, i32 0, i32 1, i32 2
  %_index1490 = load i64, i64* %_index_ptr1489
  %_bop1491 = add i64 %_index1485, %_index1490
  %_arr01492 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01480
  %_result1493 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01492)
  %_bop1494 = add i64 %_bop1491, %_result1493
  %_result1495 = call i64 @g(i64 4)
  %_bop1496 = add i64 %_bop1494, %_result1495
  ret i64 %_bop1496
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
