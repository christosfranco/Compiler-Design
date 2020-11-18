; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str_arr3808 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %_numerator3866, i64 %_denominator3864) {
  %_numerator3867 = alloca i64
  %_denominator3865 = alloca i64
  %_quotient3878 = alloca i64
  %_remainder3880 = alloca i64
  store i64 %_numerator3866, i64* %_numerator3867
  store i64 %_denominator3864, i64* %_denominator3865
  %_denominator3868 = load i64, i64* %_denominator3865
  %_bop3869 = icmp slt i64 %_denominator3868, 0
  br i1 %_bop3869, label %_then3877, label %_else3876
_then3877:
  %_denominator3870 = load i64, i64* %_denominator3865
  %_unop3871 = sub i64 0, %_denominator3870
  %_numerator3872 = load i64, i64* %_numerator3867
  %_result3873 = call i64 @euclid_division(i64 %_numerator3872, i64 %_unop3871)
  %_unop3874 = sub i64 0, %_result3873
  ret i64 %_unop3874
_else3876:
  br label %_merge3875
_merge3875:
  store i64 0, i64* %_quotient3878
  %_numerator3879 = load i64, i64* %_numerator3867
  store i64 %_numerator3879, i64* %_remainder3880
  %_numerator3881 = load i64, i64* %_numerator3867
  %_bop3882 = icmp slt i64 %_numerator3881, 0
  br i1 %_bop3882, label %_then3908, label %_else3907
_then3908:
  %_numerator3883 = load i64, i64* %_numerator3867
  %_unop3884 = sub i64 0, %_numerator3883
  store i64 %_unop3884, i64* %_remainder3880
  br label %_cond3890
_cond3890:
  %_remainder3885 = load i64, i64* %_remainder3880
  %_denominator3886 = load i64, i64* %_denominator3865
  %_bop3887 = icmp sge i64 %_remainder3885, %_denominator3886
  br i1 %_bop3887, label %_body3889, label %_post3888
_body3889:
  %_quotient3891 = load i64, i64* %_quotient3878
  %_bop3892 = add i64 %_quotient3891, 1
  store i64 %_bop3892, i64* %_quotient3878
  %_remainder3893 = load i64, i64* %_remainder3880
  %_denominator3894 = load i64, i64* %_denominator3865
  %_bop3895 = sub i64 %_remainder3893, %_denominator3894
  store i64 %_bop3895, i64* %_remainder3880
  br label %_cond3890
_post3888:
  %_remainder3896 = load i64, i64* %_remainder3880
  %_bop3897 = icmp eq i64 %_remainder3896, 0
  br i1 %_bop3897, label %_then3905, label %_else3904
_then3905:
  %_quotient3898 = load i64, i64* %_quotient3878
  %_unop3899 = sub i64 0, %_quotient3898
  ret i64 %_unop3899
_else3904:
  %_quotient3900 = load i64, i64* %_quotient3878
  %_unop3901 = sub i64 0, %_quotient3900
  %_bop3902 = sub i64 %_unop3901, 1
  ret i64 %_bop3902
_merge3903:
  br label %_merge3906
_else3907:
  br label %_merge3906
_merge3906:
  br label %_cond3914
_cond3914:
  %_remainder3909 = load i64, i64* %_remainder3880
  %_denominator3910 = load i64, i64* %_denominator3865
  %_bop3911 = icmp sge i64 %_remainder3909, %_denominator3910
  br i1 %_bop3911, label %_body3913, label %_post3912
_body3913:
  %_quotient3915 = load i64, i64* %_quotient3878
  %_bop3916 = add i64 %_quotient3915, 1
  store i64 %_bop3916, i64* %_quotient3878
  %_remainder3917 = load i64, i64* %_remainder3880
  %_denominator3918 = load i64, i64* %_denominator3865
  %_bop3919 = sub i64 %_remainder3917, %_denominator3918
  store i64 %_bop3919, i64* %_remainder3880
  br label %_cond3914
_post3912:
  %_quotient3920 = load i64, i64* %_quotient3878
  ret i64 %_quotient3920
}

define i1 @binary_search({ i64, [0 x i64] }* %_input3819, i64 %_key3817, i64 %_min3815, i64 %_max3813) {
  %_input3820 = alloca { i64, [0 x i64] }*
  %_key3818 = alloca i64
  %_min3816 = alloca i64
  %_max3814 = alloca i64
  %_midpt3831 = alloca i64
  store { i64, [0 x i64] }* %_input3819, { i64, [0 x i64] }** %_input3820
  store i64 %_key3817, i64* %_key3818
  store i64 %_min3815, i64* %_min3816
  store i64 %_max3813, i64* %_max3814
  %_max3821 = load i64, i64* %_max3814
  %_min3822 = load i64, i64* %_min3816
  %_bop3823 = icmp slt i64 %_max3821, %_min3822
  br i1 %_bop3823, label %_then3826, label %_else3825
_then3826:
  ret i1 0
_else3825:
  br label %_merge3824
_merge3824:
  %_max3827 = load i64, i64* %_max3814
  %_min3828 = load i64, i64* %_min3816
  %_bop3829 = add i64 %_max3827, %_min3828
  %_result3830 = call i64 @euclid_division(i64 %_bop3829, i64 2)
  store i64 %_result3830, i64* %_midpt3831
  %_input3832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3820
  %_midpt3833 = load i64, i64* %_midpt3831
  %_index_ptr3835 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3832, i32 0, i32 1, i64 %_midpt3833
  %_index3836 = load i64, i64* %_index_ptr3835
  %_key3837 = load i64, i64* %_key3818
  %_bop3838 = icmp sgt i64 %_index3836, %_key3837
  br i1 %_bop3838, label %_then3847, label %_else3846
_then3847:
  %_midpt3839 = load i64, i64* %_midpt3831
  %_bop3840 = sub i64 %_midpt3839, 1
  %_min3841 = load i64, i64* %_min3816
  %_key3842 = load i64, i64* %_key3818
  %_input3843 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3820
  %_result3844 = call i1 @binary_search({ i64, [0 x i64] }* %_input3843, i64 %_key3842, i64 %_min3841, i64 %_bop3840)
  ret i1 %_result3844
_else3846:
  br label %_merge3845
_merge3845:
  %_input3848 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3820
  %_midpt3849 = load i64, i64* %_midpt3831
  %_index_ptr3851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3848, i32 0, i32 1, i64 %_midpt3849
  %_index3852 = load i64, i64* %_index_ptr3851
  %_key3853 = load i64, i64* %_key3818
  %_bop3854 = icmp slt i64 %_index3852, %_key3853
  br i1 %_bop3854, label %_then3863, label %_else3862
_then3863:
  %_max3855 = load i64, i64* %_max3814
  %_midpt3856 = load i64, i64* %_midpt3831
  %_bop3857 = add i64 %_midpt3856, 1
  %_key3858 = load i64, i64* %_key3818
  %_input3859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3820
  %_result3860 = call i1 @binary_search({ i64, [0 x i64] }* %_input3859, i64 %_key3858, i64 %_bop3857, i64 %_max3855)
  ret i1 %_result3860
_else3862:
  ret i1 1
}

define i64 @program(i64 %_argc3773, { i64, [0 x i8*] }* %_argv3771) {
  %_argc3774 = alloca i64
  %_argv3772 = alloca { i64, [0 x i8*] }*
  %_test_array3777 = alloca { i64, [0 x i64] }*
  %_i3778 = alloca i64
  %_even3795 = alloca i1
  %_odd3798 = alloca i1
  store i64 %_argc3773, i64* %_argc3774
  store { i64, [0 x i8*] }* %_argv3771, { i64, [0 x i8*] }** %_argv3772
  %_raw_array3775 = call i64* @oat_alloc_array(i64 100)
  %_array3776 = bitcast i64* %_raw_array3775 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3776, { i64, [0 x i64] }** %_test_array3777
  store i64 0, i64* %_i3778
  br label %_cond3783
_cond3783:
  %_i3779 = load i64, i64* %_i3778
  %_bop3780 = icmp slt i64 %_i3779, 100
  br i1 %_bop3780, label %_body3782, label %_post3781
_body3782:
  %_test_array3784 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3777
  %_i3785 = load i64, i64* %_i3778
  %_index_ptr3787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array3784, i32 0, i32 1, i64 %_i3785
  %_i3788 = load i64, i64* %_i3778
  %_bop3789 = mul i64 2, %_i3788
  %_bop3790 = add i64 %_bop3789, 1
  store i64 %_bop3790, i64* %_index_ptr3787
  %_i3791 = load i64, i64* %_i3778
  %_bop3792 = add i64 %_i3791, 1
  store i64 %_bop3792, i64* %_i3778
  br label %_cond3783
_post3781:
  %_test_array3793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3777
  %_result3794 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3793, i64 80, i64 0, i64 99)
  store i1 %_result3794, i1* %_even3795
  %_test_array3796 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3777
  %_result3797 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3796, i64 81, i64 0, i64 99)
  store i1 %_result3797, i1* %_odd3798
  %_even3799 = load i1, i1* %_even3795
  %_odd3800 = load i1, i1* %_odd3798
  %_bop3801 = and i1 %_even3799, %_odd3800
  %_unop3802 = icmp eq i1 %_bop3801, 0
  %_even3803 = load i1, i1* %_even3795
  %_odd3804 = load i1, i1* %_odd3798
  %_bop3805 = or i1 %_even3803, %_odd3804
  %_bop3806 = and i1 %_unop3802, %_bop3805
  br i1 %_bop3806, label %_then3812, label %_else3811
_then3812:
  %_str3807 = getelementptr [9 x i8], [9 x i8]* @_str_arr3808, i32 0, i32 0
  call void @print_string(i8* %_str3807)
  br label %_merge3810
_else3811:
  br label %_merge3810
_merge3810:
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
