; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %_array4127, i64 %_i4125, i64 %_len4123) {
  %_array4128 = alloca { i64, [0 x i64] }*
  %_i4126 = alloca i64
  %_len4124 = alloca i64
  %_l4131 = alloca i64
  %_r4134 = alloca i64
  %_tmp4135 = alloca i64
  %_m4137 = alloca i64
  store { i64, [0 x i64] }* %_array4127, { i64, [0 x i64] }** %_array4128
  store i64 %_i4125, i64* %_i4126
  store i64 %_len4123, i64* %_len4124
  %_i4129 = load i64, i64* %_i4126
  %_bop4130 = mul i64 %_i4129, 2
  store i64 %_bop4130, i64* %_l4131
  %_i4132 = load i64, i64* %_i4126
  %_bop4133 = add i64 %_i4132, 1
  store i64 %_bop4133, i64* %_r4134
  store i64 0, i64* %_tmp4135
  %_i4136 = load i64, i64* %_i4126
  store i64 %_i4136, i64* %_m4137
  %_l4138 = load i64, i64* %_l4131
  %_len4139 = load i64, i64* %_len4124
  %_bop4140 = icmp slt i64 %_l4138, %_len4139
  br i1 %_bop4140, label %_then4156, label %_else4155
_then4156:
  %_array4141 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_l4142 = load i64, i64* %_l4131
  %_index_ptr4143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4141, i32 0, i32 1, i64 %_l4142
  %_index4144 = load i64, i64* %_index_ptr4143
  %_array4145 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_m4146 = load i64, i64* %_m4137
  %_index_ptr4147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4145, i32 0, i32 1, i64 %_m4146
  %_index4148 = load i64, i64* %_index_ptr4147
  %_bop4149 = icmp sgt i64 %_index4144, %_index4148
  br i1 %_bop4149, label %_then4153, label %_else4152
_then4153:
  %_l4150 = load i64, i64* %_l4131
  store i64 %_l4150, i64* %_m4137
  br label %_merge4151
_else4152:
  br label %_merge4151
_merge4151:
  br label %_merge4154
_else4155:
  br label %_merge4154
_merge4154:
  %_r4157 = load i64, i64* %_r4134
  %_len4158 = load i64, i64* %_len4124
  %_bop4159 = icmp slt i64 %_r4157, %_len4158
  br i1 %_bop4159, label %_then4175, label %_else4174
_then4175:
  %_array4160 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_r4161 = load i64, i64* %_r4134
  %_index_ptr4162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4160, i32 0, i32 1, i64 %_r4161
  %_index4163 = load i64, i64* %_index_ptr4162
  %_array4164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_m4165 = load i64, i64* %_m4137
  %_index_ptr4166 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4164, i32 0, i32 1, i64 %_m4165
  %_index4167 = load i64, i64* %_index_ptr4166
  %_bop4168 = icmp sgt i64 %_index4163, %_index4167
  br i1 %_bop4168, label %_then4172, label %_else4171
_then4172:
  %_r4169 = load i64, i64* %_r4134
  store i64 %_r4169, i64* %_m4137
  br label %_merge4170
_else4171:
  br label %_merge4170
_merge4170:
  br label %_merge4173
_else4174:
  br label %_merge4173
_merge4173:
  %_m4176 = load i64, i64* %_m4137
  %_i4177 = load i64, i64* %_i4126
  %_bop4178 = icmp ne i64 %_m4176, %_i4177
  br i1 %_bop4178, label %_then4200, label %_else4199
_then4200:
  %_array4179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_i4180 = load i64, i64* %_i4126
  %_index_ptr4181 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4179, i32 0, i32 1, i64 %_i4180
  %_index4182 = load i64, i64* %_index_ptr4181
  store i64 %_index4182, i64* %_tmp4135
  %_array4183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_i4184 = load i64, i64* %_i4126
  %_index_ptr4185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4183, i32 0, i32 1, i64 %_i4184
  %_array4186 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_m4187 = load i64, i64* %_m4137
  %_index_ptr4188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4186, i32 0, i32 1, i64 %_m4187
  %_index4189 = load i64, i64* %_index_ptr4188
  store i64 %_index4189, i64* %_index_ptr4185
  %_array4190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  %_m4191 = load i64, i64* %_m4137
  %_index_ptr4192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4190, i32 0, i32 1, i64 %_m4191
  %_tmp4193 = load i64, i64* %_tmp4135
  store i64 %_tmp4193, i64* %_index_ptr4192
  %_len4194 = load i64, i64* %_len4124
  %_m4195 = load i64, i64* %_m4137
  %_array4196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4128
  call void @min_heapify({ i64, [0 x i64] }* %_array4196, i64 %_m4195, i64 %_len4194)
  br label %_merge4198
_else4199:
  br label %_merge4198
_merge4198:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %_array4108, i64 %_len4106) {
  %_array4109 = alloca { i64, [0 x i64] }*
  %_len4107 = alloca i64
  %_i4111 = alloca i64
  store { i64, [0 x i64] }* %_array4108, { i64, [0 x i64] }** %_array4109
  store i64 %_len4106, i64* %_len4107
  %_len4110 = load i64, i64* %_len4107
  store i64 %_len4110, i64* %_i4111
  br label %_cond4116
_cond4116:
  %_i4112 = load i64, i64* %_i4111
  %_bop4113 = icmp sge i64 %_i4112, 1
  br i1 %_bop4113, label %_body4115, label %_post4114
_body4115:
  %_len4117 = load i64, i64* %_len4107
  %_i4118 = load i64, i64* %_i4111
  %_array4119 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4109
  call void @min_heapify({ i64, [0 x i64] }* %_array4119, i64 %_i4118, i64 %_len4117)
  %_i4121 = load i64, i64* %_i4111
  %_bop4122 = sub i64 %_i4121, 1
  store i64 %_bop4122, i64* %_i4111
  br label %_cond4116
_post4114:
  ret void
}

define i64 @program(i64 %_argc4052, { i64, [0 x i8*] }* %_argv4050) {
  %_argc4053 = alloca i64
  %_argv4051 = alloca { i64, [0 x i8*] }*
  %_array4067 = alloca { i64, [0 x i64] }*
  %_end_result4081 = alloca { i64, [0 x i64] }*
  %_same4084 = alloca i64
  %_i4085 = alloca i64
  store i64 %_argc4052, i64* %_argc4053
  store { i64, [0 x i8*] }* %_argv4050, { i64, [0 x i8*] }** %_argv4051
  %_raw_array4054 = call i64* @oat_alloc_array(i64 11)
  %_array4055 = bitcast i64* %_raw_array4054 to { i64, [0 x i64] }*
  %_ind4056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4056
  %_ind4057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind4057
  %_ind4058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4058
  %_ind4059 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4059
  %_ind4060 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4060
  %_ind4061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind4061
  %_ind4062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4062
  %_ind4063 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4063
  %_ind4064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4064
  %_ind4065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind4065
  %_ind4066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4055, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind4066
  store { i64, [0 x i64] }* %_array4055, { i64, [0 x i64] }** %_array4067
  %_raw_array4068 = call i64* @oat_alloc_array(i64 11)
  %_array4069 = bitcast i64* %_raw_array4068 to { i64, [0 x i64] }*
  %_ind4070 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4070
  %_ind4071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4071
  %_ind4072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind4072
  %_ind4073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4073
  %_ind4074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4074
  %_ind4075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind4075
  %_ind4076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4076
  %_ind4077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4077
  %_ind4078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4078
  %_ind4079 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind4079
  %_ind4080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4069, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind4080
  store { i64, [0 x i64] }* %_array4069, { i64, [0 x i64] }** %_end_result4081
  %_array4082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  call void @make_min_heap({ i64, [0 x i64] }* %_array4082, i64 10)
  store i64 0, i64* %_same4084
  store i64 0, i64* %_i4085
  br label %_cond4090
_cond4090:
  %_i4086 = load i64, i64* %_i4085
  %_bop4087 = icmp slt i64 %_i4086, 11
  br i1 %_bop4087, label %_body4089, label %_post4088
_body4089:
  %_array4091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4067
  %_i4092 = load i64, i64* %_i4085
  %_index_ptr4093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4091, i32 0, i32 1, i64 %_i4092
  %_index4094 = load i64, i64* %_index_ptr4093
  %_end_result4095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4081
  %_i4096 = load i64, i64* %_i4085
  %_index_ptr4097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result4095, i32 0, i32 1, i64 %_i4096
  %_index4098 = load i64, i64* %_index_ptr4097
  %_bop4099 = icmp ne i64 %_index4094, %_index4098
  br i1 %_bop4099, label %_then4102, label %_else4101
_then4102:
  store i64 1, i64* %_same4084
  br label %_merge4100
_else4101:
  br label %_merge4100
_merge4100:
  %_i4103 = load i64, i64* %_i4085
  %_bop4104 = add i64 %_i4103, 1
  store i64 %_bop4104, i64* %_i4085
  br label %_cond4090
_post4088:
  %_same4105 = load i64, i64* %_same4084
  ret i64 %_same4105
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
