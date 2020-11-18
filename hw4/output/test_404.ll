; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@_constant4730 = global i64 5
@lfsr_length = global i64 4
@_constant4729 = global i64 4
@lfsr_init_values = global { i64, [4 x i1] }* @_global_arr4728
@_global_arr4728 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_constant4727 = global i1 1
@_constant4726 = global i1 0
@_constant4725 = global i1 1
@_constant4724 = global i1 0
@_str_arr4704 = global [2 x i8] c"T\00"
@_str_arr4706 = global [2 x i8] c"F\00"
@_str_arr4675 = global [2 x i8] c" \00"

define i1 @xor(i1 %_x4712, i1 %_y4710) {
  %_x4713 = alloca i1
  %_y4711 = alloca i1
  store i1 %_x4712, i1* %_x4713
  store i1 %_y4710, i1* %_y4711
  %_x4714 = load i1, i1* %_x4713
  %_y4715 = load i1, i1* %_y4711
  %_unop4716 = icmp eq i1 %_y4715, 0
  %_bop4717 = and i1 %_x4714, %_unop4716
  %_x4718 = load i1, i1* %_x4713
  %_unop4719 = icmp eq i1 %_x4718, 0
  %_y4720 = load i1, i1* %_y4711
  %_bop4721 = and i1 %_unop4719, %_y4720
  %_bop4722 = or i1 %_bop4717, %_bop4721
  ret i1 %_bop4722
}

define i8* @string_of_bool(i1 %_b4700) {
  %_b4701 = alloca i1
  store i1 %_b4700, i1* %_b4701
  %_b4702 = load i1, i1* %_b4701
  br i1 %_b4702, label %_then4709, label %_else4708
_then4709:
  %_str4703 = getelementptr [2 x i8], [2 x i8]* @_str_arr4704, i32 0, i32 0
  ret i8* %_str4703
_else4708:
  %_str4705 = getelementptr [2 x i8], [2 x i8]* @_str_arr4706, i32 0, i32 0
  ret i8* %_str4705
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4682, i64 %_len4680) {
  %_lfsr_register4683 = alloca { i64, [0 x i1] }*
  %_len4681 = alloca i64
  %_i4684 = alloca i64
  store { i64, [0 x i1] }* %_lfsr_register4682, { i64, [0 x i1] }** %_lfsr_register4683
  store i64 %_len4680, i64* %_len4681
  store i64 0, i64* %_i4684
  br label %_cond4690
_cond4690:
  %_i4685 = load i64, i64* %_i4684
  %_len4686 = load i64, i64* %_len4681
  %_bop4687 = icmp slt i64 %_i4685, %_len4686
  br i1 %_bop4687, label %_body4689, label %_post4688
_body4689:
  %_lfsr_register4691 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4683
  %_i4692 = load i64, i64* %_i4684
  %_index_ptr4694 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4691, i32 0, i32 1, i64 %_i4692
  %_index4695 = load i1, i1* %_index_ptr4694
  %_result4696 = call i8* @string_of_bool(i1 %_index4695)
  call void @print_string(i8* %_result4696)
  %_i4698 = load i64, i64* %_i4684
  %_bop4699 = add i64 %_i4698, 1
  store i64 %_bop4699, i64* %_i4684
  br label %_cond4690
_post4688:
  ret void
}

define i64 @program(i64 %_argc4599, { i64, [0 x i8*] }* %_argv4597) {
  %_argc4600 = alloca i64
  %_argv4598 = alloca { i64, [0 x i8*] }*
  %_lfsr_register4604 = alloca { i64, [0 x i1] }*
  %_i4605 = alloca i64
  %_i4623 = alloca i64
  %_new_first4643 = alloca i1
  %_j4646 = alloca i64
  store i64 %_argc4599, i64* %_argc4600
  store { i64, [0 x i8*] }* %_argv4597, { i64, [0 x i8*] }** %_argv4598
  %_lfsr_length4601 = load i64, i64* @lfsr_length
  %_raw_array4602 = call i64* @oat_alloc_array(i64 %_lfsr_length4601)
  %_array4603 = bitcast i64* %_raw_array4602 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4603, { i64, [0 x i1] }** %_lfsr_register4604
  store i64 0, i64* %_i4605
  br label %_cond4611
_cond4611:
  %_i4606 = load i64, i64* %_i4605
  %_lfsr_length4607 = load i64, i64* @lfsr_length
  %_bop4608 = icmp slt i64 %_i4606, %_lfsr_length4607
  br i1 %_bop4608, label %_body4610, label %_post4609
_body4610:
  %_lfsr_register4612 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  %_i4613 = load i64, i64* %_i4605
  %_index_ptr4615 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4612, i32 0, i32 1, i64 %_i4613
  %_lfsr_init_values4616 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_i4617 = load i64, i64* %_i4605
  %_index_ptr4619 = getelementptr { i64, [4 x i1] }, { i64, [4 x i1] }* %_lfsr_init_values4616, i32 0, i32 1, i64 %_i4617
  %_index4620 = load i1, i1* %_index_ptr4619
  store i1 %_index4620, i1* %_index_ptr4615
  %_i4621 = load i64, i64* %_i4605
  %_bop4622 = add i64 %_i4621, 1
  store i64 %_bop4622, i64* %_i4605
  br label %_cond4611
_post4609:
  store i64 0, i64* %_i4623
  br label %_cond4629
_cond4629:
  %_i4624 = load i64, i64* %_i4623
  %_lfsr_iterations4625 = load i64, i64* @lfsr_iterations
  %_bop4626 = icmp slt i64 %_i4624, %_lfsr_iterations4625
  br i1 %_bop4626, label %_body4628, label %_post4627
_body4628:
  %_lfsr_register4630 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  %_lfsr_length4631 = load i64, i64* @lfsr_length
  %_bop4632 = sub i64 %_lfsr_length4631, 2
  %_index_ptr4634 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4630, i32 0, i32 1, i64 %_bop4632
  %_index4635 = load i1, i1* %_index_ptr4634
  %_lfsr_register4636 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  %_lfsr_length4637 = load i64, i64* @lfsr_length
  %_bop4638 = sub i64 %_lfsr_length4637, 1
  %_index_ptr4640 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4636, i32 0, i32 1, i64 %_bop4638
  %_index4641 = load i1, i1* %_index_ptr4640
  %_result4642 = call i1 @xor(i1 %_index4641, i1 %_index4635)
  store i1 %_result4642, i1* %_new_first4643
  %_lfsr_length4644 = load i64, i64* @lfsr_length
  %_bop4645 = sub i64 %_lfsr_length4644, 1
  store i64 %_bop4645, i64* %_j4646
  br label %_cond4651
_cond4651:
  %_j4647 = load i64, i64* %_j4646
  %_bop4648 = icmp sgt i64 %_j4647, 0
  br i1 %_bop4648, label %_body4650, label %_post4649
_body4650:
  %_lfsr_register4652 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  %_j4653 = load i64, i64* %_j4646
  %_index_ptr4655 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4652, i32 0, i32 1, i64 %_j4653
  %_lfsr_register4656 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  %_j4657 = load i64, i64* %_j4646
  %_bop4658 = sub i64 %_j4657, 1
  %_index_ptr4660 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4656, i32 0, i32 1, i64 %_bop4658
  %_index4661 = load i1, i1* %_index_ptr4660
  store i1 %_index4661, i1* %_index_ptr4655
  %_j4662 = load i64, i64* %_j4646
  %_bop4663 = sub i64 %_j4662, 1
  store i64 %_bop4663, i64* %_j4646
  br label %_cond4651
_post4649:
  %_lfsr_register4664 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  %_index_ptr4666 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4664, i32 0, i32 1, i32 0
  %_new_first4667 = load i1, i1* %_new_first4643
  store i1 %_new_first4667, i1* %_index_ptr4666
  %_i4668 = load i64, i64* %_i4623
  %_bop4669 = add i64 %_i4668, 1
  store i64 %_bop4669, i64* %_i4623
  br label %_cond4629
_post4627:
  %_lfsr_length4670 = load i64, i64* @lfsr_length
  %_lfsr_init_values4671 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_cast4672 = bitcast { i64, [4 x i1] }* %_lfsr_init_values4671 to { i64, [0 x i1] }*
  call void @print_lfsr({ i64, [0 x i1] }* %_cast4672, i64 %_lfsr_length4670)
  %_str4674 = getelementptr [2 x i8], [2 x i8]* @_str_arr4675, i32 0, i32 0
  call void @print_string(i8* %_str4674)
  %_lfsr_length4677 = load i64, i64* @lfsr_length
  %_lfsr_register4678 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4604
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4678, i64 %_lfsr_length4677)
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
