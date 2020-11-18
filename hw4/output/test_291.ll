; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_arr3950 = global [2 x i8] c"
\00"

define i64 @xor(i64 %_x3994, i64 %_y3992) {
  %_x3995 = alloca i64
  %_y3993 = alloca i64
  store i64 %_x3994, i64* %_x3995
  store i64 %_y3992, i64* %_y3993
  %_x3996 = load i64, i64* %_x3995
  %_y3997 = load i64, i64* %_y3993
  %_bop3998 = and i64 %_x3996, %_y3997
  %_unop3999 = xor i64 %_bop3998, -1
  %_x4000 = load i64, i64* %_x3995
  %_y4001 = load i64, i64* %_y3993
  %_bop4002 = or i64 %_x4000, %_y4001
  %_bop4003 = and i64 %_unop3999, %_bop4002
  ret i64 %_bop4003
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s3955) {
  %_s3956 = alloca { i64, [0 x i64] }*
  %_x3961 = alloca i64
  %_y3966 = alloca i64
  store { i64, [0 x i64] }* %_s3955, { i64, [0 x i64] }** %_s3956
  %_s3957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3956
  %_index_ptr3959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3957, i32 0, i32 1, i32 0
  %_index3960 = load i64, i64* %_index_ptr3959
  store i64 %_index3960, i64* %_x3961
  %_s3962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3956
  %_index_ptr3964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3962, i32 0, i32 1, i32 1
  %_index3965 = load i64, i64* %_index_ptr3964
  store i64 %_index3965, i64* %_y3966
  %_s3967 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3956
  %_index_ptr3969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3967, i32 0, i32 1, i32 0
  %_y3970 = load i64, i64* %_y3966
  store i64 %_y3970, i64* %_index_ptr3969
  %_x3971 = load i64, i64* %_x3961
  %_bop3972 = shl i64 %_x3971, 23
  %_x3973 = load i64, i64* %_x3961
  %_result3974 = call i64 @xor(i64 %_x3973, i64 %_bop3972)
  store i64 %_result3974, i64* %_x3961
  %_x3975 = load i64, i64* %_x3961
  %_bop3976 = lshr i64 %_x3975, 17
  %_x3977 = load i64, i64* %_x3961
  %_result3978 = call i64 @xor(i64 %_x3977, i64 %_bop3976)
  store i64 %_result3978, i64* %_x3961
  %_y3979 = load i64, i64* %_y3966
  %_bop3980 = lshr i64 %_y3979, 26
  %_y3981 = load i64, i64* %_y3966
  %_result3982 = call i64 @xor(i64 %_y3981, i64 %_bop3980)
  %_x3983 = load i64, i64* %_x3961
  %_result3984 = call i64 @xor(i64 %_x3983, i64 %_result3982)
  store i64 %_result3984, i64* %_x3961
  %_s3985 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3956
  %_index_ptr3987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3985, i32 0, i32 1, i32 1
  %_x3988 = load i64, i64* %_x3961
  store i64 %_x3988, i64* %_index_ptr3987
  %_x3989 = load i64, i64* %_x3961
  %_y3990 = load i64, i64* %_y3966
  %_bop3991 = add i64 %_x3989, %_y3990
  ret i64 %_bop3991
}

define i64 @program(i64 %_argc3926, { i64, [0 x i8*] }* %_argv3924) {
  %_argc3927 = alloca i64
  %_argv3925 = alloca { i64, [0 x i8*] }*
  %_seed3930 = alloca { i64, [0 x i64] }*
  %_i3931 = alloca i64
  store i64 %_argc3926, i64* %_argc3927
  store { i64, [0 x i8*] }* %_argv3924, { i64, [0 x i8*] }** %_argv3925
  %_raw_array3928 = call i64* @oat_alloc_array(i64 2)
  %_array3929 = bitcast i64* %_raw_array3928 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3929, { i64, [0 x i64] }** %_seed3930
  store i64 0, i64* %_i3931
  br label %_cond3936
_cond3936:
  %_i3932 = load i64, i64* %_i3931
  %_bop3933 = icmp slt i64 %_i3932, 2
  br i1 %_bop3933, label %_body3935, label %_post3934
_body3935:
  %_seed3937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3930
  %_i3938 = load i64, i64* %_i3931
  %_index_ptr3940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed3937, i32 0, i32 1, i64 %_i3938
  %_i3941 = load i64, i64* %_i3931
  %_bop3942 = add i64 %_i3941, 1
  %_bop3943 = mul i64 100, %_bop3942
  store i64 %_bop3943, i64* %_index_ptr3940
  %_i3944 = load i64, i64* %_i3931
  %_bop3945 = add i64 %_i3944, 1
  store i64 %_bop3945, i64* %_i3931
  br label %_cond3936
_post3934:
  %_seed3946 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3930
  %_result3947 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3946)
  call void @print_int(i64 %_result3947)
  %_str3949 = getelementptr [2 x i8], [2 x i8]* @_str_arr3950, i32 0, i32 0
  call void @print_string(i8* %_str3949)
  %_seed3952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3930
  %_result3953 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3952)
  call void @print_int(i64 %_result3953)
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
