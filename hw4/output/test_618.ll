; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@_constant4727 = global i64 5
@lfsr_length = global i64 4
@_constant4726 = global i64 4
@lfsr_init_values = global { i64, [4 x i1] }* @_global_arr4725
@_global_arr4725 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_constant4724 = global i1 1
@_constant4723 = global i1 0
@_constant4722 = global i1 1
@_constant4721 = global i1 0
@_str_arr4701 = global [2 x i8] c"T\00"
@_str_arr4703 = global [2 x i8] c"F\00"
@_str_arr4672 = global [2 x i8] c" \00"

define i1 @xor(i1 %_x4709, i1 %_y4707) {
  %_x4710 = alloca i1
  %_y4708 = alloca i1
  store i1 %_x4709, i1* %_x4710
  store i1 %_y4707, i1* %_y4708
  %_x4711 = load i1, i1* %_x4710
  %_y4712 = load i1, i1* %_y4708
  %_unop4713 = icmp eq i1 %_y4712, 0
  %_bop4714 = and i1 %_x4711, %_unop4713
  %_x4715 = load i1, i1* %_x4710
  %_unop4716 = icmp eq i1 %_x4715, 0
  %_y4717 = load i1, i1* %_y4708
  %_bop4718 = and i1 %_unop4716, %_y4717
  %_bop4719 = or i1 %_bop4714, %_bop4718
  ret i1 %_bop4719
}

define i8* @string_of_bool(i1 %_b4697) {
  %_b4698 = alloca i1
  store i1 %_b4697, i1* %_b4698
  %_b4699 = load i1, i1* %_b4698
  br i1 %_b4699, label %_then4706, label %_else4705
_then4706:
  %_str4700 = getelementptr [2 x i8], [2 x i8]* @_str_arr4701, i32 0, i32 0
  ret i8* %_str4700
_else4705:
  %_str4702 = getelementptr [2 x i8], [2 x i8]* @_str_arr4703, i32 0, i32 0
  ret i8* %_str4702
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4679, i64 %_len4677) {
  %_lfsr_register4680 = alloca { i64, [0 x i1] }*
  %_len4678 = alloca i64
  %_i4681 = alloca i64
  store { i64, [0 x i1] }* %_lfsr_register4679, { i64, [0 x i1] }** %_lfsr_register4680
  store i64 %_len4677, i64* %_len4678
  store i64 0, i64* %_i4681
  br label %_cond4687
_cond4687:
  %_i4682 = load i64, i64* %_i4681
  %_len4683 = load i64, i64* %_len4678
  %_bop4684 = icmp slt i64 %_i4682, %_len4683
  br i1 %_bop4684, label %_body4686, label %_post4685
_body4686:
  %_lfsr_register4688 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4680
  %_i4689 = load i64, i64* %_i4681
  %_index_ptr4691 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4688, i32 0, i32 1, i64 %_i4689
  %_index4692 = load i1, i1* %_index_ptr4691
  %_result4693 = call i8* @string_of_bool(i1 %_index4692)
  call void @print_string(i8* %_result4693)
  %_i4695 = load i64, i64* %_i4681
  %_bop4696 = add i64 %_i4695, 1
  store i64 %_bop4696, i64* %_i4681
  br label %_cond4687
_post4685:
  ret void
}

define i64 @program(i64 %_argc4596, { i64, [0 x i8*] }* %_argv4594) {
  %_argc4597 = alloca i64
  %_argv4595 = alloca { i64, [0 x i8*] }*
  %_lfsr_register4601 = alloca { i64, [0 x i1] }*
  %_i4602 = alloca i64
  %_i4620 = alloca i64
  %_new_first4640 = alloca i1
  %_j4643 = alloca i64
  store i64 %_argc4596, i64* %_argc4597
  store { i64, [0 x i8*] }* %_argv4594, { i64, [0 x i8*] }** %_argv4595
  %_lfsr_length4598 = load i64, i64* @lfsr_length
  %_raw_array4599 = call i64* @oat_alloc_array(i64 %_lfsr_length4598)
  %_array4600 = bitcast i64* %_raw_array4599 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4600, { i64, [0 x i1] }** %_lfsr_register4601
  store i64 0, i64* %_i4602
  br label %_cond4608
_cond4608:
  %_i4603 = load i64, i64* %_i4602
  %_lfsr_length4604 = load i64, i64* @lfsr_length
  %_bop4605 = icmp slt i64 %_i4603, %_lfsr_length4604
  br i1 %_bop4605, label %_body4607, label %_post4606
_body4607:
  %_lfsr_register4609 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  %_i4610 = load i64, i64* %_i4602
  %_index_ptr4612 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4609, i32 0, i32 1, i64 %_i4610
  %_lfsr_init_values4613 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_i4614 = load i64, i64* %_i4602
  %_index_ptr4616 = getelementptr { i64, [4 x i1] }, { i64, [4 x i1] }* %_lfsr_init_values4613, i32 0, i32 1, i64 %_i4614
  %_index4617 = load i1, i1* %_index_ptr4616
  store i1 %_index4617, i1* %_index_ptr4612
  %_i4618 = load i64, i64* %_i4602
  %_bop4619 = add i64 %_i4618, 1
  store i64 %_bop4619, i64* %_i4602
  br label %_cond4608
_post4606:
  store i64 0, i64* %_i4620
  br label %_cond4626
_cond4626:
  %_i4621 = load i64, i64* %_i4620
  %_lfsr_iterations4622 = load i64, i64* @lfsr_iterations
  %_bop4623 = icmp slt i64 %_i4621, %_lfsr_iterations4622
  br i1 %_bop4623, label %_body4625, label %_post4624
_body4625:
  %_lfsr_register4627 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  %_lfsr_length4628 = load i64, i64* @lfsr_length
  %_bop4629 = sub i64 %_lfsr_length4628, 2
  %_index_ptr4631 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4627, i32 0, i32 1, i64 %_bop4629
  %_index4632 = load i1, i1* %_index_ptr4631
  %_lfsr_register4633 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  %_lfsr_length4634 = load i64, i64* @lfsr_length
  %_bop4635 = sub i64 %_lfsr_length4634, 1
  %_index_ptr4637 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4633, i32 0, i32 1, i64 %_bop4635
  %_index4638 = load i1, i1* %_index_ptr4637
  %_result4639 = call i1 @xor(i1 %_index4638, i1 %_index4632)
  store i1 %_result4639, i1* %_new_first4640
  %_lfsr_length4641 = load i64, i64* @lfsr_length
  %_bop4642 = sub i64 %_lfsr_length4641, 1
  store i64 %_bop4642, i64* %_j4643
  br label %_cond4648
_cond4648:
  %_j4644 = load i64, i64* %_j4643
  %_bop4645 = icmp sgt i64 %_j4644, 0
  br i1 %_bop4645, label %_body4647, label %_post4646
_body4647:
  %_lfsr_register4649 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  %_j4650 = load i64, i64* %_j4643
  %_index_ptr4652 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4649, i32 0, i32 1, i64 %_j4650
  %_lfsr_register4653 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  %_j4654 = load i64, i64* %_j4643
  %_bop4655 = sub i64 %_j4654, 1
  %_index_ptr4657 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4653, i32 0, i32 1, i64 %_bop4655
  %_index4658 = load i1, i1* %_index_ptr4657
  store i1 %_index4658, i1* %_index_ptr4652
  %_j4659 = load i64, i64* %_j4643
  %_bop4660 = sub i64 %_j4659, 1
  store i64 %_bop4660, i64* %_j4643
  br label %_cond4648
_post4646:
  %_lfsr_register4661 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  %_index_ptr4663 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4661, i32 0, i32 1, i32 0
  %_new_first4664 = load i1, i1* %_new_first4640
  store i1 %_new_first4664, i1* %_index_ptr4663
  %_i4665 = load i64, i64* %_i4620
  %_bop4666 = add i64 %_i4665, 1
  store i64 %_bop4666, i64* %_i4620
  br label %_cond4626
_post4624:
  %_lfsr_length4667 = load i64, i64* @lfsr_length
  %_lfsr_init_values4668 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_cast4669 = bitcast { i64, [4 x i1] }* %_lfsr_init_values4668 to { i64, [0 x i1] }*
  call void @print_lfsr({ i64, [0 x i1] }* %_cast4669, i64 %_lfsr_length4667)
  %_str4671 = getelementptr [2 x i8], [2 x i8]* @_str_arr4672, i32 0, i32 0
  call void @print_string(i8* %_str4671)
  %_lfsr_length4674 = load i64, i64* @lfsr_length
  %_lfsr_register4675 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4601
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4675, i64 %_lfsr_length4674)
  ret i64 0
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
