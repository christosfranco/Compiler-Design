; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %_n4330) {
  %_n4331 = alloca i64
  store i64 %_n4330, i64* %_n4331
  %_n4332 = load i64, i64* %_n4331
  %_bop4333 = icmp eq i64 %_n4332, 0
  br i1 %_bop4333, label %_then4336, label %_else4335
_then4336:
  ret i64 0
_else4335:
  br label %_merge4334
_merge4334:
  %_n4337 = load i64, i64* %_n4331
  %_bop4338 = icmp eq i64 %_n4337, 1
  br i1 %_bop4338, label %_then4341, label %_else4340
_then4341:
  ret i64 1
_else4340:
  br label %_merge4339
_merge4339:
  %_n4342 = load i64, i64* %_n4331
  %_bop4343 = sub i64 %_n4342, 1
  %_result4344 = call i64 @fibR(i64 %_bop4343)
  %_n4345 = load i64, i64* %_n4331
  %_bop4346 = sub i64 %_n4345, 2
  %_result4347 = call i64 @fibR(i64 %_bop4346)
  %_bop4348 = add i64 %_result4344, %_result4347
  ret i64 %_bop4348
}

define i64 @fibI(i64 %_n4297) {
  %_n4298 = alloca i64
  %_a4299 = alloca i64
  %_b4300 = alloca i64
  %_old4320 = alloca i64
  store i64 %_n4297, i64* %_n4298
  store i64 0, i64* %_a4299
  store i64 1, i64* %_b4300
  %_n4301 = load i64, i64* %_n4298
  %_bop4302 = icmp eq i64 %_n4301, 0
  br i1 %_bop4302, label %_then4306, label %_else4305
_then4306:
  %_a4303 = load i64, i64* %_a4299
  ret i64 %_a4303
_else4305:
  br label %_merge4304
_merge4304:
  %_n4307 = load i64, i64* %_n4298
  %_bop4308 = icmp eq i64 %_n4307, 1
  br i1 %_bop4308, label %_then4312, label %_else4311
_then4312:
  %_b4309 = load i64, i64* %_b4300
  ret i64 %_b4309
_else4311:
  br label %_merge4310
_merge4310:
  br label %_cond4318
_cond4318:
  %_n4313 = load i64, i64* %_n4298
  %_bop4314 = sub i64 %_n4313, 2
  %_bop4315 = icmp sgt i64 %_bop4314, 0
  br i1 %_bop4315, label %_body4317, label %_post4316
_body4317:
  %_b4319 = load i64, i64* %_b4300
  store i64 %_b4319, i64* %_old4320
  %_b4321 = load i64, i64* %_b4300
  %_a4322 = load i64, i64* %_a4299
  %_bop4323 = add i64 %_b4321, %_a4322
  store i64 %_bop4323, i64* %_b4300
  %_old4324 = load i64, i64* %_old4320
  store i64 %_old4324, i64* %_a4299
  %_n4325 = load i64, i64* %_n4298
  %_bop4326 = sub i64 %_n4325, 1
  store i64 %_bop4326, i64* %_n4298
  br label %_cond4318
_post4316:
  %_a4327 = load i64, i64* %_a4299
  %_b4328 = load i64, i64* %_b4300
  %_bop4329 = add i64 %_a4327, %_b4328
  ret i64 %_bop4329
}

define i64 @program(i64 %_argc4285, { i64, [0 x i8*] }* %_argv4283) {
  %_argc4286 = alloca i64
  %_argv4284 = alloca { i64, [0 x i8*] }*
  %_val4287 = alloca i64
  store i64 %_argc4285, i64* %_argc4286
  store { i64, [0 x i8*] }* %_argv4283, { i64, [0 x i8*] }** %_argv4284
  store i64 1, i64* %_val4287
  %_result4288 = call i64 @fibR(i64 12)
  %_bop4289 = icmp eq i64 %_result4288, 144
  %_result4290 = call i64 @fibI(i64 12)
  %_bop4291 = icmp eq i64 %_result4290, 144
  %_bop4292 = and i1 %_bop4289, %_bop4291
  br i1 %_bop4292, label %_then4295, label %_else4294
_then4295:
  store i64 0, i64* %_val4287
  br label %_merge4293
_else4294:
  br label %_merge4293
_merge4293:
  %_val4296 = load i64, i64* %_val4287
  ret i64 %_val4296
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
