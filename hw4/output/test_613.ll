; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %_n4008) {
  %_n4009 = alloca i64
  %_arr4013 = alloca { i64, [0 x i1] }*
  %_i4014 = alloca i64
  %_i4033 = alloca i64
  %_j4047 = alloca i64
  %_count4066 = alloca i64
  %_i4067 = alloca i64
  store i64 %_n4008, i64* %_n4009
  %_n4010 = load i64, i64* %_n4009
  %_raw_array4011 = call i64* @oat_alloc_array(i64 %_n4010)
  %_array4012 = bitcast i64* %_raw_array4011 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4012, { i64, [0 x i1] }** %_arr4013
  store i64 0, i64* %_i4014
  br label %_cond4020
_cond4020:
  %_i4015 = load i64, i64* %_i4014
  %_n4016 = load i64, i64* %_n4009
  %_bop4017 = icmp slt i64 %_i4015, %_n4016
  br i1 %_bop4017, label %_body4019, label %_post4018
_body4019:
  %_arr4021 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4013
  %_i4022 = load i64, i64* %_i4014
  %_index_ptr4024 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4021, i32 0, i32 1, i64 %_i4022
  store i1 1, i1* %_index_ptr4024
  %_i4025 = load i64, i64* %_i4014
  %_bop4026 = add i64 %_i4025, 1
  store i64 %_bop4026, i64* %_i4014
  br label %_cond4020
_post4018:
  %_arr4027 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4013
  %_index_ptr4029 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4027, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr4029
  %_arr4030 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4013
  %_index_ptr4032 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4030, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr4032
  store i64 0, i64* %_i4033
  br label %_cond4039
_cond4039:
  %_i4034 = load i64, i64* %_i4033
  %_n4035 = load i64, i64* %_n4009
  %_bop4036 = icmp slt i64 %_i4034, %_n4035
  br i1 %_bop4036, label %_body4038, label %_post4037
_body4038:
  %_arr4040 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4013
  %_i4041 = load i64, i64* %_i4033
  %_index_ptr4043 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4040, i32 0, i32 1, i64 %_i4041
  %_index4044 = load i1, i1* %_index_ptr4043
  br i1 %_index4044, label %_then4063, label %_else4062
_then4063:
  %_i4045 = load i64, i64* %_i4033
  %_bop4046 = mul i64 %_i4045, 2
  store i64 %_bop4046, i64* %_j4047
  br label %_cond4053
_cond4053:
  %_j4048 = load i64, i64* %_j4047
  %_n4049 = load i64, i64* %_n4009
  %_bop4050 = icmp slt i64 %_j4048, %_n4049
  br i1 %_bop4050, label %_body4052, label %_post4051
_body4052:
  %_arr4054 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4013
  %_j4055 = load i64, i64* %_j4047
  %_index_ptr4057 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4054, i32 0, i32 1, i64 %_j4055
  store i1 0, i1* %_index_ptr4057
  %_j4058 = load i64, i64* %_j4047
  %_i4059 = load i64, i64* %_i4033
  %_bop4060 = add i64 %_j4058, %_i4059
  store i64 %_bop4060, i64* %_j4047
  br label %_cond4053
_post4051:
  br label %_merge4061
_else4062:
  br label %_merge4061
_merge4061:
  %_i4064 = load i64, i64* %_i4033
  %_bop4065 = add i64 %_i4064, 1
  store i64 %_bop4065, i64* %_i4033
  br label %_cond4039
_post4037:
  store i64 0, i64* %_count4066
  store i64 0, i64* %_i4067
  br label %_cond4073
_cond4073:
  %_i4068 = load i64, i64* %_i4067
  %_n4069 = load i64, i64* %_n4009
  %_bop4070 = icmp slt i64 %_i4068, %_n4069
  br i1 %_bop4070, label %_body4072, label %_post4071
_body4072:
  %_arr4074 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4013
  %_i4075 = load i64, i64* %_i4067
  %_index_ptr4077 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4074, i32 0, i32 1, i64 %_i4075
  %_index4078 = load i1, i1* %_index_ptr4077
  br i1 %_index4078, label %_then4083, label %_else4082
_then4083:
  %_count4079 = load i64, i64* %_count4066
  %_bop4080 = add i64 %_count4079, 1
  store i64 %_bop4080, i64* %_count4066
  br label %_merge4081
_else4082:
  br label %_merge4081
_merge4081:
  %_i4084 = load i64, i64* %_i4067
  %_bop4085 = add i64 %_i4084, 1
  store i64 %_bop4085, i64* %_i4067
  br label %_cond4073
_post4071:
  %_count4086 = load i64, i64* %_count4066
  ret i64 %_count4086
}

define i64 @program(i64 %_argc4003, { i64, [0 x i8*] }* %_argv4001) {
  %_argc4004 = alloca i64
  %_argv4002 = alloca { i64, [0 x i8*] }*
  %_n4005 = alloca i64
  store i64 %_argc4003, i64* %_argc4004
  store { i64, [0 x i8*] }* %_argv4001, { i64, [0 x i8*] }** %_argv4002
  store i64 100, i64* %_n4005
  %_n4006 = load i64, i64* %_n4005
  %_result4007 = call i64 @sieve(i64 %_n4006)
  ret i64 %_result4007
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
