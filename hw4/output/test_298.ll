; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %_a4766, i64 %_len4764) {
  %_a4767 = alloca { i64, [0 x i64] }*
  %_len4765 = alloca i64
  %_i4768 = alloca i64
  %_j4769 = alloca i64
  %_tmp4797 = alloca i64
  store { i64, [0 x i64] }* %_a4766, { i64, [0 x i64] }** %_a4767
  store i64 %_len4764, i64* %_len4765
  store i64 1, i64* %_i4768
  store i64 2, i64* %_j4769
  br label %_cond4775
_cond4775:
  %_i4770 = load i64, i64* %_i4768
  %_len4771 = load i64, i64* %_len4765
  %_bop4772 = icmp slt i64 %_i4770, %_len4771
  br i1 %_bop4772, label %_body4774, label %_post4773
_body4774:
  %_a4776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4767
  %_i4777 = load i64, i64* %_i4768
  %_bop4778 = sub i64 %_i4777, 1
  %_index_ptr4780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4776, i32 0, i32 1, i64 %_bop4778
  %_index4781 = load i64, i64* %_index_ptr4780
  %_a4782 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4767
  %_i4783 = load i64, i64* %_i4768
  %_index_ptr4785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4782, i32 0, i32 1, i64 %_i4783
  %_index4786 = load i64, i64* %_index_ptr4785
  %_bop4787 = icmp sle i64 %_index4781, %_index4786
  br i1 %_bop4787, label %_then4825, label %_else4824
_then4825:
  %_j4788 = load i64, i64* %_j4769
  store i64 %_j4788, i64* %_i4768
  %_j4789 = load i64, i64* %_j4769
  %_bop4790 = add i64 %_j4789, 1
  store i64 %_bop4790, i64* %_j4769
  br label %_merge4823
_else4824:
  %_a4791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4767
  %_i4792 = load i64, i64* %_i4768
  %_bop4793 = sub i64 %_i4792, 1
  %_index_ptr4795 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4791, i32 0, i32 1, i64 %_bop4793
  %_index4796 = load i64, i64* %_index_ptr4795
  store i64 %_index4796, i64* %_tmp4797
  %_a4798 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4767
  %_i4799 = load i64, i64* %_i4768
  %_bop4800 = sub i64 %_i4799, 1
  %_index_ptr4802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4798, i32 0, i32 1, i64 %_bop4800
  %_a4803 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4767
  %_i4804 = load i64, i64* %_i4768
  %_index_ptr4806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4803, i32 0, i32 1, i64 %_i4804
  %_index4807 = load i64, i64* %_index_ptr4806
  store i64 %_index4807, i64* %_index_ptr4802
  %_a4808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4767
  %_i4809 = load i64, i64* %_i4768
  %_index_ptr4811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4808, i32 0, i32 1, i64 %_i4809
  %_tmp4812 = load i64, i64* %_tmp4797
  store i64 %_tmp4812, i64* %_index_ptr4811
  %_i4813 = load i64, i64* %_i4768
  %_bop4814 = sub i64 %_i4813, 1
  store i64 %_bop4814, i64* %_i4768
  %_i4815 = load i64, i64* %_i4768
  %_bop4816 = icmp eq i64 %_i4815, 0
  br i1 %_bop4816, label %_then4822, label %_else4821
_then4822:
  %_j4817 = load i64, i64* %_j4769
  store i64 %_j4817, i64* %_i4768
  %_j4818 = load i64, i64* %_j4769
  %_bop4819 = add i64 %_j4818, 1
  store i64 %_bop4819, i64* %_j4769
  br label %_merge4820
_else4821:
  br label %_merge4820
_merge4820:
  br label %_merge4823
_merge4823:
  br label %_cond4775
_post4773:
  ret void
}

define i64 @program(i64 %_argc4733, { i64, [0 x i8*] }* %_argv4731) {
  %_argc4734 = alloca i64
  %_argv4732 = alloca { i64, [0 x i8*] }*
  %_arr4745 = alloca { i64, [0 x i64] }*
  %_len4746 = alloca i64
  %_i4750 = alloca i64
  store i64 %_argc4733, i64* %_argc4734
  store { i64, [0 x i8*] }* %_argv4731, { i64, [0 x i8*] }** %_argv4732
  %_raw_array4735 = call i64* @oat_alloc_array(i64 8)
  %_array4736 = bitcast i64* %_raw_array4735 to { i64, [0 x i64] }*
  %_ind4737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind4737
  %_ind4738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind4738
  %_ind4739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4739
  %_ind4740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4740
  %_ind4741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind4741
  %_ind4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind4742
  %_ind4743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind4743
  %_ind4744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4736, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind4744
  store { i64, [0 x i64] }* %_array4736, { i64, [0 x i64] }** %_arr4745
  store i64 8, i64* %_len4746
  %_len4747 = load i64, i64* %_len4746
  %_arr4748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4745
  call void @gnomeSort({ i64, [0 x i64] }* %_arr4748, i64 %_len4747)
  store i64 0, i64* %_i4750
  br label %_cond4755
_cond4755:
  %_i4751 = load i64, i64* %_i4750
  %_bop4752 = icmp slt i64 %_i4751, 8
  br i1 %_bop4752, label %_body4754, label %_post4753
_body4754:
  %_arr4756 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4745
  %_i4757 = load i64, i64* %_i4750
  %_index_ptr4759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4756, i32 0, i32 1, i64 %_i4757
  %_index4760 = load i64, i64* %_index_ptr4759
  call void @print_int(i64 %_index4760)
  %_i4762 = load i64, i64* %_i4750
  %_bop4763 = add i64 %_i4762, 1
  store i64 %_bop4763, i64* %_i4750
  br label %_cond4755
_post4753:
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
