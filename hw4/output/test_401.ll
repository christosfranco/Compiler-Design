; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %_n4333) {
  %_n4334 = alloca i64
  store i64 %_n4333, i64* %_n4334
  %_n4335 = load i64, i64* %_n4334
  %_bop4336 = icmp eq i64 %_n4335, 0
  br i1 %_bop4336, label %_then4339, label %_else4338
_then4339:
  ret i64 0
_else4338:
  br label %_merge4337
_merge4337:
  %_n4340 = load i64, i64* %_n4334
  %_bop4341 = icmp eq i64 %_n4340, 1
  br i1 %_bop4341, label %_then4344, label %_else4343
_then4344:
  ret i64 1
_else4343:
  br label %_merge4342
_merge4342:
  %_n4345 = load i64, i64* %_n4334
  %_bop4346 = sub i64 %_n4345, 1
  %_result4347 = call i64 @fibR(i64 %_bop4346)
  %_n4348 = load i64, i64* %_n4334
  %_bop4349 = sub i64 %_n4348, 2
  %_result4350 = call i64 @fibR(i64 %_bop4349)
  %_bop4351 = add i64 %_result4347, %_result4350
  ret i64 %_bop4351
}

define i64 @fibI(i64 %_n4300) {
  %_n4301 = alloca i64
  %_a4302 = alloca i64
  %_b4303 = alloca i64
  %_old4323 = alloca i64
  store i64 %_n4300, i64* %_n4301
  store i64 0, i64* %_a4302
  store i64 1, i64* %_b4303
  %_n4304 = load i64, i64* %_n4301
  %_bop4305 = icmp eq i64 %_n4304, 0
  br i1 %_bop4305, label %_then4309, label %_else4308
_then4309:
  %_a4306 = load i64, i64* %_a4302
  ret i64 %_a4306
_else4308:
  br label %_merge4307
_merge4307:
  %_n4310 = load i64, i64* %_n4301
  %_bop4311 = icmp eq i64 %_n4310, 1
  br i1 %_bop4311, label %_then4315, label %_else4314
_then4315:
  %_b4312 = load i64, i64* %_b4303
  ret i64 %_b4312
_else4314:
  br label %_merge4313
_merge4313:
  br label %_cond4321
_cond4321:
  %_n4316 = load i64, i64* %_n4301
  %_bop4317 = sub i64 %_n4316, 2
  %_bop4318 = icmp sgt i64 %_bop4317, 0
  br i1 %_bop4318, label %_body4320, label %_post4319
_body4320:
  %_b4322 = load i64, i64* %_b4303
  store i64 %_b4322, i64* %_old4323
  %_b4324 = load i64, i64* %_b4303
  %_a4325 = load i64, i64* %_a4302
  %_bop4326 = add i64 %_b4324, %_a4325
  store i64 %_bop4326, i64* %_b4303
  %_old4327 = load i64, i64* %_old4323
  store i64 %_old4327, i64* %_a4302
  %_n4328 = load i64, i64* %_n4301
  %_bop4329 = sub i64 %_n4328, 1
  store i64 %_bop4329, i64* %_n4301
  br label %_cond4321
_post4319:
  %_a4330 = load i64, i64* %_a4302
  %_b4331 = load i64, i64* %_b4303
  %_bop4332 = add i64 %_a4330, %_b4331
  ret i64 %_bop4332
}

define i64 @program(i64 %_argc4288, { i64, [0 x i8*] }* %_argv4286) {
  %_argc4289 = alloca i64
  %_argv4287 = alloca { i64, [0 x i8*] }*
  %_val4290 = alloca i64
  store i64 %_argc4288, i64* %_argc4289
  store { i64, [0 x i8*] }* %_argv4286, { i64, [0 x i8*] }** %_argv4287
  store i64 1, i64* %_val4290
  %_result4291 = call i64 @fibR(i64 12)
  %_bop4292 = icmp eq i64 %_result4291, 144
  %_result4293 = call i64 @fibI(i64 12)
  %_bop4294 = icmp eq i64 %_result4293, 144
  %_bop4295 = and i1 %_bop4292, %_bop4294
  br i1 %_bop4295, label %_then4298, label %_else4297
_then4298:
  store i64 0, i64* %_val4290
  br label %_merge4296
_else4297:
  br label %_merge4296
_merge4296:
  %_val4299 = load i64, i64* %_val4290
  ret i64 %_val4299
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
