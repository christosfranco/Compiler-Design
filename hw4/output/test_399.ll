; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %_n4011) {
  %_n4012 = alloca i64
  %_arr4016 = alloca { i64, [0 x i1] }*
  %_i4017 = alloca i64
  %_i4036 = alloca i64
  %_j4050 = alloca i64
  %_count4069 = alloca i64
  %_i4070 = alloca i64
  store i64 %_n4011, i64* %_n4012
  %_n4013 = load i64, i64* %_n4012
  %_raw_array4014 = call i64* @oat_alloc_array(i64 %_n4013)
  %_array4015 = bitcast i64* %_raw_array4014 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4015, { i64, [0 x i1] }** %_arr4016
  store i64 0, i64* %_i4017
  br label %_cond4023
_cond4023:
  %_i4018 = load i64, i64* %_i4017
  %_n4019 = load i64, i64* %_n4012
  %_bop4020 = icmp slt i64 %_i4018, %_n4019
  br i1 %_bop4020, label %_body4022, label %_post4021
_body4022:
  %_arr4024 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4016
  %_i4025 = load i64, i64* %_i4017
  %_index_ptr4027 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4024, i32 0, i32 1, i64 %_i4025
  store i1 1, i1* %_index_ptr4027
  %_i4028 = load i64, i64* %_i4017
  %_bop4029 = add i64 %_i4028, 1
  store i64 %_bop4029, i64* %_i4017
  br label %_cond4023
_post4021:
  %_arr4030 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4016
  %_index_ptr4032 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4030, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr4032
  %_arr4033 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4016
  %_index_ptr4035 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4033, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr4035
  store i64 0, i64* %_i4036
  br label %_cond4042
_cond4042:
  %_i4037 = load i64, i64* %_i4036
  %_n4038 = load i64, i64* %_n4012
  %_bop4039 = icmp slt i64 %_i4037, %_n4038
  br i1 %_bop4039, label %_body4041, label %_post4040
_body4041:
  %_arr4043 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4016
  %_i4044 = load i64, i64* %_i4036
  %_index_ptr4046 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4043, i32 0, i32 1, i64 %_i4044
  %_index4047 = load i1, i1* %_index_ptr4046
  br i1 %_index4047, label %_then4066, label %_else4065
_then4066:
  %_i4048 = load i64, i64* %_i4036
  %_bop4049 = mul i64 %_i4048, 2
  store i64 %_bop4049, i64* %_j4050
  br label %_cond4056
_cond4056:
  %_j4051 = load i64, i64* %_j4050
  %_n4052 = load i64, i64* %_n4012
  %_bop4053 = icmp slt i64 %_j4051, %_n4052
  br i1 %_bop4053, label %_body4055, label %_post4054
_body4055:
  %_arr4057 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4016
  %_j4058 = load i64, i64* %_j4050
  %_index_ptr4060 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4057, i32 0, i32 1, i64 %_j4058
  store i1 0, i1* %_index_ptr4060
  %_j4061 = load i64, i64* %_j4050
  %_i4062 = load i64, i64* %_i4036
  %_bop4063 = add i64 %_j4061, %_i4062
  store i64 %_bop4063, i64* %_j4050
  br label %_cond4056
_post4054:
  br label %_merge4064
_else4065:
  br label %_merge4064
_merge4064:
  %_i4067 = load i64, i64* %_i4036
  %_bop4068 = add i64 %_i4067, 1
  store i64 %_bop4068, i64* %_i4036
  br label %_cond4042
_post4040:
  store i64 0, i64* %_count4069
  store i64 0, i64* %_i4070
  br label %_cond4076
_cond4076:
  %_i4071 = load i64, i64* %_i4070
  %_n4072 = load i64, i64* %_n4012
  %_bop4073 = icmp slt i64 %_i4071, %_n4072
  br i1 %_bop4073, label %_body4075, label %_post4074
_body4075:
  %_arr4077 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr4016
  %_i4078 = load i64, i64* %_i4070
  %_index_ptr4080 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr4077, i32 0, i32 1, i64 %_i4078
  %_index4081 = load i1, i1* %_index_ptr4080
  br i1 %_index4081, label %_then4086, label %_else4085
_then4086:
  %_count4082 = load i64, i64* %_count4069
  %_bop4083 = add i64 %_count4082, 1
  store i64 %_bop4083, i64* %_count4069
  br label %_merge4084
_else4085:
  br label %_merge4084
_merge4084:
  %_i4087 = load i64, i64* %_i4070
  %_bop4088 = add i64 %_i4087, 1
  store i64 %_bop4088, i64* %_i4070
  br label %_cond4076
_post4074:
  %_count4089 = load i64, i64* %_count4069
  ret i64 %_count4089
}

define i64 @program(i64 %_argc4006, { i64, [0 x i8*] }* %_argv4004) {
  %_argc4007 = alloca i64
  %_argv4005 = alloca { i64, [0 x i8*] }*
  %_n4008 = alloca i64
  store i64 %_argc4006, i64* %_argc4007
  store { i64, [0 x i8*] }* %_argv4004, { i64, [0 x i8*] }** %_argv4005
  store i64 100, i64* %_n4008
  %_n4009 = load i64, i64* %_n4008
  %_result4010 = call i64 @sieve(i64 %_n4009)
  ret i64 %_result4010
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
