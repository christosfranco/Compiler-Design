; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial4781, i64 %_len4779, i64 %_insertee4777) {
  %_partial4782 = alloca { i64, [0 x i64] }*
  %_len4780 = alloca i64
  %_insertee4778 = alloca i64
  %_inserted4787 = alloca { i64, [0 x i64] }*
  %_i4788 = alloca i64
  %_not_yet_inserted4803 = alloca i1
  %_i4817 = alloca i64
  store { i64, [0 x i64] }* %_partial4781, { i64, [0 x i64] }** %_partial4782
  store i64 %_len4779, i64* %_len4780
  store i64 %_insertee4777, i64* %_insertee4778
  %_len4783 = load i64, i64* %_len4780
  %_bop4784 = add i64 %_len4783, 1
  %_raw_array4785 = call i64* @oat_alloc_array(i64 %_bop4784)
  %_array4786 = bitcast i64* %_raw_array4785 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4786, { i64, [0 x i64] }** %_inserted4787
  store i64 0, i64* %_i4788
  br label %_cond4795
_cond4795:
  %_i4789 = load i64, i64* %_i4788
  %_len4790 = load i64, i64* %_len4780
  %_bop4791 = add i64 %_len4790, 1
  %_bop4792 = icmp slt i64 %_i4789, %_bop4791
  br i1 %_bop4792, label %_body4794, label %_post4793
_body4794:
  %_inserted4796 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  %_i4797 = load i64, i64* %_i4788
  %_index_ptr4799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted4796, i32 0, i32 1, i64 %_i4797
  %_unop4800 = sub i64 0, 1
  store i64 %_unop4800, i64* %_index_ptr4799
  %_i4801 = load i64, i64* %_i4788
  %_bop4802 = add i64 %_i4801, 1
  store i64 %_bop4802, i64* %_i4788
  br label %_cond4795
_post4793:
  store i1 1, i1* %_not_yet_inserted4803
  %_insertee4804 = load i64, i64* %_insertee4778
  %_partial4805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4782
  %_index_ptr4807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial4805, i32 0, i32 1, i32 0
  %_index4808 = load i64, i64* %_index_ptr4807
  %_bop4809 = icmp slt i64 %_insertee4804, %_index4808
  br i1 %_bop4809, label %_then4816, label %_else4815
_then4816:
  store i1 0, i1* %_not_yet_inserted4803
  %_inserted4810 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  %_index_ptr4812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted4810, i32 0, i32 1, i32 0
  %_insertee4813 = load i64, i64* %_insertee4778
  store i64 %_insertee4813, i64* %_index_ptr4812
  br label %_merge4814
_else4815:
  br label %_merge4814
_merge4814:
  store i64 0, i64* %_i4817
  br label %_cond4823
_cond4823:
  %_i4818 = load i64, i64* %_i4817
  %_len4819 = load i64, i64* %_len4780
  %_bop4820 = icmp slt i64 %_i4818, %_len4819
  br i1 %_bop4820, label %_body4822, label %_post4821
_body4822:
  %_not_yet_inserted4824 = load i1, i1* %_not_yet_inserted4803
  br i1 %_not_yet_inserted4824, label %_then4871, label %_else4870
_then4871:
  %_insertee4825 = load i64, i64* %_insertee4778
  %_partial4826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4782
  %_i4827 = load i64, i64* %_i4817
  %_index_ptr4829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial4826, i32 0, i32 1, i64 %_i4827
  %_index4830 = load i64, i64* %_index_ptr4829
  %_bop4831 = icmp sgt i64 %_insertee4825, %_index4830
  br i1 %_bop4831, label %_then4858, label %_else4857
_then4858:
  store i1 0, i1* %_not_yet_inserted4803
  %_inserted4832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  %_i4833 = load i64, i64* %_i4817
  %_bop4834 = add i64 %_i4833, 1
  %_index_ptr4836 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted4832, i32 0, i32 1, i64 %_bop4834
  %_insertee4837 = load i64, i64* %_insertee4778
  store i64 %_insertee4837, i64* %_index_ptr4836
  %_inserted4838 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  %_i4839 = load i64, i64* %_i4817
  %_index_ptr4841 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted4838, i32 0, i32 1, i64 %_i4839
  %_partial4842 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4782
  %_i4843 = load i64, i64* %_i4817
  %_index_ptr4845 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial4842, i32 0, i32 1, i64 %_i4843
  %_index4846 = load i64, i64* %_index_ptr4845
  store i64 %_index4846, i64* %_index_ptr4841
  br label %_merge4856
_else4857:
  %_inserted4847 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  %_i4848 = load i64, i64* %_i4817
  %_index_ptr4850 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted4847, i32 0, i32 1, i64 %_i4848
  %_partial4851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4782
  %_i4852 = load i64, i64* %_i4817
  %_index_ptr4854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial4851, i32 0, i32 1, i64 %_i4852
  %_index4855 = load i64, i64* %_index_ptr4854
  store i64 %_index4855, i64* %_index_ptr4850
  br label %_merge4856
_merge4856:
  br label %_merge4869
_else4870:
  %_inserted4859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  %_i4860 = load i64, i64* %_i4817
  %_bop4861 = add i64 %_i4860, 1
  %_index_ptr4863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted4859, i32 0, i32 1, i64 %_bop4861
  %_partial4864 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial4782
  %_i4865 = load i64, i64* %_i4817
  %_index_ptr4867 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial4864, i32 0, i32 1, i64 %_i4865
  %_index4868 = load i64, i64* %_index_ptr4867
  store i64 %_index4868, i64* %_index_ptr4863
  br label %_merge4869
_merge4869:
  %_i4872 = load i64, i64* %_i4817
  %_bop4873 = add i64 %_i4872, 1
  store i64 %_bop4873, i64* %_i4817
  br label %_cond4823
_post4821:
  %_inserted4874 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted4787
  ret { i64, [0 x i64] }* %_inserted4874
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted4746, i64 %_len4744) {
  %_unsorted4747 = alloca { i64, [0 x i64] }*
  %_len4745 = alloca i64
  %_out4751 = alloca { i64, [0 x i64] }*
  %_i4759 = alloca i64
  store { i64, [0 x i64] }* %_unsorted4746, { i64, [0 x i64] }** %_unsorted4747
  store i64 %_len4744, i64* %_len4745
  %_raw_array4748 = call i64* @oat_alloc_array(i64 1)
  %_array4749 = bitcast i64* %_raw_array4748 to { i64, [0 x i64] }*
  %_ind4750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4749, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4750
  store { i64, [0 x i64] }* %_array4749, { i64, [0 x i64] }** %_out4751
  %_out4752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4751
  %_index_ptr4754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4752, i32 0, i32 1, i32 0
  %_unsorted4755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4747
  %_index_ptr4757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted4755, i32 0, i32 1, i32 0
  %_index4758 = load i64, i64* %_index_ptr4757
  store i64 %_index4758, i64* %_index_ptr4754
  store i64 1, i64* %_i4759
  br label %_cond4765
_cond4765:
  %_i4760 = load i64, i64* %_i4759
  %_len4761 = load i64, i64* %_len4745
  %_bop4762 = icmp slt i64 %_i4760, %_len4761
  br i1 %_bop4762, label %_body4764, label %_post4763
_body4764:
  %_unsorted4766 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4747
  %_i4767 = load i64, i64* %_i4759
  %_index_ptr4769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted4766, i32 0, i32 1, i64 %_i4767
  %_index4770 = load i64, i64* %_index_ptr4769
  %_i4771 = load i64, i64* %_i4759
  %_out4772 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4751
  %_result4773 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out4772, i64 %_i4771, i64 %_index4770)
  store { i64, [0 x i64] }* %_result4773, { i64, [0 x i64] }** %_out4751
  %_i4774 = load i64, i64* %_i4759
  %_bop4775 = add i64 %_i4774, 1
  store i64 %_bop4775, i64* %_i4759
  br label %_cond4765
_post4763:
  %_out4776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4751
  ret { i64, [0 x i64] }* %_out4776
}

define i64 @program(i64 %_argc4726, { i64, [0 x i8*] }* %_argv4724) {
  %_argc4727 = alloca i64
  %_argv4725 = alloca { i64, [0 x i8*] }*
  %_array4736 = alloca { i64, [0 x i64] }*
  %_result4739 = alloca { i64, [0 x i64] }*
  store i64 %_argc4726, i64* %_argc4727
  store { i64, [0 x i8*] }* %_argv4724, { i64, [0 x i8*] }** %_argv4725
  %_raw_array4728 = call i64* @oat_alloc_array(i64 6)
  %_array4729 = bitcast i64* %_raw_array4728 to { i64, [0 x i64] }*
  %_ind4730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind4730
  %_ind4731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind4731
  %_ind4732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind4732
  %_ind4733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind4733
  %_ind4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind4734
  %_ind4735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4729, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind4735
  store { i64, [0 x i64] }* %_array4729, { i64, [0 x i64] }** %_array4736
  %_array4737 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4736
  %_result4738 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array4737, i64 6)
  store { i64, [0 x i64] }* %_result4738, { i64, [0 x i64] }** %_result4739
  %_result4740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result4739
  %_index_ptr4742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result4740, i32 0, i32 1, i32 5
  %_index4743 = load i64, i64* %_index_ptr4742
  ret i64 %_index4743
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
