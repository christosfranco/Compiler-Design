; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %_x4212, i64 %_y4210) {
  %_x4213 = alloca i64
  %_y4211 = alloca i64
  store i64 %_x4212, i64* %_x4213
  store i64 %_y4210, i64* %_y4211
  %_x4214 = load i64, i64* %_x4213
  %_y4215 = load i64, i64* %_y4211
  %_bop4216 = icmp eq i64 %_x4214, %_y4215
  br i1 %_bop4216, label %_then4220, label %_else4219
_then4220:
  %_x4217 = load i64, i64* %_x4213
  ret i64 %_x4217
_else4219:
  br label %_merge4218
_merge4218:
  %_x4221 = load i64, i64* %_x4213
  %_bop4222 = icmp eq i64 %_x4221, 0
  br i1 %_bop4222, label %_then4226, label %_else4225
_then4226:
  %_y4223 = load i64, i64* %_y4211
  ret i64 %_y4223
_else4225:
  br label %_merge4224
_merge4224:
  %_y4227 = load i64, i64* %_y4211
  %_bop4228 = icmp eq i64 %_y4227, 0
  br i1 %_bop4228, label %_then4232, label %_else4231
_then4232:
  %_x4229 = load i64, i64* %_x4213
  ret i64 %_x4229
_else4231:
  br label %_merge4230
_merge4230:
  %_x4233 = load i64, i64* %_x4213
  %_unop4234 = xor i64 %_x4233, -1
  %_bop4235 = and i64 %_unop4234, 1
  %_bop4236 = icmp eq i64 %_bop4235, 1
  br i1 %_bop4236, label %_then4255, label %_else4254
_then4255:
  %_y4237 = load i64, i64* %_y4211
  %_bop4238 = and i64 %_y4237, 1
  %_bop4239 = icmp eq i64 %_bop4238, 1
  br i1 %_bop4239, label %_then4252, label %_else4251
_then4252:
  %_y4240 = load i64, i64* %_y4211
  %_x4241 = load i64, i64* %_x4213
  %_bop4242 = lshr i64 %_x4241, 1
  %_result4243 = call i64 @binary_gcd(i64 %_bop4242, i64 %_y4240)
  ret i64 %_result4243
_else4251:
  %_y4244 = load i64, i64* %_y4211
  %_bop4245 = lshr i64 %_y4244, 1
  %_x4246 = load i64, i64* %_x4213
  %_bop4247 = lshr i64 %_x4246, 1
  %_result4248 = call i64 @binary_gcd(i64 %_bop4247, i64 %_bop4245)
  %_bop4249 = shl i64 %_result4248, 1
  ret i64 %_bop4249
_merge4250:
  br label %_merge4253
_else4254:
  br label %_merge4253
_merge4253:
  %_y4256 = load i64, i64* %_y4211
  %_unop4257 = xor i64 %_y4256, -1
  %_bop4258 = and i64 %_unop4257, 1
  %_bop4259 = icmp eq i64 %_bop4258, 1
  br i1 %_bop4259, label %_then4266, label %_else4265
_then4266:
  %_y4260 = load i64, i64* %_y4211
  %_bop4261 = lshr i64 %_y4260, 1
  %_x4262 = load i64, i64* %_x4213
  %_result4263 = call i64 @binary_gcd(i64 %_x4262, i64 %_bop4261)
  ret i64 %_result4263
_else4265:
  br label %_merge4264
_merge4264:
  %_x4267 = load i64, i64* %_x4213
  %_y4268 = load i64, i64* %_y4211
  %_bop4269 = icmp sgt i64 %_x4267, %_y4268
  br i1 %_bop4269, label %_then4278, label %_else4277
_then4278:
  %_y4270 = load i64, i64* %_y4211
  %_x4271 = load i64, i64* %_x4213
  %_y4272 = load i64, i64* %_y4211
  %_bop4273 = sub i64 %_x4271, %_y4272
  %_bop4274 = lshr i64 %_bop4273, 1
  %_result4275 = call i64 @binary_gcd(i64 %_bop4274, i64 %_y4270)
  ret i64 %_result4275
_else4277:
  br label %_merge4276
_merge4276:
  %_x4279 = load i64, i64* %_x4213
  %_y4280 = load i64, i64* %_y4211
  %_x4281 = load i64, i64* %_x4213
  %_bop4282 = sub i64 %_y4280, %_x4281
  %_bop4283 = lshr i64 %_bop4282, 1
  %_result4284 = call i64 @binary_gcd(i64 %_bop4283, i64 %_x4279)
  ret i64 %_result4284
}

define i64 @program(i64 %_argc4203, { i64, [0 x i8*] }* %_argv4201) {
  %_argc4204 = alloca i64
  %_argv4202 = alloca { i64, [0 x i8*] }*
  %_x4205 = alloca i64
  %_y4206 = alloca i64
  store i64 %_argc4203, i64* %_argc4204
  store { i64, [0 x i8*] }* %_argv4201, { i64, [0 x i8*] }** %_argv4202
  store i64 21, i64* %_x4205
  store i64 15, i64* %_y4206
  %_y4207 = load i64, i64* %_y4206
  %_x4208 = load i64, i64* %_x4205
  %_result4209 = call i64 @binary_gcd(i64 %_x4208, i64 %_y4207)
  ret i64 %_result4209
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
