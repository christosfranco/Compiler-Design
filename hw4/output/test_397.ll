; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str_arr3811 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %_numerator3869, i64 %_denominator3867) {
  %_numerator3870 = alloca i64
  %_denominator3868 = alloca i64
  %_quotient3881 = alloca i64
  %_remainder3883 = alloca i64
  store i64 %_numerator3869, i64* %_numerator3870
  store i64 %_denominator3867, i64* %_denominator3868
  %_denominator3871 = load i64, i64* %_denominator3868
  %_bop3872 = icmp slt i64 %_denominator3871, 0
  br i1 %_bop3872, label %_then3880, label %_else3879
_then3880:
  %_denominator3873 = load i64, i64* %_denominator3868
  %_unop3874 = sub i64 0, %_denominator3873
  %_numerator3875 = load i64, i64* %_numerator3870
  %_result3876 = call i64 @euclid_division(i64 %_numerator3875, i64 %_unop3874)
  %_unop3877 = sub i64 0, %_result3876
  ret i64 %_unop3877
_else3879:
  br label %_merge3878
_merge3878:
  store i64 0, i64* %_quotient3881
  %_numerator3882 = load i64, i64* %_numerator3870
  store i64 %_numerator3882, i64* %_remainder3883
  %_numerator3884 = load i64, i64* %_numerator3870
  %_bop3885 = icmp slt i64 %_numerator3884, 0
  br i1 %_bop3885, label %_then3911, label %_else3910
_then3911:
  %_numerator3886 = load i64, i64* %_numerator3870
  %_unop3887 = sub i64 0, %_numerator3886
  store i64 %_unop3887, i64* %_remainder3883
  br label %_cond3893
_cond3893:
  %_remainder3888 = load i64, i64* %_remainder3883
  %_denominator3889 = load i64, i64* %_denominator3868
  %_bop3890 = icmp sge i64 %_remainder3888, %_denominator3889
  br i1 %_bop3890, label %_body3892, label %_post3891
_body3892:
  %_quotient3894 = load i64, i64* %_quotient3881
  %_bop3895 = add i64 %_quotient3894, 1
  store i64 %_bop3895, i64* %_quotient3881
  %_remainder3896 = load i64, i64* %_remainder3883
  %_denominator3897 = load i64, i64* %_denominator3868
  %_bop3898 = sub i64 %_remainder3896, %_denominator3897
  store i64 %_bop3898, i64* %_remainder3883
  br label %_cond3893
_post3891:
  %_remainder3899 = load i64, i64* %_remainder3883
  %_bop3900 = icmp eq i64 %_remainder3899, 0
  br i1 %_bop3900, label %_then3908, label %_else3907
_then3908:
  %_quotient3901 = load i64, i64* %_quotient3881
  %_unop3902 = sub i64 0, %_quotient3901
  ret i64 %_unop3902
_else3907:
  %_quotient3903 = load i64, i64* %_quotient3881
  %_unop3904 = sub i64 0, %_quotient3903
  %_bop3905 = sub i64 %_unop3904, 1
  ret i64 %_bop3905
_merge3906:
  br label %_merge3909
_else3910:
  br label %_merge3909
_merge3909:
  br label %_cond3917
_cond3917:
  %_remainder3912 = load i64, i64* %_remainder3883
  %_denominator3913 = load i64, i64* %_denominator3868
  %_bop3914 = icmp sge i64 %_remainder3912, %_denominator3913
  br i1 %_bop3914, label %_body3916, label %_post3915
_body3916:
  %_quotient3918 = load i64, i64* %_quotient3881
  %_bop3919 = add i64 %_quotient3918, 1
  store i64 %_bop3919, i64* %_quotient3881
  %_remainder3920 = load i64, i64* %_remainder3883
  %_denominator3921 = load i64, i64* %_denominator3868
  %_bop3922 = sub i64 %_remainder3920, %_denominator3921
  store i64 %_bop3922, i64* %_remainder3883
  br label %_cond3917
_post3915:
  %_quotient3923 = load i64, i64* %_quotient3881
  ret i64 %_quotient3923
}

define i1 @binary_search({ i64, [0 x i64] }* %_input3822, i64 %_key3820, i64 %_min3818, i64 %_max3816) {
  %_input3823 = alloca { i64, [0 x i64] }*
  %_key3821 = alloca i64
  %_min3819 = alloca i64
  %_max3817 = alloca i64
  %_midpt3834 = alloca i64
  store { i64, [0 x i64] }* %_input3822, { i64, [0 x i64] }** %_input3823
  store i64 %_key3820, i64* %_key3821
  store i64 %_min3818, i64* %_min3819
  store i64 %_max3816, i64* %_max3817
  %_max3824 = load i64, i64* %_max3817
  %_min3825 = load i64, i64* %_min3819
  %_bop3826 = icmp slt i64 %_max3824, %_min3825
  br i1 %_bop3826, label %_then3829, label %_else3828
_then3829:
  ret i1 0
_else3828:
  br label %_merge3827
_merge3827:
  %_max3830 = load i64, i64* %_max3817
  %_min3831 = load i64, i64* %_min3819
  %_bop3832 = add i64 %_max3830, %_min3831
  %_result3833 = call i64 @euclid_division(i64 %_bop3832, i64 2)
  store i64 %_result3833, i64* %_midpt3834
  %_input3835 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3823
  %_midpt3836 = load i64, i64* %_midpt3834
  %_index_ptr3838 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3835, i32 0, i32 1, i64 %_midpt3836
  %_index3839 = load i64, i64* %_index_ptr3838
  %_key3840 = load i64, i64* %_key3821
  %_bop3841 = icmp sgt i64 %_index3839, %_key3840
  br i1 %_bop3841, label %_then3850, label %_else3849
_then3850:
  %_midpt3842 = load i64, i64* %_midpt3834
  %_bop3843 = sub i64 %_midpt3842, 1
  %_min3844 = load i64, i64* %_min3819
  %_key3845 = load i64, i64* %_key3821
  %_input3846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3823
  %_result3847 = call i1 @binary_search({ i64, [0 x i64] }* %_input3846, i64 %_key3845, i64 %_min3844, i64 %_bop3843)
  ret i1 %_result3847
_else3849:
  br label %_merge3848
_merge3848:
  %_input3851 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3823
  %_midpt3852 = load i64, i64* %_midpt3834
  %_index_ptr3854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3851, i32 0, i32 1, i64 %_midpt3852
  %_index3855 = load i64, i64* %_index_ptr3854
  %_key3856 = load i64, i64* %_key3821
  %_bop3857 = icmp slt i64 %_index3855, %_key3856
  br i1 %_bop3857, label %_then3866, label %_else3865
_then3866:
  %_max3858 = load i64, i64* %_max3817
  %_midpt3859 = load i64, i64* %_midpt3834
  %_bop3860 = add i64 %_midpt3859, 1
  %_key3861 = load i64, i64* %_key3821
  %_input3862 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3823
  %_result3863 = call i1 @binary_search({ i64, [0 x i64] }* %_input3862, i64 %_key3861, i64 %_bop3860, i64 %_max3858)
  ret i1 %_result3863
_else3865:
  ret i1 1
}

define i64 @program(i64 %_argc3776, { i64, [0 x i8*] }* %_argv3774) {
  %_argc3777 = alloca i64
  %_argv3775 = alloca { i64, [0 x i8*] }*
  %_test_array3780 = alloca { i64, [0 x i64] }*
  %_i3781 = alloca i64
  %_even3798 = alloca i1
  %_odd3801 = alloca i1
  store i64 %_argc3776, i64* %_argc3777
  store { i64, [0 x i8*] }* %_argv3774, { i64, [0 x i8*] }** %_argv3775
  %_raw_array3778 = call i64* @oat_alloc_array(i64 100)
  %_array3779 = bitcast i64* %_raw_array3778 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3779, { i64, [0 x i64] }** %_test_array3780
  store i64 0, i64* %_i3781
  br label %_cond3786
_cond3786:
  %_i3782 = load i64, i64* %_i3781
  %_bop3783 = icmp slt i64 %_i3782, 100
  br i1 %_bop3783, label %_body3785, label %_post3784
_body3785:
  %_test_array3787 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3780
  %_i3788 = load i64, i64* %_i3781
  %_index_ptr3790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array3787, i32 0, i32 1, i64 %_i3788
  %_i3791 = load i64, i64* %_i3781
  %_bop3792 = mul i64 2, %_i3791
  %_bop3793 = add i64 %_bop3792, 1
  store i64 %_bop3793, i64* %_index_ptr3790
  %_i3794 = load i64, i64* %_i3781
  %_bop3795 = add i64 %_i3794, 1
  store i64 %_bop3795, i64* %_i3781
  br label %_cond3786
_post3784:
  %_test_array3796 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3780
  %_result3797 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3796, i64 80, i64 0, i64 99)
  store i1 %_result3797, i1* %_even3798
  %_test_array3799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3780
  %_result3800 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3799, i64 81, i64 0, i64 99)
  store i1 %_result3800, i1* %_odd3801
  %_even3802 = load i1, i1* %_even3798
  %_odd3803 = load i1, i1* %_odd3801
  %_bop3804 = and i1 %_even3802, %_odd3803
  %_unop3805 = icmp eq i1 %_bop3804, 0
  %_even3806 = load i1, i1* %_even3798
  %_odd3807 = load i1, i1* %_odd3801
  %_bop3808 = or i1 %_even3806, %_odd3807
  %_bop3809 = and i1 %_unop3805, %_bop3808
  br i1 %_bop3809, label %_then3815, label %_else3814
_then3815:
  %_str3810 = getelementptr [9 x i8], [9 x i8]* @_str_arr3811, i32 0, i32 0
  call void @print_string(i8* %_str3810)
  br label %_merge3813
_else3814:
  br label %_merge3813
_merge3813:
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
