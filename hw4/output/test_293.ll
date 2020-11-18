; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr4111 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr4254, i64 %_len4252) {
  %_arr4255 = alloca { i64, [0 x i64] }*
  %_len4253 = alloca i64
  %_min4260 = alloca i64
  %_i4261 = alloca i64
  store { i64, [0 x i64] }* %_arr4254, { i64, [0 x i64] }** %_arr4255
  store i64 %_len4252, i64* %_len4253
  %_arr4256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4255
  %_index_ptr4258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4256, i32 0, i32 1, i32 0
  %_index4259 = load i64, i64* %_index_ptr4258
  store i64 %_index4259, i64* %_min4260
  store i64 0, i64* %_i4261
  br label %_cond4267
_cond4267:
  %_i4262 = load i64, i64* %_i4261
  %_len4263 = load i64, i64* %_len4253
  %_bop4264 = icmp slt i64 %_i4262, %_len4263
  br i1 %_bop4264, label %_body4266, label %_post4265
_body4266:
  %_arr4268 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4255
  %_i4269 = load i64, i64* %_i4261
  %_index_ptr4271 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4268, i32 0, i32 1, i64 %_i4269
  %_index4272 = load i64, i64* %_index_ptr4271
  %_min4273 = load i64, i64* %_min4260
  %_bop4274 = icmp slt i64 %_index4272, %_min4273
  br i1 %_bop4274, label %_then4282, label %_else4281
_then4282:
  %_arr4275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4255
  %_i4276 = load i64, i64* %_i4261
  %_index_ptr4278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4275, i32 0, i32 1, i64 %_i4276
  %_index4279 = load i64, i64* %_index_ptr4278
  store i64 %_index4279, i64* %_min4260
  br label %_merge4280
_else4281:
  br label %_merge4280
_merge4280:
  %_i4283 = load i64, i64* %_i4261
  %_bop4284 = add i64 %_i4283, 1
  store i64 %_bop4284, i64* %_i4261
  br label %_cond4267
_post4265:
  %_min4285 = load i64, i64* %_min4260
  ret i64 %_min4285
}

define i64 @max({ i64, [0 x i64] }* %_arr4220, i64 %_len4218) {
  %_arr4221 = alloca { i64, [0 x i64] }*
  %_len4219 = alloca i64
  %_max4226 = alloca i64
  %_i4227 = alloca i64
  store { i64, [0 x i64] }* %_arr4220, { i64, [0 x i64] }** %_arr4221
  store i64 %_len4218, i64* %_len4219
  %_arr4222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4221
  %_index_ptr4224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4222, i32 0, i32 1, i32 0
  %_index4225 = load i64, i64* %_index_ptr4224
  store i64 %_index4225, i64* %_max4226
  store i64 0, i64* %_i4227
  br label %_cond4233
_cond4233:
  %_i4228 = load i64, i64* %_i4227
  %_len4229 = load i64, i64* %_len4219
  %_bop4230 = icmp slt i64 %_i4228, %_len4229
  br i1 %_bop4230, label %_body4232, label %_post4231
_body4232:
  %_arr4234 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4221
  %_i4235 = load i64, i64* %_i4227
  %_index_ptr4237 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4234, i32 0, i32 1, i64 %_i4235
  %_index4238 = load i64, i64* %_index_ptr4237
  %_max4239 = load i64, i64* %_max4226
  %_bop4240 = icmp sgt i64 %_index4238, %_max4239
  br i1 %_bop4240, label %_then4248, label %_else4247
_then4248:
  %_arr4241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4221
  %_i4242 = load i64, i64* %_i4227
  %_index_ptr4244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4241, i32 0, i32 1, i64 %_i4242
  %_index4245 = load i64, i64* %_index_ptr4244
  store i64 %_index4245, i64* %_max4226
  br label %_merge4246
_else4247:
  br label %_merge4246
_merge4246:
  %_i4249 = load i64, i64* %_i4227
  %_bop4250 = add i64 %_i4249, 1
  store i64 %_bop4250, i64* %_i4227
  br label %_cond4233
_post4231:
  %_max4251 = load i64, i64* %_max4226
  ret i64 %_max4251
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4122, i64 %_len4120) {
  %_arr4123 = alloca { i64, [0 x i64] }*
  %_len4121 = alloca i64
  %_min4127 = alloca i64
  %_max4131 = alloca i64
  %_counts4138 = alloca { i64, [0 x i64] }*
  %_i4139 = alloca i64
  %_i4171 = alloca i64
  %_j4172 = alloca i64
  %_out4176 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr4122, { i64, [0 x i64] }** %_arr4123
  store i64 %_len4120, i64* %_len4121
  %_len4124 = load i64, i64* %_len4121
  %_arr4125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4123
  %_result4126 = call i64 @min({ i64, [0 x i64] }* %_arr4125, i64 %_len4124)
  store i64 %_result4126, i64* %_min4127
  %_len4128 = load i64, i64* %_len4121
  %_arr4129 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4123
  %_result4130 = call i64 @max({ i64, [0 x i64] }* %_arr4129, i64 %_len4128)
  store i64 %_result4130, i64* %_max4131
  %_max4132 = load i64, i64* %_max4131
  %_min4133 = load i64, i64* %_min4127
  %_bop4134 = sub i64 %_max4132, %_min4133
  %_bop4135 = add i64 %_bop4134, 1
  %_raw_array4136 = call i64* @oat_alloc_array(i64 %_bop4135)
  %_array4137 = bitcast i64* %_raw_array4136 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4137, { i64, [0 x i64] }** %_counts4138
  store i64 0, i64* %_i4139
  br label %_cond4145
_cond4145:
  %_i4140 = load i64, i64* %_i4139
  %_len4141 = load i64, i64* %_len4121
  %_bop4142 = icmp slt i64 %_i4140, %_len4141
  br i1 %_bop4142, label %_body4144, label %_post4143
_body4144:
  %_counts4146 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4138
  %_arr4147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4123
  %_i4148 = load i64, i64* %_i4139
  %_index_ptr4150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4147, i32 0, i32 1, i64 %_i4148
  %_index4151 = load i64, i64* %_index_ptr4150
  %_min4152 = load i64, i64* %_min4127
  %_bop4153 = sub i64 %_index4151, %_min4152
  %_index_ptr4155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4146, i32 0, i32 1, i64 %_bop4153
  %_counts4156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4138
  %_arr4157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4123
  %_i4158 = load i64, i64* %_i4139
  %_index_ptr4160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4157, i32 0, i32 1, i64 %_i4158
  %_index4161 = load i64, i64* %_index_ptr4160
  %_min4162 = load i64, i64* %_min4127
  %_bop4163 = sub i64 %_index4161, %_min4162
  %_index_ptr4165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4156, i32 0, i32 1, i64 %_bop4163
  %_index4166 = load i64, i64* %_index_ptr4165
  %_bop4167 = add i64 %_index4166, 1
  store i64 %_bop4167, i64* %_index_ptr4155
  %_i4168 = load i64, i64* %_i4139
  %_bop4169 = add i64 %_i4168, 1
  store i64 %_bop4169, i64* %_i4139
  br label %_cond4145
_post4143:
  %_min4170 = load i64, i64* %_min4127
  store i64 %_min4170, i64* %_i4171
  store i64 0, i64* %_j4172
  %_len4173 = load i64, i64* %_len4121
  %_raw_array4174 = call i64* @oat_alloc_array(i64 %_len4173)
  %_array4175 = bitcast i64* %_raw_array4174 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4175, { i64, [0 x i64] }** %_out4176
  br label %_cond4182
_cond4182:
  %_i4177 = load i64, i64* %_i4171
  %_max4178 = load i64, i64* %_max4131
  %_bop4179 = icmp sle i64 %_i4177, %_max4178
  br i1 %_bop4179, label %_body4181, label %_post4180
_body4181:
  %_counts4183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4138
  %_i4184 = load i64, i64* %_i4171
  %_min4185 = load i64, i64* %_min4127
  %_bop4186 = sub i64 %_i4184, %_min4185
  %_index_ptr4188 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4183, i32 0, i32 1, i64 %_bop4186
  %_index4189 = load i64, i64* %_index_ptr4188
  %_bop4190 = icmp sgt i64 %_index4189, 0
  br i1 %_bop4190, label %_then4216, label %_else4215
_then4216:
  %_out4191 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4176
  %_j4192 = load i64, i64* %_j4172
  %_index_ptr4194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4191, i32 0, i32 1, i64 %_j4192
  %_i4195 = load i64, i64* %_i4171
  store i64 %_i4195, i64* %_index_ptr4194
  %_counts4196 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4138
  %_i4197 = load i64, i64* %_i4171
  %_min4198 = load i64, i64* %_min4127
  %_bop4199 = sub i64 %_i4197, %_min4198
  %_index_ptr4201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4196, i32 0, i32 1, i64 %_bop4199
  %_counts4202 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts4138
  %_i4203 = load i64, i64* %_i4171
  %_min4204 = load i64, i64* %_min4127
  %_bop4205 = sub i64 %_i4203, %_min4204
  %_index_ptr4207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts4202, i32 0, i32 1, i64 %_bop4205
  %_index4208 = load i64, i64* %_index_ptr4207
  %_bop4209 = sub i64 %_index4208, 1
  store i64 %_bop4209, i64* %_index_ptr4201
  %_j4210 = load i64, i64* %_j4172
  %_bop4211 = add i64 %_j4210, 1
  store i64 %_bop4211, i64* %_j4172
  br label %_merge4214
_else4215:
  %_i4212 = load i64, i64* %_i4171
  %_bop4213 = add i64 %_i4212, 1
  store i64 %_bop4213, i64* %_i4171
  br label %_merge4214
_merge4214:
  br label %_cond4182
_post4180:
  %_out4217 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4176
  ret { i64, [0 x i64] }* %_out4217
}

define i64 @program(i64 %_argc4092, { i64, [0 x i8*] }* %_argv4090) {
  %_argc4093 = alloca i64
  %_argv4091 = alloca { i64, [0 x i8*] }*
  %_arr4105 = alloca { i64, [0 x i64] }*
  %_len4106 = alloca i64
  %_sorted4116 = alloca { i64, [0 x i64] }*
  store i64 %_argc4092, i64* %_argc4093
  store { i64, [0 x i8*] }* %_argv4090, { i64, [0 x i8*] }** %_argv4091
  %_raw_array4094 = call i64* @oat_alloc_array(i64 9)
  %_array4095 = bitcast i64* %_raw_array4094 to { i64, [0 x i64] }*
  %_ind4096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind4096
  %_ind4097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind4097
  %_ind4098 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind4098
  %_ind4099 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind4099
  %_ind4100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind4100
  %_ind4101 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind4101
  %_ind4102 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind4102
  %_ind4103 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind4103
  %_ind4104 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4095, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind4104
  store { i64, [0 x i64] }* %_array4095, { i64, [0 x i64] }** %_arr4105
  store i64 9, i64* %_len4106
  %_arr4107 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4105
  %_result4108 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr4107)
  call void @print_string(i8* %_result4108)
  %_str4110 = getelementptr [2 x i8], [2 x i8]* @_str_arr4111, i32 0, i32 0
  call void @print_string(i8* %_str4110)
  %_len4113 = load i64, i64* %_len4106
  %_arr4114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4105
  %_result4115 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr4114, i64 %_len4113)
  store { i64, [0 x i64] }* %_result4115, { i64, [0 x i64] }** %_sorted4116
  %_sorted4117 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted4116
  %_result4118 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted4117)
  call void @print_string(i8* %_result4118)
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
