; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc573, { i64, [0 x i8*] }* %_argv571) {
  %_argc574 = alloca i64
  %_argv572 = alloca { i64, [0 x i8*] }*
  %_a598 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s599 = alloca i64
  %_i600 = alloca i64
  %_j606 = alloca i64
  store i64 %_argc573, i64* %_argc574
  store { i64, [0 x i8*] }* %_argv571, { i64, [0 x i8*] }** %_argv572
  %_raw_array575 = call i64* @oat_alloc_array(i64 3)
  %_array576 = bitcast i64* %_raw_array575 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array577 = call i64* @oat_alloc_array(i64 4)
  %_array578 = bitcast i64* %_raw_array577 to { i64, [0 x i64] }*
  %_ind579 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array578, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind579
  %_ind580 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array578, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind580
  %_ind581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array578, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind581
  %_ind582 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array578, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind582
  %_ind583 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array576, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array578, { i64, [0 x i64] }** %_ind583
  %_raw_array584 = call i64* @oat_alloc_array(i64 4)
  %_array585 = bitcast i64* %_raw_array584 to { i64, [0 x i64] }*
  %_ind586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array585, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind586
  %_ind587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array585, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind587
  %_ind588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array585, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind588
  %_ind589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array585, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind589
  %_ind590 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array576, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array585, { i64, [0 x i64] }** %_ind590
  %_raw_array591 = call i64* @oat_alloc_array(i64 4)
  %_array592 = bitcast i64* %_raw_array591 to { i64, [0 x i64] }*
  %_ind593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind593
  %_ind594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind594
  %_ind595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind595
  %_ind596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array592, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind596
  %_ind597 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array576, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array592, { i64, [0 x i64] }** %_ind597
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array576, { i64, [0 x { i64, [0 x i64] }*] }** %_a598
  store i64 0, i64* %_s599
  store i64 0, i64* %_i600
  br label %_cond605
_cond605:
  %_i601 = load i64, i64* %_i600
  %_bop602 = icmp slt i64 %_i601, 3
  br i1 %_bop602, label %_body604, label %_post603
_body604:
  store i64 0, i64* %_j606
  br label %_cond611
_cond611:
  %_j607 = load i64, i64* %_j606
  %_bop608 = icmp slt i64 %_j607, 4
  br i1 %_bop608, label %_body610, label %_post609
_body610:
  %_s612 = load i64, i64* %_s599
  %_a613 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a598
  %_i614 = load i64, i64* %_i600
  %_index_ptr616 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a613, i32 0, i32 1, i64 %_i614
  %_index617 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr616
  %_j618 = load i64, i64* %_j606
  %_index_ptr620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index617, i32 0, i32 1, i64 %_j618
  %_index621 = load i64, i64* %_index_ptr620
  %_bop622 = add i64 %_s612, %_index621
  store i64 %_bop622, i64* %_s599
  %_j623 = load i64, i64* %_j606
  %_bop624 = add i64 %_j623, 1
  store i64 %_bop624, i64* %_j606
  br label %_cond611
_post609:
  %_i625 = load i64, i64* %_i600
  %_bop626 = add i64 %_i625, 1
  store i64 %_bop626, i64* %_i600
  br label %_cond605
_post603:
  %_s627 = load i64, i64* %_s599
  ret i64 %_s627
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
