; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc552, { i64, [0 x i8*] }* %_argv550) {
  %_argc553 = alloca i64
  %_argv551 = alloca { i64, [0 x i8*] }*
  %_a577 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s578 = alloca i64
  %_i579 = alloca i64
  %_j585 = alloca i64
  store i64 %_argc552, i64* %_argc553
  store { i64, [0 x i8*] }* %_argv550, { i64, [0 x i8*] }** %_argv551
  %_raw_array554 = call i64* @oat_alloc_array(i64 3)
  %_array555 = bitcast i64* %_raw_array554 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array556 = call i64* @oat_alloc_array(i64 4)
  %_array557 = bitcast i64* %_raw_array556 to { i64, [0 x i64] }*
  %_ind558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array557, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind558
  %_ind559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array557, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind559
  %_ind560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array557, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind560
  %_ind561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array557, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind561
  %_ind562 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array555, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array557, { i64, [0 x i64] }** %_ind562
  %_raw_array563 = call i64* @oat_alloc_array(i64 4)
  %_array564 = bitcast i64* %_raw_array563 to { i64, [0 x i64] }*
  %_ind565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind565
  %_ind566 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind566
  %_ind567 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind567
  %_ind568 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array564, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind568
  %_ind569 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array555, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array564, { i64, [0 x i64] }** %_ind569
  %_raw_array570 = call i64* @oat_alloc_array(i64 4)
  %_array571 = bitcast i64* %_raw_array570 to { i64, [0 x i64] }*
  %_ind572 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind572
  %_ind573 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind573
  %_ind574 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind574
  %_ind575 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array571, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind575
  %_ind576 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array555, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array571, { i64, [0 x i64] }** %_ind576
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array555, { i64, [0 x { i64, [0 x i64] }*] }** %_a577
  store i64 0, i64* %_s578
  store i64 0, i64* %_i579
  br label %_cond584
_cond584:
  %_i580 = load i64, i64* %_i579
  %_bop581 = icmp slt i64 %_i580, 3
  br i1 %_bop581, label %_body583, label %_post582
_body583:
  store i64 0, i64* %_j585
  br label %_cond590
_cond590:
  %_j586 = load i64, i64* %_j585
  %_bop587 = icmp slt i64 %_j586, 4
  br i1 %_bop587, label %_body589, label %_post588
_body589:
  %_s591 = load i64, i64* %_s578
  %_a592 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a577
  %_i593 = load i64, i64* %_i579
  %_index_ptr594 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a592, i32 0, i32 1, i64 %_i593
  %_index595 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr594
  %_j596 = load i64, i64* %_j585
  %_index_ptr597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index595, i32 0, i32 1, i64 %_j596
  %_index598 = load i64, i64* %_index_ptr597
  %_bop599 = add i64 %_s591, %_index598
  store i64 %_bop599, i64* %_s578
  %_j600 = load i64, i64* %_j585
  %_bop601 = add i64 %_j600, 1
  store i64 %_bop601, i64* %_j585
  br label %_cond590
_post588:
  %_i602 = load i64, i64* %_i579
  %_bop603 = add i64 %_i602, 1
  store i64 %_bop603, i64* %_i579
  br label %_cond584
_post582:
  %_s604 = load i64, i64* %_s578
  ret i64 %_s604
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
