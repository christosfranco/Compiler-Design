; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %_array3999, i64 %_i3997, i64 %_len3995) {
  %_array4000 = alloca { i64, [0 x i64] }*
  %_i3998 = alloca i64
  %_len3996 = alloca i64
  %_l4003 = alloca i64
  %_r4006 = alloca i64
  %_tmp4007 = alloca i64
  %_m4009 = alloca i64
  store { i64, [0 x i64] }* %_array3999, { i64, [0 x i64] }** %_array4000
  store i64 %_i3997, i64* %_i3998
  store i64 %_len3995, i64* %_len3996
  %_i4001 = load i64, i64* %_i3998
  %_bop4002 = mul i64 %_i4001, 2
  store i64 %_bop4002, i64* %_l4003
  %_i4004 = load i64, i64* %_i3998
  %_bop4005 = add i64 %_i4004, 1
  store i64 %_bop4005, i64* %_r4006
  store i64 0, i64* %_tmp4007
  %_i4008 = load i64, i64* %_i3998
  store i64 %_i4008, i64* %_m4009
  %_l4010 = load i64, i64* %_l4003
  %_len4011 = load i64, i64* %_len3996
  %_bop4012 = icmp slt i64 %_l4010, %_len4011
  br i1 %_bop4012, label %_then4030, label %_else4029
_then4030:
  %_array4013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_l4014 = load i64, i64* %_l4003
  %_index_ptr4016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4013, i32 0, i32 1, i64 %_l4014
  %_index4017 = load i64, i64* %_index_ptr4016
  %_array4018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_m4019 = load i64, i64* %_m4009
  %_index_ptr4021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4018, i32 0, i32 1, i64 %_m4019
  %_index4022 = load i64, i64* %_index_ptr4021
  %_bop4023 = icmp sgt i64 %_index4017, %_index4022
  br i1 %_bop4023, label %_then4027, label %_else4026
_then4027:
  %_l4024 = load i64, i64* %_l4003
  store i64 %_l4024, i64* %_m4009
  br label %_merge4025
_else4026:
  br label %_merge4025
_merge4025:
  br label %_merge4028
_else4029:
  br label %_merge4028
_merge4028:
  %_r4031 = load i64, i64* %_r4006
  %_len4032 = load i64, i64* %_len3996
  %_bop4033 = icmp slt i64 %_r4031, %_len4032
  br i1 %_bop4033, label %_then4051, label %_else4050
_then4051:
  %_array4034 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_r4035 = load i64, i64* %_r4006
  %_index_ptr4037 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4034, i32 0, i32 1, i64 %_r4035
  %_index4038 = load i64, i64* %_index_ptr4037
  %_array4039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_m4040 = load i64, i64* %_m4009
  %_index_ptr4042 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4039, i32 0, i32 1, i64 %_m4040
  %_index4043 = load i64, i64* %_index_ptr4042
  %_bop4044 = icmp sgt i64 %_index4038, %_index4043
  br i1 %_bop4044, label %_then4048, label %_else4047
_then4048:
  %_r4045 = load i64, i64* %_r4006
  store i64 %_r4045, i64* %_m4009
  br label %_merge4046
_else4047:
  br label %_merge4046
_merge4046:
  br label %_merge4049
_else4050:
  br label %_merge4049
_merge4049:
  %_m4052 = load i64, i64* %_m4009
  %_i4053 = load i64, i64* %_i3998
  %_bop4054 = icmp ne i64 %_m4052, %_i4053
  br i1 %_bop4054, label %_then4080, label %_else4079
_then4080:
  %_array4055 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_i4056 = load i64, i64* %_i3998
  %_index_ptr4058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i64 %_i4056
  %_index4059 = load i64, i64* %_index_ptr4058
  store i64 %_index4059, i64* %_tmp4007
  %_array4060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_i4061 = load i64, i64* %_i3998
  %_index_ptr4063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4060, i32 0, i32 1, i64 %_i4061
  %_array4064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_m4065 = load i64, i64* %_m4009
  %_index_ptr4067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4064, i32 0, i32 1, i64 %_m4065
  %_index4068 = load i64, i64* %_index_ptr4067
  store i64 %_index4068, i64* %_index_ptr4063
  %_array4069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  %_m4070 = load i64, i64* %_m4009
  %_index_ptr4072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i64 %_m4070
  %_tmp4073 = load i64, i64* %_tmp4007
  store i64 %_tmp4073, i64* %_index_ptr4072
  %_len4074 = load i64, i64* %_len3996
  %_m4075 = load i64, i64* %_m4009
  %_array4076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4000
  call void @min_heapify({ i64, [0 x i64] }* %_array4076, i64 %_m4075, i64 %_len4074)
  br label %_merge4078
_else4079:
  br label %_merge4078
_merge4078:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %_array3980, i64 %_len3978) {
  %_array3981 = alloca { i64, [0 x i64] }*
  %_len3979 = alloca i64
  %_i3983 = alloca i64
  store { i64, [0 x i64] }* %_array3980, { i64, [0 x i64] }** %_array3981
  store i64 %_len3978, i64* %_len3979
  %_len3982 = load i64, i64* %_len3979
  store i64 %_len3982, i64* %_i3983
  br label %_cond3988
_cond3988:
  %_i3984 = load i64, i64* %_i3983
  %_bop3985 = icmp sge i64 %_i3984, 1
  br i1 %_bop3985, label %_body3987, label %_post3986
_body3987:
  %_len3989 = load i64, i64* %_len3979
  %_i3990 = load i64, i64* %_i3983
  %_array3991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3981
  call void @min_heapify({ i64, [0 x i64] }* %_array3991, i64 %_i3990, i64 %_len3989)
  %_i3993 = load i64, i64* %_i3983
  %_bop3994 = sub i64 %_i3993, 1
  store i64 %_bop3994, i64* %_i3983
  br label %_cond3988
_post3986:
  ret void
}

define i64 @program(i64 %_argc3922, { i64, [0 x i8*] }* %_argv3920) {
  %_argc3923 = alloca i64
  %_argv3921 = alloca { i64, [0 x i8*] }*
  %_array3937 = alloca { i64, [0 x i64] }*
  %_end_result3951 = alloca { i64, [0 x i64] }*
  %_same3954 = alloca i64
  %_i3955 = alloca i64
  store i64 %_argc3922, i64* %_argc3923
  store { i64, [0 x i8*] }* %_argv3920, { i64, [0 x i8*] }** %_argv3921
  %_raw_array3924 = call i64* @oat_alloc_array(i64 11)
  %_array3925 = bitcast i64* %_raw_array3924 to { i64, [0 x i64] }*
  %_ind3926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3926
  %_ind3927 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind3927
  %_ind3928 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3928
  %_ind3929 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3929
  %_ind3930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind3930
  %_ind3931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind3931
  %_ind3932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind3932
  %_ind3933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind3933
  %_ind3934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind3934
  %_ind3935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind3935
  %_ind3936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3925, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind3936
  store { i64, [0 x i64] }* %_array3925, { i64, [0 x i64] }** %_array3937
  %_raw_array3938 = call i64* @oat_alloc_array(i64 11)
  %_array3939 = bitcast i64* %_raw_array3938 to { i64, [0 x i64] }*
  %_ind3940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3940
  %_ind3941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind3941
  %_ind3942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3942
  %_ind3943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3943
  %_ind3944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind3944
  %_ind3945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind3945
  %_ind3946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind3946
  %_ind3947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind3947
  %_ind3948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind3948
  %_ind3949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind3949
  %_ind3950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3939, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind3950
  store { i64, [0 x i64] }* %_array3939, { i64, [0 x i64] }** %_end_result3951
  %_array3952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3937
  call void @make_min_heap({ i64, [0 x i64] }* %_array3952, i64 10)
  store i64 0, i64* %_same3954
  store i64 0, i64* %_i3955
  br label %_cond3960
_cond3960:
  %_i3956 = load i64, i64* %_i3955
  %_bop3957 = icmp slt i64 %_i3956, 11
  br i1 %_bop3957, label %_body3959, label %_post3958
_body3959:
  %_array3961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array3937
  %_i3962 = load i64, i64* %_i3955
  %_index_ptr3964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3961, i32 0, i32 1, i64 %_i3962
  %_index3965 = load i64, i64* %_index_ptr3964
  %_end_result3966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result3951
  %_i3967 = load i64, i64* %_i3955
  %_index_ptr3969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result3966, i32 0, i32 1, i64 %_i3967
  %_index3970 = load i64, i64* %_index_ptr3969
  %_bop3971 = icmp ne i64 %_index3965, %_index3970
  br i1 %_bop3971, label %_then3974, label %_else3973
_then3974:
  store i64 1, i64* %_same3954
  br label %_merge3972
_else3973:
  br label %_merge3972
_merge3972:
  %_i3975 = load i64, i64* %_i3955
  %_bop3976 = add i64 %_i3975, 1
  store i64 %_bop3976, i64* %_i3955
  br label %_cond3960
_post3958:
  %_same3977 = load i64, i64* %_same3954
  ret i64 %_same3977
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
