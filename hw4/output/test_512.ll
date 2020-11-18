; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %_a4763, i64 %_len4761) {
  %_a4764 = alloca { i64, [0 x i64] }*
  %_len4762 = alloca i64
  %_i4765 = alloca i64
  %_j4766 = alloca i64
  %_tmp4794 = alloca i64
  store { i64, [0 x i64] }* %_a4763, { i64, [0 x i64] }** %_a4764
  store i64 %_len4761, i64* %_len4762
  store i64 1, i64* %_i4765
  store i64 2, i64* %_j4766
  br label %_cond4772
_cond4772:
  %_i4767 = load i64, i64* %_i4765
  %_len4768 = load i64, i64* %_len4762
  %_bop4769 = icmp slt i64 %_i4767, %_len4768
  br i1 %_bop4769, label %_body4771, label %_post4770
_body4771:
  %_a4773 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4764
  %_i4774 = load i64, i64* %_i4765
  %_bop4775 = sub i64 %_i4774, 1
  %_index_ptr4777 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4773, i32 0, i32 1, i64 %_bop4775
  %_index4778 = load i64, i64* %_index_ptr4777
  %_a4779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4764
  %_i4780 = load i64, i64* %_i4765
  %_index_ptr4782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4779, i32 0, i32 1, i64 %_i4780
  %_index4783 = load i64, i64* %_index_ptr4782
  %_bop4784 = icmp sle i64 %_index4778, %_index4783
  br i1 %_bop4784, label %_then4822, label %_else4821
_then4822:
  %_j4785 = load i64, i64* %_j4766
  store i64 %_j4785, i64* %_i4765
  %_j4786 = load i64, i64* %_j4766
  %_bop4787 = add i64 %_j4786, 1
  store i64 %_bop4787, i64* %_j4766
  br label %_merge4820
_else4821:
  %_a4788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4764
  %_i4789 = load i64, i64* %_i4765
  %_bop4790 = sub i64 %_i4789, 1
  %_index_ptr4792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4788, i32 0, i32 1, i64 %_bop4790
  %_index4793 = load i64, i64* %_index_ptr4792
  store i64 %_index4793, i64* %_tmp4794
  %_a4795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4764
  %_i4796 = load i64, i64* %_i4765
  %_bop4797 = sub i64 %_i4796, 1
  %_index_ptr4799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4795, i32 0, i32 1, i64 %_bop4797
  %_a4800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4764
  %_i4801 = load i64, i64* %_i4765
  %_index_ptr4803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4800, i32 0, i32 1, i64 %_i4801
  %_index4804 = load i64, i64* %_index_ptr4803
  store i64 %_index4804, i64* %_index_ptr4799
  %_a4805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4764
  %_i4806 = load i64, i64* %_i4765
  %_index_ptr4808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4805, i32 0, i32 1, i64 %_i4806
  %_tmp4809 = load i64, i64* %_tmp4794
  store i64 %_tmp4809, i64* %_index_ptr4808
  %_i4810 = load i64, i64* %_i4765
  %_bop4811 = sub i64 %_i4810, 1
  store i64 %_bop4811, i64* %_i4765
  %_i4812 = load i64, i64* %_i4765
  %_bop4813 = icmp eq i64 %_i4812, 0
  br i1 %_bop4813, label %_then4819, label %_else4818
_then4819:
  %_j4814 = load i64, i64* %_j4766
  store i64 %_j4814, i64* %_i4765
  %_j4815 = load i64, i64* %_j4766
  %_bop4816 = add i64 %_j4815, 1
  store i64 %_bop4816, i64* %_j4766
  br label %_merge4817
_else4818:
  br label %_merge4817
_merge4817:
  br label %_merge4820
_merge4820:
  br label %_cond4772
_post4770:
  ret void
}

define i64 @program(i64 %_argc4730, { i64, [0 x i8*] }* %_argv4728) {
  %_argc4731 = alloca i64
  %_argv4729 = alloca { i64, [0 x i8*] }*
  %_arr4742 = alloca { i64, [0 x i64] }*
  %_len4743 = alloca i64
  %_i4747 = alloca i64
  store i64 %_argc4730, i64* %_argc4731
  store { i64, [0 x i8*] }* %_argv4728, { i64, [0 x i8*] }** %_argv4729
  %_raw_array4732 = call i64* @oat_alloc_array(i64 8)
  %_array4733 = bitcast i64* %_raw_array4732 to { i64, [0 x i64] }*
  %_ind4734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind4734
  %_ind4735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind4735
  %_ind4736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4736
  %_ind4737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4737
  %_ind4738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind4738
  %_ind4739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind4739
  %_ind4740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind4740
  %_ind4741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4733, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind4741
  store { i64, [0 x i64] }* %_array4733, { i64, [0 x i64] }** %_arr4742
  store i64 8, i64* %_len4743
  %_len4744 = load i64, i64* %_len4743
  %_arr4745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4742
  call void @gnomeSort({ i64, [0 x i64] }* %_arr4745, i64 %_len4744)
  store i64 0, i64* %_i4747
  br label %_cond4752
_cond4752:
  %_i4748 = load i64, i64* %_i4747
  %_bop4749 = icmp slt i64 %_i4748, 8
  br i1 %_bop4749, label %_body4751, label %_post4750
_body4751:
  %_arr4753 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4742
  %_i4754 = load i64, i64* %_i4747
  %_index_ptr4756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4753, i32 0, i32 1, i64 %_i4754
  %_index4757 = load i64, i64* %_index_ptr4756
  call void @print_int(i64 %_index4757)
  %_i4759 = load i64, i64* %_i4747
  %_bop4760 = add i64 %_i4759, 1
  store i64 %_bop4760, i64* %_i4747
  br label %_cond4752
_post4750:
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
