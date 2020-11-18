; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3823 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr3955, i64 %_len3953) {
  %_arr3956 = alloca { i64, [0 x i64] }*
  %_len3954 = alloca i64
  %_min3960 = alloca i64
  %_i3961 = alloca i64
  store { i64, [0 x i64] }* %_arr3955, { i64, [0 x i64] }** %_arr3956
  store i64 %_len3953, i64* %_len3954
  %_arr3957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3956
  %_index_ptr3958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3957, i32 0, i32 1, i32 0
  %_index3959 = load i64, i64* %_index_ptr3958
  store i64 %_index3959, i64* %_min3960
  store i64 0, i64* %_i3961
  br label %_cond3967
_cond3967:
  %_i3962 = load i64, i64* %_i3961
  %_len3963 = load i64, i64* %_len3954
  %_bop3964 = icmp slt i64 %_i3962, %_len3963
  br i1 %_bop3964, label %_body3966, label %_post3965
_body3966:
  %_arr3968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3956
  %_i3969 = load i64, i64* %_i3961
  %_index_ptr3970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3968, i32 0, i32 1, i64 %_i3969
  %_index3971 = load i64, i64* %_index_ptr3970
  %_min3972 = load i64, i64* %_min3960
  %_bop3973 = icmp slt i64 %_index3971, %_min3972
  br i1 %_bop3973, label %_then3980, label %_else3979
_then3980:
  %_arr3974 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3956
  %_i3975 = load i64, i64* %_i3961
  %_index_ptr3976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3974, i32 0, i32 1, i64 %_i3975
  %_index3977 = load i64, i64* %_index_ptr3976
  store i64 %_index3977, i64* %_min3960
  br label %_merge3978
_else3979:
  br label %_merge3978
_merge3978:
  %_i3981 = load i64, i64* %_i3961
  %_bop3982 = add i64 %_i3981, 1
  store i64 %_bop3982, i64* %_i3961
  br label %_cond3967
_post3965:
  %_min3983 = load i64, i64* %_min3960
  ret i64 %_min3983
}

define i64 @max({ i64, [0 x i64] }* %_arr3924, i64 %_len3922) {
  %_arr3925 = alloca { i64, [0 x i64] }*
  %_len3923 = alloca i64
  %_max3929 = alloca i64
  %_i3930 = alloca i64
  store { i64, [0 x i64] }* %_arr3924, { i64, [0 x i64] }** %_arr3925
  store i64 %_len3922, i64* %_len3923
  %_arr3926 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3925
  %_index_ptr3927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3926, i32 0, i32 1, i32 0
  %_index3928 = load i64, i64* %_index_ptr3927
  store i64 %_index3928, i64* %_max3929
  store i64 0, i64* %_i3930
  br label %_cond3936
_cond3936:
  %_i3931 = load i64, i64* %_i3930
  %_len3932 = load i64, i64* %_len3923
  %_bop3933 = icmp slt i64 %_i3931, %_len3932
  br i1 %_bop3933, label %_body3935, label %_post3934
_body3935:
  %_arr3937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3925
  %_i3938 = load i64, i64* %_i3930
  %_index_ptr3939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3937, i32 0, i32 1, i64 %_i3938
  %_index3940 = load i64, i64* %_index_ptr3939
  %_max3941 = load i64, i64* %_max3929
  %_bop3942 = icmp sgt i64 %_index3940, %_max3941
  br i1 %_bop3942, label %_then3949, label %_else3948
_then3949:
  %_arr3943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3925
  %_i3944 = load i64, i64* %_i3930
  %_index_ptr3945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3943, i32 0, i32 1, i64 %_i3944
  %_index3946 = load i64, i64* %_index_ptr3945
  store i64 %_index3946, i64* %_max3929
  br label %_merge3947
_else3948:
  br label %_merge3947
_merge3947:
  %_i3950 = load i64, i64* %_i3930
  %_bop3951 = add i64 %_i3950, 1
  store i64 %_bop3951, i64* %_i3930
  br label %_cond3936
_post3934:
  %_max3952 = load i64, i64* %_max3929
  ret i64 %_max3952
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr3834, i64 %_len3832) {
  %_arr3835 = alloca { i64, [0 x i64] }*
  %_len3833 = alloca i64
  %_min3839 = alloca i64
  %_max3843 = alloca i64
  %_counts3850 = alloca { i64, [0 x i64] }*
  %_i3851 = alloca i64
  %_i3879 = alloca i64
  %_j3880 = alloca i64
  %_out3884 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr3834, { i64, [0 x i64] }** %_arr3835
  store i64 %_len3832, i64* %_len3833
  %_len3836 = load i64, i64* %_len3833
  %_arr3837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3835
  %_result3838 = call i64 @min({ i64, [0 x i64] }* %_arr3837, i64 %_len3836)
  store i64 %_result3838, i64* %_min3839
  %_len3840 = load i64, i64* %_len3833
  %_arr3841 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3835
  %_result3842 = call i64 @max({ i64, [0 x i64] }* %_arr3841, i64 %_len3840)
  store i64 %_result3842, i64* %_max3843
  %_max3844 = load i64, i64* %_max3843
  %_min3845 = load i64, i64* %_min3839
  %_bop3846 = sub i64 %_max3844, %_min3845
  %_bop3847 = add i64 %_bop3846, 1
  %_raw_array3848 = call i64* @oat_alloc_array(i64 %_bop3847)
  %_array3849 = bitcast i64* %_raw_array3848 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3849, { i64, [0 x i64] }** %_counts3850
  store i64 0, i64* %_i3851
  br label %_cond3857
_cond3857:
  %_i3852 = load i64, i64* %_i3851
  %_len3853 = load i64, i64* %_len3833
  %_bop3854 = icmp slt i64 %_i3852, %_len3853
  br i1 %_bop3854, label %_body3856, label %_post3855
_body3856:
  %_counts3858 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3850
  %_arr3859 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3835
  %_i3860 = load i64, i64* %_i3851
  %_index_ptr3861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3859, i32 0, i32 1, i64 %_i3860
  %_index3862 = load i64, i64* %_index_ptr3861
  %_min3863 = load i64, i64* %_min3839
  %_bop3864 = sub i64 %_index3862, %_min3863
  %_index_ptr3865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3858, i32 0, i32 1, i64 %_bop3864
  %_counts3866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3850
  %_arr3867 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3835
  %_i3868 = load i64, i64* %_i3851
  %_index_ptr3869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3867, i32 0, i32 1, i64 %_i3868
  %_index3870 = load i64, i64* %_index_ptr3869
  %_min3871 = load i64, i64* %_min3839
  %_bop3872 = sub i64 %_index3870, %_min3871
  %_index_ptr3873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3866, i32 0, i32 1, i64 %_bop3872
  %_index3874 = load i64, i64* %_index_ptr3873
  %_bop3875 = add i64 %_index3874, 1
  store i64 %_bop3875, i64* %_index_ptr3865
  %_i3876 = load i64, i64* %_i3851
  %_bop3877 = add i64 %_i3876, 1
  store i64 %_bop3877, i64* %_i3851
  br label %_cond3857
_post3855:
  %_min3878 = load i64, i64* %_min3839
  store i64 %_min3878, i64* %_i3879
  store i64 0, i64* %_j3880
  %_len3881 = load i64, i64* %_len3833
  %_raw_array3882 = call i64* @oat_alloc_array(i64 %_len3881)
  %_array3883 = bitcast i64* %_raw_array3882 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3883, { i64, [0 x i64] }** %_out3884
  br label %_cond3890
_cond3890:
  %_i3885 = load i64, i64* %_i3879
  %_max3886 = load i64, i64* %_max3843
  %_bop3887 = icmp sle i64 %_i3885, %_max3886
  br i1 %_bop3887, label %_body3889, label %_post3888
_body3889:
  %_counts3891 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3850
  %_i3892 = load i64, i64* %_i3879
  %_min3893 = load i64, i64* %_min3839
  %_bop3894 = sub i64 %_i3892, %_min3893
  %_index_ptr3895 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3891, i32 0, i32 1, i64 %_bop3894
  %_index3896 = load i64, i64* %_index_ptr3895
  %_bop3897 = icmp sgt i64 %_index3896, 0
  br i1 %_bop3897, label %_then3920, label %_else3919
_then3920:
  %_out3898 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3884
  %_j3899 = load i64, i64* %_j3880
  %_index_ptr3900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out3898, i32 0, i32 1, i64 %_j3899
  %_i3901 = load i64, i64* %_i3879
  store i64 %_i3901, i64* %_index_ptr3900
  %_counts3902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3850
  %_i3903 = load i64, i64* %_i3879
  %_min3904 = load i64, i64* %_min3839
  %_bop3905 = sub i64 %_i3903, %_min3904
  %_index_ptr3906 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3902, i32 0, i32 1, i64 %_bop3905
  %_counts3907 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3850
  %_i3908 = load i64, i64* %_i3879
  %_min3909 = load i64, i64* %_min3839
  %_bop3910 = sub i64 %_i3908, %_min3909
  %_index_ptr3911 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3907, i32 0, i32 1, i64 %_bop3910
  %_index3912 = load i64, i64* %_index_ptr3911
  %_bop3913 = sub i64 %_index3912, 1
  store i64 %_bop3913, i64* %_index_ptr3906
  %_j3914 = load i64, i64* %_j3880
  %_bop3915 = add i64 %_j3914, 1
  store i64 %_bop3915, i64* %_j3880
  br label %_merge3918
_else3919:
  %_i3916 = load i64, i64* %_i3879
  %_bop3917 = add i64 %_i3916, 1
  store i64 %_bop3917, i64* %_i3879
  br label %_merge3918
_merge3918:
  br label %_cond3890
_post3888:
  %_out3921 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3884
  ret { i64, [0 x i64] }* %_out3921
}

define i64 @program(i64 %_argc3804, { i64, [0 x i8*] }* %_argv3802) {
  %_argc3805 = alloca i64
  %_argv3803 = alloca { i64, [0 x i8*] }*
  %_arr3817 = alloca { i64, [0 x i64] }*
  %_len3818 = alloca i64
  %_sorted3828 = alloca { i64, [0 x i64] }*
  store i64 %_argc3804, i64* %_argc3805
  store { i64, [0 x i8*] }* %_argv3802, { i64, [0 x i8*] }** %_argv3803
  %_raw_array3806 = call i64* @oat_alloc_array(i64 9)
  %_array3807 = bitcast i64* %_raw_array3806 to { i64, [0 x i64] }*
  %_ind3808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind3808
  %_ind3809 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind3809
  %_ind3810 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind3810
  %_ind3811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind3811
  %_ind3812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind3812
  %_ind3813 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind3813
  %_ind3814 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind3814
  %_ind3815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind3815
  %_ind3816 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3807, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind3816
  store { i64, [0 x i64] }* %_array3807, { i64, [0 x i64] }** %_arr3817
  store i64 9, i64* %_len3818
  %_arr3819 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3817
  %_result3820 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr3819)
  call void @print_string(i8* %_result3820)
  %_str3822 = getelementptr [2 x i8], [2 x i8]* @_str_arr3823, i32 0, i32 0
  call void @print_string(i8* %_str3822)
  %_len3825 = load i64, i64* %_len3818
  %_arr3826 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3817
  %_result3827 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr3826, i64 %_len3825)
  store { i64, [0 x i64] }* %_result3827, { i64, [0 x i64] }** %_sorted3828
  %_sorted3829 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted3828
  %_result3830 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted3829)
  call void @print_string(i8* %_result3830)
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
