; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc572, { i64, [0 x i8*] }* %_argv570) {
  %_argc573 = alloca i64
  %_argv571 = alloca { i64, [0 x i8*] }*
  %_a597 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s598 = alloca i64
  %_i599 = alloca i64
  %_j605 = alloca i64
  store i64 %_argc572, i64* %_argc573
  store { i64, [0 x i8*] }* %_argv570, { i64, [0 x i8*] }** %_argv571
  %_raw_array574 = call i64* @oat_alloc_array(i64 3)
  %_array575 = bitcast i64* %_raw_array574 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array576 = call i64* @oat_alloc_array(i64 4)
  %_array577 = bitcast i64* %_raw_array576 to { i64, [0 x i64] }*
  %_ind578 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array577, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind578
  %_ind579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array577, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind579
  %_ind580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array577, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind580
  %_ind581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array577, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind581
  %_ind582 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array575, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array577, { i64, [0 x i64] }** %_ind582
  %_raw_array583 = call i64* @oat_alloc_array(i64 4)
  %_array584 = bitcast i64* %_raw_array583 to { i64, [0 x i64] }*
  %_ind585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array584, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind585
  %_ind586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array584, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind586
  %_ind587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array584, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind587
  %_ind588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array584, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind588
  %_ind589 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array575, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array584, { i64, [0 x i64] }** %_ind589
  %_raw_array590 = call i64* @oat_alloc_array(i64 4)
  %_array591 = bitcast i64* %_raw_array590 to { i64, [0 x i64] }*
  %_ind592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array591, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind592
  %_ind593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array591, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind593
  %_ind594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array591, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind594
  %_ind595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array591, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind595
  %_ind596 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array575, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array591, { i64, [0 x i64] }** %_ind596
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array575, { i64, [0 x { i64, [0 x i64] }*] }** %_a597
  store i64 0, i64* %_s598
  store i64 0, i64* %_i599
  br label %_cond604
_cond604:
  %_i600 = load i64, i64* %_i599
  %_bop601 = icmp slt i64 %_i600, 3
  br i1 %_bop601, label %_body603, label %_post602
_body603:
  store i64 0, i64* %_j605
  br label %_cond610
_cond610:
  %_j606 = load i64, i64* %_j605
  %_bop607 = icmp slt i64 %_j606, 4
  br i1 %_bop607, label %_body609, label %_post608
_body609:
  %_s611 = load i64, i64* %_s598
  %_a612 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a597
  %_i613 = load i64, i64* %_i599
  %_index_ptr615 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a612, i32 0, i32 1, i64 %_i613
  %_index616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr615
  %_j617 = load i64, i64* %_j605
  %_index_ptr619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index616, i32 0, i32 1, i64 %_j617
  %_index620 = load i64, i64* %_index_ptr619
  %_bop621 = add i64 %_s611, %_index620
  store i64 %_bop621, i64* %_s598
  %_j622 = load i64, i64* %_j605
  %_bop623 = add i64 %_j622, 1
  store i64 %_bop623, i64* %_j605
  br label %_cond610
_post608:
  %_i624 = load i64, i64* %_i599
  %_bop625 = add i64 %_i624, 1
  store i64 %_bop625, i64* %_i599
  br label %_cond604
_post602:
  %_s626 = load i64, i64* %_s598
  ret i64 %_s626
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
