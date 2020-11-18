; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr4108 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr4251, i64 %_len4249) {
  %_arr4252 = alloca { i64, [0 x i64] }*
  %_len4250 = alloca i64
  %_min4257 = alloca i64
  %_i4258 = alloca i64
  store { i64, [0 x i64] }* %_arr4251, { i64, [0 x i64] }** %_arr4252
  store i64 %_len4249, i64* %_len4250
  %_arr4253 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4252
  %_index_ptr4255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4253, i32 0, i32 1, i32 0
  %_index4256 = load i64, i64* %_index_ptr4255
  store i64 %_index4256, i64* %_min4257
  store i64 0, i64* %_i4258
  br label %_cond4264
_cond4264:
  %_i4259 = load i64, i64* %_i4258
  %_len4260 = load i64, i64* %_len4250
  %_bop4261 = icmp slt i64 %_i4259, %_len4260
  br i1 %_bop4261, label %_body4263, label %_post4262
_body4263:
  %_arr4265 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4252
  %_i4266 = load i64, i64* %_i4258
  %_index_ptr4268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4265, i32 0, i32 1, i64 %_i4266
  %_index4269 = load i64, i64* %_index_ptr4268
  %_min4270 = load i64, i64* %_min4257
  %_bop4271 = icmp slt i64 %_index4269, %_min4270
  br i1 %_bop4271, label %_then4279, label %_else4278
_then4279:
  %_arr4272 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4252
  %_i4273 = load i64, i64* %_i4258
  %_index_ptr4275 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4272, i32 0, i32 1, i64 %_i4273
  %_index4276 = load i64, i64* %_index_ptr4275
  store i64 %_index4276, i64* %_min4257
  br label %_merge4277
_else4278:
  br label %_merge4277
_merge4277:
  %_i4280 = load i64, i64* %_i4258
  %_bop4281 = add i64 %_i4280, 1
  store i64 %_bop4281, i64* %_i4258
  br label %_cond4264
_post4262:
  %_min4282 = load i64, i64* %_min4257
  ret i64 %_min4282
}

define i64 @max({ i64, [0 x i64] }* %_arr4217, i64 %_len4215) {
  %_arr4218 = alloca { i64, [0 x i64] }*
  %_len4216 = alloca i64
  %_max4223 = alloca i64
  %_i4224 = alloca i64
  store { i64, [0 x i64] }* %_arr4217, { i64, [0 x i64] }** %_arr4218
  store i64 %_len4215, i64* %_len4216
  %_arr4219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4218
  %_index_ptr4221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4219, i32 0, i32 1, i32 0
  %_index4222 = load i64, i64* %_index_ptr4221
  store i64 %_index4222, i64* %_max4223
  store i64 0, i64* %_i4224
  br label %_cond4230
_cond4230:
  %_i4225 = load i64, i64* %_i4224
  %_len4226 = load i64, i64* %_len4216
  %_bop4227 = icmp slt i64 %_i4225, %_len4226
  br i1 %_bop4227, label %_body4229, label %_post4228
_body4229:
  %_arr4231 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4218
  %_i4232 = load i64, i64* %_i4224
  %_index_ptr4234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4231, i32 0, i32 1, i64 %_i4232
  %_index4235 = load i64, i64* %_index_ptr4234
  %_max4236 = load i64, i64* %_max4223
  %_bop4237 = icmp sgt i64 %_index4235, %_max4236
  br i1 %_bop4237, label %_then4245, label %_else4244
_then4245:
  %_arr4238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4218
  %_i4239 = load i64, i64* %_i4224
  %_index_ptr4241 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4238, i32 0, i32 1, i64 %_i4239
  %_index4242 = load i64, i64* %_index_ptr4241
  store i64 %_index4242, i64* %_max4223
  br label %_merge4243
_else4244:
  br label %_merge4243
_merge4243:
  %_i4246 = load i64, i64* %_i4224
  %_bop4247 = add i64 %_i4246, 1
  store i64 %_bop4247, i64* %_i4224
  br label %_cond4230
_post4228:
  %_max4248 = load i64, i64* %_max4223
  ret i64 %_max4248
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4119, i64 %_len4117) {
  %_arr4120 = alloca { i64, [0 x i64] }*
  %_len4118 = alloca i64
  %_min4124 = alloca i64
  %_max4128 = alloca i64
  %_counts4135 = alloca { i64, [0 x i64] }*
  %_i4136 = alloca i64
  %_i4168 = alloca i64
  %_j4169 = alloca i64
  %_out4173 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr4119, { i64, [0 x i64] }** %_arr4120
  store i64 %_len4117, i64* %_len4118
  %_len4121 = load i64, i64* %_len4118
  %_arr4122 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4120
  %_result4123 = call i64 @min({ i64, [0 x i64] }* %_arr4122, i64 %_len4121)
  store i64 %_result4123, i64* %_min4124
  %_len4125 = load i64, i64* %_len4118
  %_arr4126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4120
  %_result4127 = call i64 @max({ i64, [0 x i64] }* %_arr4126, i64 %_len4125)
  store i64 %_result4127, i64* %_max4128
  %_max4129 = load i64, i64* %_max4128
  %_min4130 = load i64, i64* %_min4124
  %_bop4131 = sub i64 %_max4129, %_min4130
  %_bop4132 = add i64 %_bop4131, 1
  %_raw_array4133 = call i64* @oat_alloc_array(i64 %_bop4132)
  %_array4134 = bitcast i64* %_raw_array4133 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4134, { i64, [0 x i64] }** %_counts4135
  store i64 0, i64* %_i4136
  br label %_cond4142
_cond4142:
  %_i4137 = load i64, i64* %_i4136
  %_len4138 = load i64, i64* %_len4118
  %_bop4139 = icmp slt i64 %_i4137, %_len4138
  br i1 %_bop4139, label %_body4141, label %_post4140
_body4141:
  %_counts4143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4135
  %_arr4144 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4120
  %_i4145 = load i64, i64* %_i4136
  %_index_ptr4147 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4144, i32 0, i32 1, i64 %_i4145
  %_index4148 = load i64, i64* %_index_ptr4147
  %_min4149 = load i64, i64* %_min4124
  %_bop4150 = sub i64 %_index4148, %_min4149
  %_index_ptr4152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4143, i32 0, i32 1, i64 %_bop4150
  %_counts4153 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4135
  %_arr4154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4120
  %_i4155 = load i64, i64* %_i4136
  %_index_ptr4157 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4154, i32 0, i32 1, i64 %_i4155
  %_index4158 = load i64, i64* %_index_ptr4157
  %_min4159 = load i64, i64* %_min4124
  %_bop4160 = sub i64 %_index4158, %_min4159
  %_index_ptr4162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4153, i32 0, i32 1, i64 %_bop4160
  %_index4163 = load i64, i64* %_index_ptr4162
  %_bop4164 = add i64 %_index4163, 1
  store i64 %_bop4164, i64* %_index_ptr4152
  %_i4165 = load i64, i64* %_i4136
  %_bop4166 = add i64 %_i4165, 1
  store i64 %_bop4166, i64* %_i4136
  br label %_cond4142
_post4140:
  %_min4167 = load i64, i64* %_min4124
  store i64 %_min4167, i64* %_i4168
  store i64 0, i64* %_j4169
  %_len4170 = load i64, i64* %_len4118
  %_raw_array4171 = call i64* @oat_alloc_array(i64 %_len4170)
  %_array4172 = bitcast i64* %_raw_array4171 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4172, { i64, [0 x i64] }** %_out4173
  br label %_cond4179
_cond4179:
  %_i4174 = load i64, i64* %_i4168
  %_max4175 = load i64, i64* %_max4128
  %_bop4176 = icmp sle i64 %_i4174, %_max4175
  br i1 %_bop4176, label %_body4178, label %_post4177
_body4178:
  %_counts4180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4135
  %_i4181 = load i64, i64* %_i4168
  %_min4182 = load i64, i64* %_min4124
  %_bop4183 = sub i64 %_i4181, %_min4182
  %_index_ptr4185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4180, i32 0, i32 1, i64 %_bop4183
  %_index4186 = load i64, i64* %_index_ptr4185
  %_bop4187 = icmp sgt i64 %_index4186, 0
  br i1 %_bop4187, label %_then4213, label %_else4212
_then4213:
  %_out4188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4173
  %_j4189 = load i64, i64* %_j4169
  %_index_ptr4191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4188, i32 0, i32 1, i64 %_j4189
  %_i4192 = load i64, i64* %_i4168
  store i64 %_i4192, i64* %_index_ptr4191
  %_counts4193 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4135
  %_i4194 = load i64, i64* %_i4168
  %_min4195 = load i64, i64* %_min4124
  %_bop4196 = sub i64 %_i4194, %_min4195
  %_index_ptr4198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4193, i32 0, i32 1, i64 %_bop4196
  %_counts4199 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4135
  %_i4200 = load i64, i64* %_i4168
  %_min4201 = load i64, i64* %_min4124
  %_bop4202 = sub i64 %_i4200, %_min4201
  %_index_ptr4204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4199, i32 0, i32 1, i64 %_bop4202
  %_index4205 = load i64, i64* %_index_ptr4204
  %_bop4206 = sub i64 %_index4205, 1
  store i64 %_bop4206, i64* %_index_ptr4198
  %_j4207 = load i64, i64* %_j4169
  %_bop4208 = add i64 %_j4207, 1
  store i64 %_bop4208, i64* %_j4169
  br label %_merge4211
_else4212:
  %_i4209 = load i64, i64* %_i4168
  %_bop4210 = add i64 %_i4209, 1
  store i64 %_bop4210, i64* %_i4168
  br label %_merge4211
_merge4211:
  br label %_cond4179
_post4177:
  %_out4214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4173
  ret { i64, [0 x i64] }* %_out4214
}

define i64 @program(i64 %_argc4089, { i64, [0 x i8*] }* %_argv4087) {
  %_argc4090 = alloca i64
  %_argv4088 = alloca { i64, [0 x i8*] }*
  %_arr4102 = alloca { i64, [0 x i64] }*
  %_len4103 = alloca i64
  %_sorted4113 = alloca { i64, [0 x i64] }*
  store i64 %_argc4089, i64* %_argc4090
  store { i64, [0 x i8*] }* %_argv4087, { i64, [0 x i8*] }** %_argv4088
  %_raw_array4091 = call i64* @oat_alloc_array(i64 9)
  %_array4092 = bitcast i64* %_raw_array4091 to { i64, [0 x i64] }*
  %_ind4093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind4093
  %_ind4094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind4094
  %_ind4095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind4095
  %_ind4096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind4096
  %_ind4097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind4097
  %_ind4098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind4098
  %_ind4099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind4099
  %_ind4100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind4100
  %_ind4101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4092, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind4101
  store { i64, [0 x i64] }* %_array4092, { i64, [0 x i64] }** %_arr4102
  store i64 9, i64* %_len4103
  %_arr4104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4102
  %_result4105 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4104)
  call void @print_string(i8* %_result4105)
  %_str4107 = getelementptr [2 x i8], [2 x i8]* @_str_arr4108, i32 0, i32 0
  call void @print_string(i8* %_str4107)
  %_len4110 = load i64, i64* %_len4103
  %_arr4111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4102
  %_result4112 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4111, i64 %_len4110)
  store { i64, [0 x i64] }* %_result4112, { i64, [0 x i64] }** %_sorted4113
  %_sorted4114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4113
  %_result4115 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4114)
  call void @print_string(i8* %_result4115)
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
