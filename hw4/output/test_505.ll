; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_arr3947 = global [2 x i8] c"
\00"

define i64 @xor(i64 %_x3991, i64 %_y3989) {
  %_x3992 = alloca i64
  %_y3990 = alloca i64
  store i64 %_x3991, i64* %_x3992
  store i64 %_y3989, i64* %_y3990
  %_x3993 = load i64, i64* %_x3992
  %_y3994 = load i64, i64* %_y3990
  %_bop3995 = and i64 %_x3993, %_y3994
  %_unop3996 = xor i64 %_bop3995, -1
  %_x3997 = load i64, i64* %_x3992
  %_y3998 = load i64, i64* %_y3990
  %_bop3999 = or i64 %_x3997, %_y3998
  %_bop4000 = and i64 %_unop3996, %_bop3999
  ret i64 %_bop4000
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s3952) {
  %_s3953 = alloca { i64, [0 x i64] }*
  %_x3958 = alloca i64
  %_y3963 = alloca i64
  store { i64, [0 x i64] }* %_s3952, { i64, [0 x i64] }** %_s3953
  %_s3954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3953
  %_index_ptr3956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3954, i32 0, i32 1, i32 0
  %_index3957 = load i64, i64* %_index_ptr3956
  store i64 %_index3957, i64* %_x3958
  %_s3959 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3953
  %_index_ptr3961 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3959, i32 0, i32 1, i32 1
  %_index3962 = load i64, i64* %_index_ptr3961
  store i64 %_index3962, i64* %_y3963
  %_s3964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3953
  %_index_ptr3966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3964, i32 0, i32 1, i32 0
  %_y3967 = load i64, i64* %_y3963
  store i64 %_y3967, i64* %_index_ptr3966
  %_x3968 = load i64, i64* %_x3958
  %_bop3969 = shl i64 %_x3968, 23
  %_x3970 = load i64, i64* %_x3958
  %_result3971 = call i64 @xor(i64 %_x3970, i64 %_bop3969)
  store i64 %_result3971, i64* %_x3958
  %_x3972 = load i64, i64* %_x3958
  %_bop3973 = lshr i64 %_x3972, 17
  %_x3974 = load i64, i64* %_x3958
  %_result3975 = call i64 @xor(i64 %_x3974, i64 %_bop3973)
  store i64 %_result3975, i64* %_x3958
  %_y3976 = load i64, i64* %_y3963
  %_bop3977 = lshr i64 %_y3976, 26
  %_y3978 = load i64, i64* %_y3963
  %_result3979 = call i64 @xor(i64 %_y3978, i64 %_bop3977)
  %_x3980 = load i64, i64* %_x3958
  %_result3981 = call i64 @xor(i64 %_x3980, i64 %_result3979)
  store i64 %_result3981, i64* %_x3958
  %_s3982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3953
  %_index_ptr3984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3982, i32 0, i32 1, i32 1
  %_x3985 = load i64, i64* %_x3958
  store i64 %_x3985, i64* %_index_ptr3984
  %_x3986 = load i64, i64* %_x3958
  %_y3987 = load i64, i64* %_y3963
  %_bop3988 = add i64 %_x3986, %_y3987
  ret i64 %_bop3988
}

define i64 @program(i64 %_argc3923, { i64, [0 x i8*] }* %_argv3921) {
  %_argc3924 = alloca i64
  %_argv3922 = alloca { i64, [0 x i8*] }*
  %_seed3927 = alloca { i64, [0 x i64] }*
  %_i3928 = alloca i64
  store i64 %_argc3923, i64* %_argc3924
  store { i64, [0 x i8*] }* %_argv3921, { i64, [0 x i8*] }** %_argv3922
  %_raw_array3925 = call i64* @oat_alloc_array(i64 2)
  %_array3926 = bitcast i64* %_raw_array3925 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3926, { i64, [0 x i64] }** %_seed3927
  store i64 0, i64* %_i3928
  br label %_cond3933
_cond3933:
  %_i3929 = load i64, i64* %_i3928
  %_bop3930 = icmp slt i64 %_i3929, 2
  br i1 %_bop3930, label %_body3932, label %_post3931
_body3932:
  %_seed3934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3927
  %_i3935 = load i64, i64* %_i3928
  %_index_ptr3937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed3934, i32 0, i32 1, i64 %_i3935
  %_i3938 = load i64, i64* %_i3928
  %_bop3939 = add i64 %_i3938, 1
  %_bop3940 = mul i64 100, %_bop3939
  store i64 %_bop3940, i64* %_index_ptr3937
  %_i3941 = load i64, i64* %_i3928
  %_bop3942 = add i64 %_i3941, 1
  store i64 %_bop3942, i64* %_i3928
  br label %_cond3933
_post3931:
  %_seed3943 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3927
  %_result3944 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3943)
  call void @print_int(i64 %_result3944)
  %_str3946 = getelementptr [2 x i8], [2 x i8]* @_str_arr3947, i32 0, i32 0
  call void @print_string(i8* %_str3946)
  %_seed3949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3927
  %_result3950 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3949)
  call void @print_int(i64 %_result3950)
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
