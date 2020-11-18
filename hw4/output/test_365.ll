; generated from: oatprograms/run15.oat
target triple = "x86_64-unknown-linux"
define i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_a1606) {
  %_a1607 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1606, { i64, [0 x { i64, [0 x i64] }*] }** %_a1607
  %_a1608 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1607
  %_index_ptr1610 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1608, i32 0, i32 1, i32 1
  %_index1611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1610
  %_index_ptr1613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1611, i32 0, i32 1, i32 1
  %_index1614 = load i64, i64* %_index_ptr1613
  ret i64 %_index1614
}

define i64 @g(i64 %_x1567) {
  %_x1568 = alloca i64
  %_arr1598 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_x1567, i64* %_x1568
  %_raw_array1569 = call i64* @oat_alloc_array(i64 3)
  %_array1570 = bitcast i64* %_raw_array1569 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1571 = call i64* @oat_alloc_array(i64 3)
  %_array1572 = bitcast i64* %_raw_array1571 to { i64, [0 x i64] }*
  %_x1573 = load i64, i64* %_x1568
  %_ind1574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1572, i32 0, i32 1, i32 0
  store i64 %_x1573, i64* %_ind1574
  %_x1575 = load i64, i64* %_x1568
  %_ind1576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1572, i32 0, i32 1, i32 1
  store i64 %_x1575, i64* %_ind1576
  %_x1577 = load i64, i64* %_x1568
  %_ind1578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1572, i32 0, i32 1, i32 2
  store i64 %_x1577, i64* %_ind1578
  %_ind1579 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1570, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1572, { i64, [0 x i64] }** %_ind1579
  %_raw_array1580 = call i64* @oat_alloc_array(i64 3)
  %_array1581 = bitcast i64* %_raw_array1580 to { i64, [0 x i64] }*
  %_x1582 = load i64, i64* %_x1568
  %_ind1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1581, i32 0, i32 1, i32 0
  store i64 %_x1582, i64* %_ind1583
  %_x1584 = load i64, i64* %_x1568
  %_ind1585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1581, i32 0, i32 1, i32 1
  store i64 %_x1584, i64* %_ind1585
  %_x1586 = load i64, i64* %_x1568
  %_ind1587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1581, i32 0, i32 1, i32 2
  store i64 %_x1586, i64* %_ind1587
  %_ind1588 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1570, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1581, { i64, [0 x i64] }** %_ind1588
  %_raw_array1589 = call i64* @oat_alloc_array(i64 3)
  %_array1590 = bitcast i64* %_raw_array1589 to { i64, [0 x i64] }*
  %_x1591 = load i64, i64* %_x1568
  %_ind1592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 0
  store i64 %_x1591, i64* %_ind1592
  %_x1593 = load i64, i64* %_x1568
  %_ind1594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 1
  store i64 %_x1593, i64* %_ind1594
  %_x1595 = load i64, i64* %_x1568
  %_ind1596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1590, i32 0, i32 1, i32 2
  store i64 %_x1595, i64* %_ind1596
  %_ind1597 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1570, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1590, { i64, [0 x i64] }** %_ind1597
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1570, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1598
  %_arr1599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1598
  %_index_ptr1601 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1599, i32 0, i32 1, i32 1
  %_index1602 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1601
  %_index_ptr1604 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1602, i32 0, i32 1, i32 1
  %_index1605 = load i64, i64* %_index_ptr1604
  ret i64 %_index1605
}

define i64 @program(i64 %_argc1439, { i64, [0 x i8*] }* %_argv1437) {
  %_argc1440 = alloca i64
  %_argv1438 = alloca { i64, [0 x i8*] }*
  %_a1461 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1516 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr01546 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1439, i64* %_argc1440
  store { i64, [0 x i8*] }* %_argv1437, { i64, [0 x i8*] }** %_argv1438
  %_raw_array1441 = call i64* @oat_alloc_array(i64 3)
  %_array1442 = bitcast i64* %_raw_array1441 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1443 = call i64* @oat_alloc_array(i64 3)
  %_array1444 = bitcast i64* %_raw_array1443 to { i64, [0 x i64] }*
  %_ind1445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1444, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1445
  %_ind1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1444, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1446
  %_ind1447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1444, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1447
  %_ind1448 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1444, { i64, [0 x i64] }** %_ind1448
  %_raw_array1449 = call i64* @oat_alloc_array(i64 3)
  %_array1450 = bitcast i64* %_raw_array1449 to { i64, [0 x i64] }*
  %_ind1451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1450, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1451
  %_ind1452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1450, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1452
  %_ind1453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1450, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1453
  %_ind1454 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1450, { i64, [0 x i64] }** %_ind1454
  %_raw_array1455 = call i64* @oat_alloc_array(i64 3)
  %_array1456 = bitcast i64* %_raw_array1455 to { i64, [0 x i64] }*
  %_ind1457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1456, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind1457
  %_ind1458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1456, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind1458
  %_ind1459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1456, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind1459
  %_ind1460 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1456, { i64, [0 x i64] }** %_ind1460
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1442, { i64, [0 x { i64, [0 x i64] }*] }** %_a1461
  %_raw_array1462 = call i64* @oat_alloc_array(i64 4)
  %_array1463 = bitcast i64* %_raw_array1462 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1464 = call i64* @oat_alloc_array(i64 5)
  %_array1465 = bitcast i64* %_raw_array1464 to { i64, [0 x i64] }*
  %_bop1466 = mul i64 0, 0
  %_ind1467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 0
  store i64 %_bop1466, i64* %_ind1467
  %_bop1468 = mul i64 0, 1
  %_ind1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 1
  store i64 %_bop1468, i64* %_ind1469
  %_bop1470 = mul i64 0, 2
  %_ind1471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 2
  store i64 %_bop1470, i64* %_ind1471
  %_bop1472 = mul i64 0, 3
  %_ind1473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 3
  store i64 %_bop1472, i64* %_ind1473
  %_bop1474 = mul i64 0, 4
  %_ind1475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1465, i32 0, i32 1, i32 4
  store i64 %_bop1474, i64* %_ind1475
  %_ind1476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1463, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1465, { i64, [0 x i64] }** %_ind1476
  %_raw_array1477 = call i64* @oat_alloc_array(i64 5)
  %_array1478 = bitcast i64* %_raw_array1477 to { i64, [0 x i64] }*
  %_bop1479 = mul i64 1, 0
  %_ind1480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 0
  store i64 %_bop1479, i64* %_ind1480
  %_bop1481 = mul i64 1, 1
  %_ind1482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 1
  store i64 %_bop1481, i64* %_ind1482
  %_bop1483 = mul i64 1, 2
  %_ind1484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 2
  store i64 %_bop1483, i64* %_ind1484
  %_bop1485 = mul i64 1, 3
  %_ind1486 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 3
  store i64 %_bop1485, i64* %_ind1486
  %_bop1487 = mul i64 1, 4
  %_ind1488 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1478, i32 0, i32 1, i32 4
  store i64 %_bop1487, i64* %_ind1488
  %_ind1489 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1463, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1478, { i64, [0 x i64] }** %_ind1489
  %_raw_array1490 = call i64* @oat_alloc_array(i64 5)
  %_array1491 = bitcast i64* %_raw_array1490 to { i64, [0 x i64] }*
  %_bop1492 = mul i64 2, 0
  %_ind1493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1491, i32 0, i32 1, i32 0
  store i64 %_bop1492, i64* %_ind1493
  %_bop1494 = mul i64 2, 1
  %_ind1495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1491, i32 0, i32 1, i32 1
  store i64 %_bop1494, i64* %_ind1495
  %_bop1496 = mul i64 2, 2
  %_ind1497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1491, i32 0, i32 1, i32 2
  store i64 %_bop1496, i64* %_ind1497
  %_bop1498 = mul i64 2, 3
  %_ind1499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1491, i32 0, i32 1, i32 3
  store i64 %_bop1498, i64* %_ind1499
  %_bop1500 = mul i64 2, 4
  %_ind1501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1491, i32 0, i32 1, i32 4
  store i64 %_bop1500, i64* %_ind1501
  %_ind1502 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1463, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1491, { i64, [0 x i64] }** %_ind1502
  %_raw_array1503 = call i64* @oat_alloc_array(i64 5)
  %_array1504 = bitcast i64* %_raw_array1503 to { i64, [0 x i64] }*
  %_bop1505 = mul i64 3, 0
  %_ind1506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 0
  store i64 %_bop1505, i64* %_ind1506
  %_bop1507 = mul i64 3, 1
  %_ind1508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 1
  store i64 %_bop1507, i64* %_ind1508
  %_bop1509 = mul i64 3, 2
  %_ind1510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 2
  store i64 %_bop1509, i64* %_ind1510
  %_bop1511 = mul i64 3, 3
  %_ind1512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 3
  store i64 %_bop1511, i64* %_ind1512
  %_bop1513 = mul i64 3, 4
  %_ind1514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1504, i32 0, i32 1, i32 4
  store i64 %_bop1513, i64* %_ind1514
  %_ind1515 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1463, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array1504, { i64, [0 x i64] }** %_ind1515
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1463, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1516
  %_raw_array1517 = call i64* @oat_alloc_array(i64 3)
  %_array1518 = bitcast i64* %_raw_array1517 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1519 = call i64* @oat_alloc_array(i64 3)
  %_array1520 = bitcast i64* %_raw_array1519 to { i64, [0 x i64] }*
  %_bop1521 = mul i64 0, 0
  %_ind1522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 0
  store i64 %_bop1521, i64* %_ind1522
  %_bop1523 = mul i64 0, 1
  %_ind1524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 1
  store i64 %_bop1523, i64* %_ind1524
  %_bop1525 = mul i64 0, 2
  %_ind1526 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1520, i32 0, i32 1, i32 2
  store i64 %_bop1525, i64* %_ind1526
  %_ind1527 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1518, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1520, { i64, [0 x i64] }** %_ind1527
  %_raw_array1528 = call i64* @oat_alloc_array(i64 3)
  %_array1529 = bitcast i64* %_raw_array1528 to { i64, [0 x i64] }*
  %_bop1530 = mul i64 1, 0
  %_ind1531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1529, i32 0, i32 1, i32 0
  store i64 %_bop1530, i64* %_ind1531
  %_bop1532 = mul i64 1, 1
  %_ind1533 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1529, i32 0, i32 1, i32 1
  store i64 %_bop1532, i64* %_ind1533
  %_bop1534 = mul i64 1, 2
  %_ind1535 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1529, i32 0, i32 1, i32 2
  store i64 %_bop1534, i64* %_ind1535
  %_ind1536 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1518, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1529, { i64, [0 x i64] }** %_ind1536
  %_raw_array1537 = call i64* @oat_alloc_array(i64 3)
  %_array1538 = bitcast i64* %_raw_array1537 to { i64, [0 x i64] }*
  %_bop1539 = mul i64 2, 0
  %_ind1540 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 0
  store i64 %_bop1539, i64* %_ind1540
  %_bop1541 = mul i64 2, 1
  %_ind1542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 1
  store i64 %_bop1541, i64* %_ind1542
  %_bop1543 = mul i64 2, 2
  %_ind1544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1538, i32 0, i32 1, i32 2
  store i64 %_bop1543, i64* %_ind1544
  %_ind1545 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1518, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1538, { i64, [0 x i64] }** %_ind1545
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1518, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01546
  %_arr1547 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1516
  %_index_ptr1549 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1547, i32 0, i32 1, i32 3
  %_index1550 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1549
  %_index_ptr1552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1550, i32 0, i32 1, i32 4
  %_index1553 = load i64, i64* %_index_ptr1552
  %_a1554 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1461
  %_index_ptr1556 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a1554, i32 0, i32 1, i32 1
  %_index1557 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1556
  %_index_ptr1559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1557, i32 0, i32 1, i32 2
  %_index1560 = load i64, i64* %_index_ptr1559
  %_bop1561 = add i64 %_index1553, %_index1560
  %_arr01562 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr01546
  %_result1563 = call i64 @f({ i64, [0 x { i64, [0 x i64] }*] }* %_arr01562)
  %_bop1564 = add i64 %_bop1561, %_result1563
  %_result1565 = call i64 @g(i64 4)
  %_bop1566 = add i64 %_bop1564, %_result1565
  ret i64 %_bop1566
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
