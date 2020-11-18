; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] }* @_global_arr4723
@_global_arr4723 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_constant4722 = global i64 0
@_str_arr4642 = global [1 x i8] c"\00"
@_str_arr4619 = global [7 x i8] c"TOMATO\00"
@_str_arr4622 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %_i4634, i64 %_j4632, i8* %_a4630, i8* %_b4628) {
  %_i4635 = alloca i64
  %_j4633 = alloca i64
  %_a4631 = alloca i8*
  %_b4629 = alloca i8*
  %_a_chars4648 = alloca { i64, [0 x i64] }*
  %_b_chars4651 = alloca { i64, [0 x i64] }*
  %_last_char_a4657 = alloca i64
  %_last_char_b4663 = alloca i64
  %_prev_lcs4674 = alloca i8*
  %_next_char4686 = alloca i8*
  %_left_lcs4699 = alloca i8*
  %_right_lcs4706 = alloca i8*
  %_left_len4709 = alloca i64
  %_right_len4712 = alloca i64
  store i64 %_i4634, i64* %_i4635
  store i64 %_j4632, i64* %_j4633
  store i8* %_a4630, i8** %_a4631
  store i8* %_b4628, i8** %_b4629
  %_i4636 = load i64, i64* %_i4635
  %_bop4637 = icmp slt i64 %_i4636, 0
  %_j4638 = load i64, i64* %_j4633
  %_bop4639 = icmp slt i64 %_j4638, 0
  %_bop4640 = or i1 %_bop4637, %_bop4639
  br i1 %_bop4640, label %_then4645, label %_else4644
_then4645:
  %_str4641 = getelementptr [1 x i8], [1 x i8]* @_str_arr4642, i32 0, i32 0
  ret i8* %_str4641
_else4644:
  br label %_merge4643
_merge4643:
  %_a4646 = load i8*, i8** %_a4631
  %_result4647 = call { i64, [0 x i64] }* @array_of_string(i8* %_a4646)
  store { i64, [0 x i64] }* %_result4647, { i64, [0 x i64] }** %_a_chars4648
  %_b4649 = load i8*, i8** %_b4629
  %_result4650 = call { i64, [0 x i64] }* @array_of_string(i8* %_b4649)
  store { i64, [0 x i64] }* %_result4650, { i64, [0 x i64] }** %_b_chars4651
  %_a_chars4652 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4648
  %_i4653 = load i64, i64* %_i4635
  %_index_ptr4655 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4652, i32 0, i32 1, i64 %_i4653
  %_index4656 = load i64, i64* %_index_ptr4655
  store i64 %_index4656, i64* %_last_char_a4657
  %_b_chars4658 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4651
  %_j4659 = load i64, i64* %_j4633
  %_index_ptr4661 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars4658, i32 0, i32 1, i64 %_j4659
  %_index4662 = load i64, i64* %_index_ptr4661
  store i64 %_index4662, i64* %_last_char_b4663
  %_last_char_a4664 = load i64, i64* %_last_char_a4657
  %_last_char_b4665 = load i64, i64* %_last_char_b4663
  %_bop4666 = icmp eq i64 %_last_char_a4664, %_last_char_b4665
  br i1 %_bop4666, label %_then4692, label %_else4691
_then4692:
  %_b4667 = load i8*, i8** %_b4629
  %_a4668 = load i8*, i8** %_a4631
  %_j4669 = load i64, i64* %_j4633
  %_bop4670 = sub i64 %_j4669, 1
  %_i4671 = load i64, i64* %_i4635
  %_bop4672 = sub i64 %_i4671, 1
  %_result4673 = call i8* @lcs(i64 %_bop4672, i64 %_bop4670, i8* %_a4668, i8* %_b4667)
  store i8* %_result4673, i8** %_prev_lcs4674
  %_buf4675 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_index_ptr4677 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_buf4675, i32 0, i32 1, i32 0
  %_a_chars4678 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4648
  %_i4679 = load i64, i64* %_i4635
  %_index_ptr4681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4678, i32 0, i32 1, i64 %_i4679
  %_index4682 = load i64, i64* %_index_ptr4681
  store i64 %_index4682, i64* %_index_ptr4677
  %_buf4683 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_cast4684 = bitcast { i64, [1 x i64] }* %_buf4683 to { i64, [0 x i64] }*
  %_result4685 = call i8* @string_of_array({ i64, [0 x i64] }* %_cast4684)
  store i8* %_result4685, i8** %_next_char4686
  %_next_char4687 = load i8*, i8** %_next_char4686
  %_prev_lcs4688 = load i8*, i8** %_prev_lcs4674
  %_result4689 = call i8* @string_cat(i8* %_prev_lcs4688, i8* %_next_char4687)
  ret i8* %_result4689
_else4691:
  br label %_merge4690
_merge4690:
  %_b4693 = load i8*, i8** %_b4629
  %_a4694 = load i8*, i8** %_a4631
  %_j4695 = load i64, i64* %_j4633
  %_bop4696 = sub i64 %_j4695, 1
  %_i4697 = load i64, i64* %_i4635
  %_result4698 = call i8* @lcs(i64 %_i4697, i64 %_bop4696, i8* %_a4694, i8* %_b4693)
  store i8* %_result4698, i8** %_left_lcs4699
  %_b4700 = load i8*, i8** %_b4629
  %_a4701 = load i8*, i8** %_a4631
  %_j4702 = load i64, i64* %_j4633
  %_i4703 = load i64, i64* %_i4635
  %_bop4704 = sub i64 %_i4703, 1
  %_result4705 = call i8* @lcs(i64 %_bop4704, i64 %_j4702, i8* %_a4701, i8* %_b4700)
  store i8* %_result4705, i8** %_right_lcs4706
  %_left_lcs4707 = load i8*, i8** %_left_lcs4699
  %_result4708 = call i64 @length_of_string(i8* %_left_lcs4707)
  store i64 %_result4708, i64* %_left_len4709
  %_right_lcs4710 = load i8*, i8** %_right_lcs4706
  %_result4711 = call i64 @length_of_string(i8* %_right_lcs4710)
  store i64 %_result4711, i64* %_right_len4712
  %_left_len4713 = load i64, i64* %_left_len4709
  %_right_len4714 = load i64, i64* %_right_len4712
  %_bop4715 = icmp slt i64 %_left_len4713, %_right_len4714
  br i1 %_bop4715, label %_then4720, label %_else4719
_then4720:
  %_right_lcs4716 = load i8*, i8** %_right_lcs4706
  ret i8* %_right_lcs4716
_else4719:
  %_left_lcs4717 = load i8*, i8** %_left_lcs4699
  ret i8* %_left_lcs4717
}

define i64 @program(i64 %_argc4616, { i64, [0 x i8*] }* %_argv4614) {
  %_argc4617 = alloca i64
  %_argv4615 = alloca { i64, [0 x i8*] }*
  %_tomato4620 = alloca i8*
  %_orating4623 = alloca i8*
  store i64 %_argc4616, i64* %_argc4617
  store { i64, [0 x i8*] }* %_argv4614, { i64, [0 x i8*] }** %_argv4615
  %_str4618 = getelementptr [7 x i8], [7 x i8]* @_str_arr4619, i32 0, i32 0
  store i8* %_str4618, i8** %_tomato4620
  %_str4621 = getelementptr [8 x i8], [8 x i8]* @_str_arr4622, i32 0, i32 0
  store i8* %_str4621, i8** %_orating4623
  %_orating4624 = load i8*, i8** %_orating4623
  %_tomato4625 = load i8*, i8** %_tomato4620
  %_result4626 = call i8* @lcs(i64 5, i64 6, i8* %_tomato4625, i8* %_orating4624)
  call void @print_string(i8* %_result4626)
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
