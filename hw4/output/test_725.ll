; generated from: oatprograms/lfsr.oat
target triple = "x86_64-unknown-linux"
@lfsr_iterations = global i64 5
@_constant4410 = global i64 5
@lfsr_length = global i64 4
@_constant4409 = global i64 4
@lfsr_init_values = global { i64, [4 x i1] }* @_global_arr4408
@_global_arr4408 = global { i64, [4 x i1] } { i64 4, [4 x i1] [ i1 1, i1 0, i1 1, i1 0 ] }
@_constant4407 = global i1 1
@_constant4406 = global i1 0
@_constant4405 = global i1 1
@_constant4404 = global i1 0
@_str_arr4384 = global [2 x i8] c"T\00"
@_str_arr4386 = global [2 x i8] c"F\00"
@_str_arr4356 = global [2 x i8] c" \00"

define i1 @xor(i1 %_x4392, i1 %_y4390) {
  %_x4393 = alloca i1
  %_y4391 = alloca i1
  store i1 %_x4392, i1* %_x4393
  store i1 %_y4390, i1* %_y4391
  %_x4394 = load i1, i1* %_x4393
  %_y4395 = load i1, i1* %_y4391
  %_unop4396 = icmp eq i1 %_y4395, 0
  %_bop4397 = and i1 %_x4394, %_unop4396
  %_x4398 = load i1, i1* %_x4393
  %_unop4399 = icmp eq i1 %_x4398, 0
  %_y4400 = load i1, i1* %_y4391
  %_bop4401 = and i1 %_unop4399, %_y4400
  %_bop4402 = or i1 %_bop4397, %_bop4401
  ret i1 %_bop4402
}

define i8* @string_of_bool(i1 %_b4380) {
  %_b4381 = alloca i1
  store i1 %_b4380, i1* %_b4381
  %_b4382 = load i1, i1* %_b4381
  br i1 %_b4382, label %_then4389, label %_else4388
_then4389:
  %_str4383 = getelementptr [2 x i8], [2 x i8]* @_str_arr4384, i32 0, i32 0
  ret i8* %_str4383
_else4388:
  %_str4385 = getelementptr [2 x i8], [2 x i8]* @_str_arr4386, i32 0, i32 0
  ret i8* %_str4385
}

define void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4363, i64 %_len4361) {
  %_lfsr_register4364 = alloca { i64, [0 x i1] }*
  %_len4362 = alloca i64
  %_i4365 = alloca i64
  store { i64, [0 x i1] }* %_lfsr_register4363, { i64, [0 x i1] }** %_lfsr_register4364
  store i64 %_len4361, i64* %_len4362
  store i64 0, i64* %_i4365
  br label %_cond4371
_cond4371:
  %_i4366 = load i64, i64* %_i4365
  %_len4367 = load i64, i64* %_len4362
  %_bop4368 = icmp slt i64 %_i4366, %_len4367
  br i1 %_bop4368, label %_body4370, label %_post4369
_body4370:
  %_lfsr_register4372 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4364
  %_i4373 = load i64, i64* %_i4365
  %_index_ptr4374 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4372, i32 0, i32 1, i64 %_i4373
  %_index4375 = load i1, i1* %_index_ptr4374
  %_result4376 = call i8* @string_of_bool(i1 %_index4375)
  call void @print_string(i8* %_result4376)
  %_i4378 = load i64, i64* %_i4365
  %_bop4379 = add i64 %_i4378, 1
  store i64 %_bop4379, i64* %_i4365
  br label %_cond4371
_post4369:
  ret void
}

define i64 @program(i64 %_argc4287, { i64, [0 x i8*] }* %_argv4285) {
  %_argc4288 = alloca i64
  %_argv4286 = alloca { i64, [0 x i8*] }*
  %_lfsr_register4292 = alloca { i64, [0 x i1] }*
  %_i4293 = alloca i64
  %_i4309 = alloca i64
  %_new_first4327 = alloca i1
  %_j4330 = alloca i64
  store i64 %_argc4287, i64* %_argc4288
  store { i64, [0 x i8*] }* %_argv4285, { i64, [0 x i8*] }** %_argv4286
  %_lfsr_length4289 = load i64, i64* @lfsr_length
  %_raw_array4290 = call i64* @oat_alloc_array(i64 %_lfsr_length4289)
  %_array4291 = bitcast i64* %_raw_array4290 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array4291, { i64, [0 x i1] }** %_lfsr_register4292
  store i64 0, i64* %_i4293
  br label %_cond4299
_cond4299:
  %_i4294 = load i64, i64* %_i4293
  %_lfsr_length4295 = load i64, i64* @lfsr_length
  %_bop4296 = icmp slt i64 %_i4294, %_lfsr_length4295
  br i1 %_bop4296, label %_body4298, label %_post4297
_body4298:
  %_lfsr_register4300 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  %_i4301 = load i64, i64* %_i4293
  %_index_ptr4302 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4300, i32 0, i32 1, i64 %_i4301
  %_lfsr_init_values4303 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_i4304 = load i64, i64* %_i4293
  %_index_ptr4305 = getelementptr { i64, [4 x i1] }, { i64, [4 x i1] }* %_lfsr_init_values4303, i32 0, i32 1, i64 %_i4304
  %_index4306 = load i1, i1* %_index_ptr4305
  store i1 %_index4306, i1* %_index_ptr4302
  %_i4307 = load i64, i64* %_i4293
  %_bop4308 = add i64 %_i4307, 1
  store i64 %_bop4308, i64* %_i4293
  br label %_cond4299
_post4297:
  store i64 0, i64* %_i4309
  br label %_cond4315
_cond4315:
  %_i4310 = load i64, i64* %_i4309
  %_lfsr_iterations4311 = load i64, i64* @lfsr_iterations
  %_bop4312 = icmp slt i64 %_i4310, %_lfsr_iterations4311
  br i1 %_bop4312, label %_body4314, label %_post4313
_body4314:
  %_lfsr_register4316 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  %_lfsr_length4317 = load i64, i64* @lfsr_length
  %_bop4318 = sub i64 %_lfsr_length4317, 2
  %_index_ptr4319 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4316, i32 0, i32 1, i64 %_bop4318
  %_index4320 = load i1, i1* %_index_ptr4319
  %_lfsr_register4321 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  %_lfsr_length4322 = load i64, i64* @lfsr_length
  %_bop4323 = sub i64 %_lfsr_length4322, 1
  %_index_ptr4324 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4321, i32 0, i32 1, i64 %_bop4323
  %_index4325 = load i1, i1* %_index_ptr4324
  %_result4326 = call i1 @xor(i1 %_index4325, i1 %_index4320)
  store i1 %_result4326, i1* %_new_first4327
  %_lfsr_length4328 = load i64, i64* @lfsr_length
  %_bop4329 = sub i64 %_lfsr_length4328, 1
  store i64 %_bop4329, i64* %_j4330
  br label %_cond4335
_cond4335:
  %_j4331 = load i64, i64* %_j4330
  %_bop4332 = icmp sgt i64 %_j4331, 0
  br i1 %_bop4332, label %_body4334, label %_post4333
_body4334:
  %_lfsr_register4336 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  %_j4337 = load i64, i64* %_j4330
  %_index_ptr4338 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4336, i32 0, i32 1, i64 %_j4337
  %_lfsr_register4339 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  %_j4340 = load i64, i64* %_j4330
  %_bop4341 = sub i64 %_j4340, 1
  %_index_ptr4342 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4339, i32 0, i32 1, i64 %_bop4341
  %_index4343 = load i1, i1* %_index_ptr4342
  store i1 %_index4343, i1* %_index_ptr4338
  %_j4344 = load i64, i64* %_j4330
  %_bop4345 = sub i64 %_j4344, 1
  store i64 %_bop4345, i64* %_j4330
  br label %_cond4335
_post4333:
  %_lfsr_register4346 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  %_index_ptr4347 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_lfsr_register4346, i32 0, i32 1, i32 0
  %_new_first4348 = load i1, i1* %_new_first4327
  store i1 %_new_first4348, i1* %_index_ptr4347
  %_i4349 = load i64, i64* %_i4309
  %_bop4350 = add i64 %_i4349, 1
  store i64 %_bop4350, i64* %_i4309
  br label %_cond4315
_post4313:
  %_lfsr_length4351 = load i64, i64* @lfsr_length
  %_lfsr_init_values4352 = load { i64, [4 x i1] }*, { i64, [4 x i1] }** @lfsr_init_values
  %_cast4353 = bitcast { i64, [4 x i1] }* %_lfsr_init_values4352 to { i64, [0 x i1] }*
  call void @print_lfsr({ i64, [0 x i1] }* %_cast4353, i64 %_lfsr_length4351)
  %_str4355 = getelementptr [2 x i8], [2 x i8]* @_str_arr4356, i32 0, i32 0
  call void @print_string(i8* %_str4355)
  %_lfsr_length4358 = load i64, i64* @lfsr_length
  %_lfsr_register4359 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_lfsr_register4292
  call void @print_lfsr({ i64, [0 x i1] }* %_lfsr_register4359, i64 %_lfsr_length4358)
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
