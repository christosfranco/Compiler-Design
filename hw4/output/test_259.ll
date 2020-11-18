; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1617, { i64, [0 x i8*] }* %_argv1615) {
  %_argc1618 = alloca i64
  %_argv1616 = alloca { i64, [0 x i8*] }*
  %_x1619 = alloca i64
  %_a1667 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1669 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1617, i64* %_argc1618
  store { i64, [0 x i8*] }* %_argv1615, { i64, [0 x i8*] }** %_argv1616
  store i64 10, i64* %_x1619
  %_raw_array1620 = call i64* @oat_alloc_array(i64 3)
  %_array1621 = bitcast i64* %_raw_array1620 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1622 = call i64* @oat_alloc_array(i64 3)
  %_array1623 = bitcast i64* %_raw_array1622 to { i64, [0 x i64] }*
  %_x1624 = load i64, i64* %_x1619
  %_bop1625 = add i64 %_x1624, 0
  %_bop1626 = add i64 %_bop1625, 0
  %_ind1627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1623, i32 0, i32 1, i32 0
  store i64 %_bop1626, i64* %_ind1627
  %_x1628 = load i64, i64* %_x1619
  %_bop1629 = add i64 %_x1628, 0
  %_bop1630 = add i64 %_bop1629, 1
  %_ind1631 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1623, i32 0, i32 1, i32 1
  store i64 %_bop1630, i64* %_ind1631
  %_x1632 = load i64, i64* %_x1619
  %_bop1633 = add i64 %_x1632, 0
  %_bop1634 = add i64 %_bop1633, 2
  %_ind1635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1623, i32 0, i32 1, i32 2
  store i64 %_bop1634, i64* %_ind1635
  %_ind1636 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1621, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1623, { i64, [0 x i64] }** %_ind1636
  %_raw_array1637 = call i64* @oat_alloc_array(i64 3)
  %_array1638 = bitcast i64* %_raw_array1637 to { i64, [0 x i64] }*
  %_x1639 = load i64, i64* %_x1619
  %_bop1640 = add i64 %_x1639, 1
  %_bop1641 = add i64 %_bop1640, 0
  %_ind1642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1638, i32 0, i32 1, i32 0
  store i64 %_bop1641, i64* %_ind1642
  %_x1643 = load i64, i64* %_x1619
  %_bop1644 = add i64 %_x1643, 1
  %_bop1645 = add i64 %_bop1644, 1
  %_ind1646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1638, i32 0, i32 1, i32 1
  store i64 %_bop1645, i64* %_ind1646
  %_x1647 = load i64, i64* %_x1619
  %_bop1648 = add i64 %_x1647, 1
  %_bop1649 = add i64 %_bop1648, 2
  %_ind1650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1638, i32 0, i32 1, i32 2
  store i64 %_bop1649, i64* %_ind1650
  %_ind1651 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1621, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1638, { i64, [0 x i64] }** %_ind1651
  %_raw_array1652 = call i64* @oat_alloc_array(i64 3)
  %_array1653 = bitcast i64* %_raw_array1652 to { i64, [0 x i64] }*
  %_x1654 = load i64, i64* %_x1619
  %_bop1655 = add i64 %_x1654, 2
  %_bop1656 = add i64 %_bop1655, 0
  %_ind1657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1653, i32 0, i32 1, i32 0
  store i64 %_bop1656, i64* %_ind1657
  %_x1658 = load i64, i64* %_x1619
  %_bop1659 = add i64 %_x1658, 2
  %_bop1660 = add i64 %_bop1659, 1
  %_ind1661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1653, i32 0, i32 1, i32 1
  store i64 %_bop1660, i64* %_ind1661
  %_x1662 = load i64, i64* %_x1619
  %_bop1663 = add i64 %_x1662, 2
  %_bop1664 = add i64 %_bop1663, 2
  %_ind1665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1653, i32 0, i32 1, i32 2
  store i64 %_bop1664, i64* %_ind1665
  %_ind1666 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1621, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1653, { i64, [0 x i64] }** %_ind1666
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1621, { i64, [0 x { i64, [0 x i64] }*] }** %_a1667
  %_a1668 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1667
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1668, { i64, [0 x { i64, [0 x i64] }*] }** %_b1669
  %_b1670 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1669
  %_index_ptr1672 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1670, i32 0, i32 1, i32 2
  %_index1673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1672
  %_index_ptr1675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1673, i32 0, i32 1, i32 1
  %_index1676 = load i64, i64* %_index_ptr1675
  ret i64 %_index1676
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
