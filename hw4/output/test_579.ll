; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1604) {
  %_a1605 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1604, { i64, [0 x { i64, [0 x i64] }*] }** %_a1605
  %_a1606 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1605
  %_index_ptr1608 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1606, i32 0, i32 1, i32 1
  %_index1609 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1608
  %_index_ptr1611 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1609, i32 0, i32 1, i32 1
  %_index1612 = load i64, i64* %_index_ptr1611
  ret i64 %_index1612
}

define i64 @g(i64 %_x1565) {
  %_x1566 = alloca i64
  %_arr1596 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_x1565, i64* %_x1566
  %_raw_array1567 = call i64* @oat_alloc_array(i64 3)
  %_array1568 = bitcast i64* %_raw_array1567 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1569 = call i64* @oat_alloc_array(i64 3)
  %_array1570 = bitcast i64* %_raw_array1569 to { i64, [0 x i64] }*
  %_x1571 = load i64, i64* %_x1566
  %_ind1572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1570, i32 0, i32 1, i32 0
  store i64 %_x1571, i64* %_ind1572
  %_x1573 = load i64, i64* %_x1566
  %_ind1574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1570, i32 0, i32 1, i32 1
  store i64 %_x1573, i64* %_ind1574
  %_x1575 = load i64, i64* %_x1566
  %_ind1576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1570, i32 0, i32 1, i32 2
  store i64 %_x1575, i64* %_ind1576
  %_ind1577 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1568, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1570, { i64, [0 x i64] }** %_ind1577
  %_raw_array1578 = call i64* @oat_alloc_array(i64 3)
  %_array1579 = bitcast i64* %_raw_array1578 to { i64, [0 x i64] }*
  %_x1580 = load i64, i64* %_x1566
  %_ind1581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1579, i32 0, i32 1, i32 0
  store i64 %_x1580, i64* %_ind1581
  %_x1582 = load i64, i64* %_x1566
  %_ind1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1579, i32 0, i32 1, i32 1
  store i64 %_x1582, i64* %_ind1583
  %_x1584 = load i64, i64* %_x1566
  %_ind1585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1579, i32 0, i32 1, i32 2
  store i64 %_x1584, i64* %_ind1585
  %_ind1586 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1568, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1579, { i64, [0 x i64] }** %_ind1586
  %_raw_array1587 = call i64* @oat_alloc_array(i64 3)
  %_array1588 = bitcast i64* %_raw_array1587 to { i64, [0 x i64] }*
  %_x1589 = load i64, i64* %_x1566
  %_ind1590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1588, i32 0, i32 1, i32 0
  store i64 %_x1589, i64* %_ind1590
  %_x1591 = load i64, i64* %_x1566
  %_ind1592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1588, i32 0, i32 1, i32 1
  store i64 %_x1591, i64* %_ind1592
  %_x1593 = load i64, i64* %_x1566
  %_ind1594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1588, i32 0, i32 1, i32 2
  store i64 %_x1593, i64* %_ind1594
  %_ind1595 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1568, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1588, { i64, [0 x i64] }** %_ind1595
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1568, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1596
  %_arr1597 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1596
  %_index_ptr1599 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1597, i32 0, i32 1, i32 1
  %_index1600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1599
  %_index_ptr1602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1600, i32 0, i32 1, i32 1
  %_index1603 = load i64, i64* %_index_ptr1602
  ret i64 %_index1603
}

define i64 @program(i64 %_argc1437, { i64, [0 x i8*] }* %_argv1435) {
  %_argc1438 = alloca i64
  %_argv1436 = alloca { i64, [0 x i8*] }*
  %_a1459 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1514 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01544 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1437, i64* %_argc1438
  store { i64, [0 x i8*] }* %_argv1435, { i64, [0 x i8*] }** %_argv1436
  %_raw_array1439 = call i64* @oat_alloc_array(i64 3)
  %_array1440 = bitcast i64* %_raw_array1439 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1441 = call i64* @oat_alloc_array(i64 3)
  %_array1442 = bitcast i64* %_raw_array1441 to { i64, [0 x i64] }*
  %_ind1443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1443
  %_ind1444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1444
  %_ind1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1445
  %_ind1446 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1442, { i64, [0 x i64] }** %_ind1446
  %_raw_array1447 = call i64* @oat_alloc_array(i64 3)
  %_array1448 = bitcast i64* %_raw_array1447 to { i64, [0 x i64] }*
  %_ind1449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1448, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1449
  %_ind1450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1448, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1450
  %_ind1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1448, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1451
  %_ind1452 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1448, { i64, [0 x i64] }** %_ind1452
  %_raw_array1453 = call i64* @oat_alloc_array(i64 3)
  %_array1454 = bitcast i64* %_raw_array1453 to { i64, [0 x i64] }*
  %_ind1455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1454, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1455
  %_ind1456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1454, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1456
  %_ind1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1454, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1457
  %_ind1458 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1454, { i64, [0 x i64] }** %_ind1458
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1440, { i64, [0 x { i64, [0 x i64] }*] }** %_a1459
  %_raw_array1460 = call i64* @oat_alloc_array(i64 4)
  %_array1461 = bitcast i64* %_raw_array1460 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1462 = call i64* @oat_alloc_array(i64 5)
  %_array1463 = bitcast i64* %_raw_array1462 to { i64, [0 x i64] }*
  %_bop1464 = mul i64 0, 0
  %_ind1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 0
  store i64 %_bop1464, i64* %_ind1465
  %_bop1466 = mul i64 0, 1
  %_ind1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 1
  store i64 %_bop1466, i64* %_ind1467
  %_bop1468 = mul i64 0, 2
  %_ind1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 2
  store i64 %_bop1468, i64* %_ind1469
  %_bop1470 = mul i64 0, 3
  %_ind1471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 3
  store i64 %_bop1470, i64* %_ind1471
  %_bop1472 = mul i64 0, 4
  %_ind1473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1463, i32 0, i32 1, i32 4
  store i64 %_bop1472, i64* %_ind1473
  %_ind1474 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1461, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1463, { i64, [0 x i64] }** %_ind1474
  %_raw_array1475 = call i64* @oat_alloc_array(i64 5)
  %_array1476 = bitcast i64* %_raw_array1475 to { i64, [0 x i64] }*
  %_bop1477 = mul i64 1, 0
  %_ind1478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 0
  store i64 %_bop1477, i64* %_ind1478
  %_bop1479 = mul i64 1, 1
  %_ind1480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 1
  store i64 %_bop1479, i64* %_ind1480
  %_bop1481 = mul i64 1, 2
  %_ind1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 2
  store i64 %_bop1481, i64* %_ind1482
  %_bop1483 = mul i64 1, 3
  %_ind1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 3
  store i64 %_bop1483, i64* %_ind1484
  %_bop1485 = mul i64 1, 4
  %_ind1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1476, i32 0, i32 1, i32 4
  store i64 %_bop1485, i64* %_ind1486
  %_ind1487 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1461, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1476, { i64, [0 x i64] }** %_ind1487
  %_raw_array1488 = call i64* @oat_alloc_array(i64 5)
  %_array1489 = bitcast i64* %_raw_array1488 to { i64, [0 x i64] }*
  %_bop1490 = mul i64 2, 0
  %_ind1491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 0
  store i64 %_bop1490, i64* %_ind1491
  %_bop1492 = mul i64 2, 1
  %_ind1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 1
  store i64 %_bop1492, i64* %_ind1493
  %_bop1494 = mul i64 2, 2
  %_ind1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 2
  store i64 %_bop1494, i64* %_ind1495
  %_bop1496 = mul i64 2, 3
  %_ind1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 3
  store i64 %_bop1496, i64* %_ind1497
  %_bop1498 = mul i64 2, 4
  %_ind1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1489, i32 0, i32 1, i32 4
  store i64 %_bop1498, i64* %_ind1499
  %_ind1500 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1461, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1489, { i64, [0 x i64] }** %_ind1500
  %_raw_array1501 = call i64* @oat_alloc_array(i64 5)
  %_array1502 = bitcast i64* %_raw_array1501 to { i64, [0 x i64] }*
  %_bop1503 = mul i64 3, 0
  %_ind1504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 0
  store i64 %_bop1503, i64* %_ind1504
  %_bop1505 = mul i64 3, 1
  %_ind1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 1
  store i64 %_bop1505, i64* %_ind1506
  %_bop1507 = mul i64 3, 2
  %_ind1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 2
  store i64 %_bop1507, i64* %_ind1508
  %_bop1509 = mul i64 3, 3
  %_ind1510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 3
  store i64 %_bop1509, i64* %_ind1510
  %_bop1511 = mul i64 3, 4
  %_ind1512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1502, i32 0, i32 1, i32 4
  store i64 %_bop1511, i64* %_ind1512
  %_ind1513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1461, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1502, { i64, [0 x i64] }** %_ind1513
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1461, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1514
  %_raw_array1515 = call i64* @oat_alloc_array(i64 3)
  %_array1516 = bitcast i64* %_raw_array1515 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1517 = call i64* @oat_alloc_array(i64 3)
  %_array1518 = bitcast i64* %_raw_array1517 to { i64, [0 x i64] }*
  %_bop1519 = mul i64 0, 0
  %_ind1520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1518, i32 0, i32 1, i32 0
  store i64 %_bop1519, i64* %_ind1520
  %_bop1521 = mul i64 0, 1
  %_ind1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1518, i32 0, i32 1, i32 1
  store i64 %_bop1521, i64* %_ind1522
  %_bop1523 = mul i64 0, 2
  %_ind1524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1518, i32 0, i32 1, i32 2
  store i64 %_bop1523, i64* %_ind1524
  %_ind1525 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1516, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1518, { i64, [0 x i64] }** %_ind1525
  %_raw_array1526 = call i64* @oat_alloc_array(i64 3)
  %_array1527 = bitcast i64* %_raw_array1526 to { i64, [0 x i64] }*
  %_bop1528 = mul i64 1, 0
  %_ind1529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1527, i32 0, i32 1, i32 0
  store i64 %_bop1528, i64* %_ind1529
  %_bop1530 = mul i64 1, 1
  %_ind1531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1527, i32 0, i32 1, i32 1
  store i64 %_bop1530, i64* %_ind1531
  %_bop1532 = mul i64 1, 2
  %_ind1533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1527, i32 0, i32 1, i32 2
  store i64 %_bop1532, i64* %_ind1533
  %_ind1534 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1516, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1527, { i64, [0 x i64] }** %_ind1534
  %_raw_array1535 = call i64* @oat_alloc_array(i64 3)
  %_array1536 = bitcast i64* %_raw_array1535 to { i64, [0 x i64] }*
  %_bop1537 = mul i64 2, 0
  %_ind1538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 0
  store i64 %_bop1537, i64* %_ind1538
  %_bop1539 = mul i64 2, 1
  %_ind1540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 1
  store i64 %_bop1539, i64* %_ind1540
  %_bop1541 = mul i64 2, 2
  %_ind1542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1536, i32 0, i32 1, i32 2
  store i64 %_bop1541, i64* %_ind1542
  %_ind1543 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1516, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1536, { i64, [0 x i64] }** %_ind1543
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1516, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01544
  %_arr1545 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1514
  %_index_ptr1547 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1545, i32 0, i32 1, i32 3
  %_index1548 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1547
  %_index_ptr1550 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1548, i32 0, i32 1, i32 4
  %_index1551 = load i64, i64* %_index_ptr1550
  %_a1552 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1459
  %_index_ptr1554 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1552, i32 0, i32 1, i32 1
  %_index1555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1554
  %_index_ptr1557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1555, i32 0, i32 1, i32 2
  %_index1558 = load i64, i64* %_index_ptr1557
  %_bop1559 = add i64 %_index1551, %_index1558
  %_arr01560 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01544
  %_result1561 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01560)
  %_bop1562 = add i64 %_bop1559, %_result1561
  %_result1563 = call i64 @g(i64 4)
  %_bop1564 = add i64 %_bop1562, %_result1563
  ret i64 %_bop1564
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
