; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1615, { i64, [0 x i8*] }* %_argv1613) {
  %_argc1616 = alloca i64
  %_argv1614 = alloca { i64, [0 x i8*] }*
  %_x1617 = alloca i64
  %_a1665 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1667 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1615, i64* %_argc1616
  store { i64, [0 x i8*] }* %_argv1613, { i64, [0 x i8*] }** %_argv1614
  store i64 10, i64* %_x1617
  %_raw_array1618 = call i64* @oat_alloc_array(i64 3)
  %_array1619 = bitcast i64* %_raw_array1618 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1620 = call i64* @oat_alloc_array(i64 3)
  %_array1621 = bitcast i64* %_raw_array1620 to { i64, [0 x i64] }*
  %_x1622 = load i64, i64* %_x1617
  %_bop1623 = add i64 %_x1622, 0
  %_bop1624 = add i64 %_bop1623, 0
  %_ind1625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1621, i32 0, i32 1, i32 0
  store i64 %_bop1624, i64* %_ind1625
  %_x1626 = load i64, i64* %_x1617
  %_bop1627 = add i64 %_x1626, 0
  %_bop1628 = add i64 %_bop1627, 1
  %_ind1629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1621, i32 0, i32 1, i32 1
  store i64 %_bop1628, i64* %_ind1629
  %_x1630 = load i64, i64* %_x1617
  %_bop1631 = add i64 %_x1630, 0
  %_bop1632 = add i64 %_bop1631, 2
  %_ind1633 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1621, i32 0, i32 1, i32 2
  store i64 %_bop1632, i64* %_ind1633
  %_ind1634 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1619, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1621, { i64, [0 x i64] }** %_ind1634
  %_raw_array1635 = call i64* @oat_alloc_array(i64 3)
  %_array1636 = bitcast i64* %_raw_array1635 to { i64, [0 x i64] }*
  %_x1637 = load i64, i64* %_x1617
  %_bop1638 = add i64 %_x1637, 1
  %_bop1639 = add i64 %_bop1638, 0
  %_ind1640 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1636, i32 0, i32 1, i32 0
  store i64 %_bop1639, i64* %_ind1640
  %_x1641 = load i64, i64* %_x1617
  %_bop1642 = add i64 %_x1641, 1
  %_bop1643 = add i64 %_bop1642, 1
  %_ind1644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1636, i32 0, i32 1, i32 1
  store i64 %_bop1643, i64* %_ind1644
  %_x1645 = load i64, i64* %_x1617
  %_bop1646 = add i64 %_x1645, 1
  %_bop1647 = add i64 %_bop1646, 2
  %_ind1648 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1636, i32 0, i32 1, i32 2
  store i64 %_bop1647, i64* %_ind1648
  %_ind1649 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1619, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1636, { i64, [0 x i64] }** %_ind1649
  %_raw_array1650 = call i64* @oat_alloc_array(i64 3)
  %_array1651 = bitcast i64* %_raw_array1650 to { i64, [0 x i64] }*
  %_x1652 = load i64, i64* %_x1617
  %_bop1653 = add i64 %_x1652, 2
  %_bop1654 = add i64 %_bop1653, 0
  %_ind1655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1651, i32 0, i32 1, i32 0
  store i64 %_bop1654, i64* %_ind1655
  %_x1656 = load i64, i64* %_x1617
  %_bop1657 = add i64 %_x1656, 2
  %_bop1658 = add i64 %_bop1657, 1
  %_ind1659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1651, i32 0, i32 1, i32 1
  store i64 %_bop1658, i64* %_ind1659
  %_x1660 = load i64, i64* %_x1617
  %_bop1661 = add i64 %_x1660, 2
  %_bop1662 = add i64 %_bop1661, 2
  %_ind1663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1651, i32 0, i32 1, i32 2
  store i64 %_bop1662, i64* %_ind1663
  %_ind1664 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1619, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1651, { i64, [0 x i64] }** %_ind1664
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1619, { i64, [0 x { i64, [0 x i64] }*] }** %_a1665
  %_a1666 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1665
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1666, { i64, [0 x { i64, [0 x i64] }*] }** %_b1667
  %_b1668 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1667
  %_index_ptr1670 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1668, i32 0, i32 1, i32 2
  %_index1671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1670
  %_index_ptr1673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1671, i32 0, i32 1, i32 1
  %_index1674 = load i64, i64* %_index_ptr1673
  ret i64 %_index1674
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
