; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %_a4200, i64 %_len4198) {
  %_a4201 = alloca { i64, [0 x i64] }*
  %_len4199 = alloca i64
  %_i4202 = alloca i64
  %_j4203 = alloca i64
  %_tmp4231 = alloca i64
  store { i64, [0 x i64] }* %_a4200, { i64, [0 x i64] }** %_a4201
  store i64 %_len4198, i64* %_len4199
  store i64 1, i64* %_i4202
  store i64 2, i64* %_j4203
  br label %_cond4209
_cond4209:
  %_i4204 = load i64, i64* %_i4202
  %_len4205 = load i64, i64* %_len4199
  %_bop4206 = icmp slt i64 %_i4204, %_len4205
  br i1 %_bop4206, label %_body4208, label %_post4207
_body4208:
  %_a4210 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4201
  %_i4211 = load i64, i64* %_i4202
  %_bop4212 = sub i64 %_i4211, 1
  %_index_ptr4214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4210, i32 0, i32 1, i64 %_bop4212
  %_index4215 = load i64, i64* %_index_ptr4214
  %_a4216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4201
  %_i4217 = load i64, i64* %_i4202
  %_index_ptr4219 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4216, i32 0, i32 1, i64 %_i4217
  %_index4220 = load i64, i64* %_index_ptr4219
  %_bop4221 = icmp sle i64 %_index4215, %_index4220
  br i1 %_bop4221, label %_then4259, label %_else4258
_then4259:
  %_j4222 = load i64, i64* %_j4203
  store i64 %_j4222, i64* %_i4202
  %_j4223 = load i64, i64* %_j4203
  %_bop4224 = add i64 %_j4223, 1
  store i64 %_bop4224, i64* %_j4203
  br label %_merge4257
_else4258:
  %_a4225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4201
  %_i4226 = load i64, i64* %_i4202
  %_bop4227 = sub i64 %_i4226, 1
  %_index_ptr4229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4225, i32 0, i32 1, i64 %_bop4227
  %_index4230 = load i64, i64* %_index_ptr4229
  store i64 %_index4230, i64* %_tmp4231
  %_a4232 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4201
  %_i4233 = load i64, i64* %_i4202
  %_bop4234 = sub i64 %_i4233, 1
  %_index_ptr4236 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4232, i32 0, i32 1, i64 %_bop4234
  %_a4237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4201
  %_i4238 = load i64, i64* %_i4202
  %_index_ptr4240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4237, i32 0, i32 1, i64 %_i4238
  %_index4241 = load i64, i64* %_index_ptr4240
  store i64 %_index4241, i64* %_index_ptr4236
  %_a4242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4201
  %_i4243 = load i64, i64* %_i4202
  %_index_ptr4245 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4242, i32 0, i32 1, i64 %_i4243
  %_tmp4246 = load i64, i64* %_tmp4231
  store i64 %_tmp4246, i64* %_index_ptr4245
  %_i4247 = load i64, i64* %_i4202
  %_bop4248 = sub i64 %_i4247, 1
  store i64 %_bop4248, i64* %_i4202
  %_i4249 = load i64, i64* %_i4202
  %_bop4250 = icmp eq i64 %_i4249, 0
  br i1 %_bop4250, label %_then4256, label %_else4255
_then4256:
  %_j4251 = load i64, i64* %_j4203
  store i64 %_j4251, i64* %_i4202
  %_j4252 = load i64, i64* %_j4203
  %_bop4253 = add i64 %_j4252, 1
  store i64 %_bop4253, i64* %_j4203
  br label %_merge4254
_else4255:
  br label %_merge4254
_merge4254:
  br label %_merge4257
_merge4257:
  br label %_cond4209
_post4207:
  ret void
}

define i64 @program(i64 %_argc4167, { i64, [0 x i8*] }* %_argv4165) {
  %_argc4168 = alloca i64
  %_argv4166 = alloca { i64, [0 x i8*] }*
  %_arr4179 = alloca { i64, [0 x i64] }*
  %_len4180 = alloca i64
  %_i4184 = alloca i64
  store i64 %_argc4167, i64* %_argc4168
  store { i64, [0 x i8*] }* %_argv4165, { i64, [0 x i8*] }** %_argv4166
  %_raw_array4169 = call i64* @oat_alloc_array(i64 8)
  %_array4170 = bitcast i64* %_raw_array4169 to { i64, [0 x i64] }*
  %_ind4171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind4171
  %_ind4172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind4172
  %_ind4173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4173
  %_ind4174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4174
  %_ind4175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind4175
  %_ind4176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind4176
  %_ind4177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind4177
  %_ind4178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4170, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind4178
  store { i64, [0 x i64] }* %_array4170, { i64, [0 x i64] }** %_arr4179
  store i64 8, i64* %_len4180
  %_len4181 = load i64, i64* %_len4180
  %_arr4182 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4179
  call void @gnomeSort({ i64, [0 x i64] }* %_arr4182, i64 %_len4181)
  store i64 0, i64* %_i4184
  br label %_cond4189
_cond4189:
  %_i4185 = load i64, i64* %_i4184
  %_bop4186 = icmp slt i64 %_i4185, 8
  br i1 %_bop4186, label %_body4188, label %_post4187
_body4188:
  %_arr4190 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4179
  %_i4191 = load i64, i64* %_i4184
  %_index_ptr4193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4190, i32 0, i32 1, i64 %_i4191
  %_index4194 = load i64, i64* %_index_ptr4193
  call void @print_int(i64 %_index4194)
  %_i4196 = load i64, i64* %_i4184
  %_bop4197 = add i64 %_i4196, 1
  store i64 %_bop4197, i64* %_i4184
  br label %_cond4189
_post4187:
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
