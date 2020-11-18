; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1543, { i64, [0 x i8*] }* %_argv1541) {
  %_argc1544 = alloca i64
  %_argv1542 = alloca { i64, [0 x i8*] }*
  %_x1545 = alloca i64
  %_a1593 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1595 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1543, i64* %_argc1544
  store { i64, [0 x i8*] }* %_argv1541, { i64, [0 x i8*] }** %_argv1542
  store i64 10, i64* %_x1545
  %_raw_array1546 = call i64* @oat_alloc_array(i64 3)
  %_array1547 = bitcast i64* %_raw_array1546 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1548 = call i64* @oat_alloc_array(i64 3)
  %_array1549 = bitcast i64* %_raw_array1548 to { i64, [0 x i64] }*
  %_x1550 = load i64, i64* %_x1545
  %_bop1551 = add i64 %_x1550, 0
  %_bop1552 = add i64 %_bop1551, 0
  %_ind1553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1549, i32 0, i32 1, i32 0
  store i64 %_bop1552, i64* %_ind1553
  %_x1554 = load i64, i64* %_x1545
  %_bop1555 = add i64 %_x1554, 0
  %_bop1556 = add i64 %_bop1555, 1
  %_ind1557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1549, i32 0, i32 1, i32 1
  store i64 %_bop1556, i64* %_ind1557
  %_x1558 = load i64, i64* %_x1545
  %_bop1559 = add i64 %_x1558, 0
  %_bop1560 = add i64 %_bop1559, 2
  %_ind1561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1549, i32 0, i32 1, i32 2
  store i64 %_bop1560, i64* %_ind1561
  %_ind1562 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1547, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1549, { i64, [0 x i64] }** %_ind1562
  %_raw_array1563 = call i64* @oat_alloc_array(i64 3)
  %_array1564 = bitcast i64* %_raw_array1563 to { i64, [0 x i64] }*
  %_x1565 = load i64, i64* %_x1545
  %_bop1566 = add i64 %_x1565, 1
  %_bop1567 = add i64 %_bop1566, 0
  %_ind1568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1564, i32 0, i32 1, i32 0
  store i64 %_bop1567, i64* %_ind1568
  %_x1569 = load i64, i64* %_x1545
  %_bop1570 = add i64 %_x1569, 1
  %_bop1571 = add i64 %_bop1570, 1
  %_ind1572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1564, i32 0, i32 1, i32 1
  store i64 %_bop1571, i64* %_ind1572
  %_x1573 = load i64, i64* %_x1545
  %_bop1574 = add i64 %_x1573, 1
  %_bop1575 = add i64 %_bop1574, 2
  %_ind1576 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1564, i32 0, i32 1, i32 2
  store i64 %_bop1575, i64* %_ind1576
  %_ind1577 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1547, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1564, { i64, [0 x i64] }** %_ind1577
  %_raw_array1578 = call i64* @oat_alloc_array(i64 3)
  %_array1579 = bitcast i64* %_raw_array1578 to { i64, [0 x i64] }*
  %_x1580 = load i64, i64* %_x1545
  %_bop1581 = add i64 %_x1580, 2
  %_bop1582 = add i64 %_bop1581, 0
  %_ind1583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1579, i32 0, i32 1, i32 0
  store i64 %_bop1582, i64* %_ind1583
  %_x1584 = load i64, i64* %_x1545
  %_bop1585 = add i64 %_x1584, 2
  %_bop1586 = add i64 %_bop1585, 1
  %_ind1587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1579, i32 0, i32 1, i32 1
  store i64 %_bop1586, i64* %_ind1587
  %_x1588 = load i64, i64* %_x1545
  %_bop1589 = add i64 %_x1588, 2
  %_bop1590 = add i64 %_bop1589, 2
  %_ind1591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1579, i32 0, i32 1, i32 2
  store i64 %_bop1590, i64* %_ind1591
  %_ind1592 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1547, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1579, { i64, [0 x i64] }** %_ind1592
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1547, { i64, [0 x { i64, [0 x i64] }*] }** %_a1593
  %_a1594 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1593
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1594, { i64, [0 x { i64, [0 x i64] }*] }** %_b1595
  %_b1596 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1595
  %_index_ptr1597 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1596, i32 0, i32 1, i32 2
  %_index1598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1597
  %_index_ptr1599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1598, i32 0, i32 1, i32 1
  %_index1600 = load i64, i64* %_index_ptr1599
  ret i64 %_index1600
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
