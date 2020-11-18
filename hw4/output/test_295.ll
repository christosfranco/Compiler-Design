; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %_array4431, i64 %_i4429, i64 %_len4427) {
  %_array4432 = alloca { i64, [0 x i64] }*
  %_i4430 = alloca i64
  %_len4428 = alloca i64
  %_l4435 = alloca i64
  %_r4438 = alloca i64
  %_tmp4439 = alloca i64
  %_m4441 = alloca i64
  store { i64, [0 x i64] }* %_array4431, { i64, [0 x i64] }** %_array4432
  store i64 %_i4429, i64* %_i4430
  store i64 %_len4427, i64* %_len4428
  %_i4433 = load i64, i64* %_i4430
  %_bop4434 = mul i64 %_i4433, 2
  store i64 %_bop4434, i64* %_l4435
  %_i4436 = load i64, i64* %_i4430
  %_bop4437 = add i64 %_i4436, 1
  store i64 %_bop4437, i64* %_r4438
  store i64 0, i64* %_tmp4439
  %_i4440 = load i64, i64* %_i4430
  store i64 %_i4440, i64* %_m4441
  %_l4442 = load i64, i64* %_l4435
  %_len4443 = load i64, i64* %_len4428
  %_bop4444 = icmp slt i64 %_l4442, %_len4443
  br i1 %_bop4444, label %_then4462, label %_else4461
_then4462:
  %_array4445 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_l4446 = load i64, i64* %_l4435
  %_index_ptr4448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4445, i32 0, i32 1, i64 %_l4446
  %_index4449 = load i64, i64* %_index_ptr4448
  %_array4450 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_m4451 = load i64, i64* %_m4441
  %_index_ptr4453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4450, i32 0, i32 1, i64 %_m4451
  %_index4454 = load i64, i64* %_index_ptr4453
  %_bop4455 = icmp sgt i64 %_index4449, %_index4454
  br i1 %_bop4455, label %_then4459, label %_else4458
_then4459:
  %_l4456 = load i64, i64* %_l4435
  store i64 %_l4456, i64* %_m4441
  br label %_merge4457
_else4458:
  br label %_merge4457
_merge4457:
  br label %_merge4460
_else4461:
  br label %_merge4460
_merge4460:
  %_r4463 = load i64, i64* %_r4438
  %_len4464 = load i64, i64* %_len4428
  %_bop4465 = icmp slt i64 %_r4463, %_len4464
  br i1 %_bop4465, label %_then4483, label %_else4482
_then4483:
  %_array4466 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_r4467 = load i64, i64* %_r4438
  %_index_ptr4469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4466, i32 0, i32 1, i64 %_r4467
  %_index4470 = load i64, i64* %_index_ptr4469
  %_array4471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_m4472 = load i64, i64* %_m4441
  %_index_ptr4474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4471, i32 0, i32 1, i64 %_m4472
  %_index4475 = load i64, i64* %_index_ptr4474
  %_bop4476 = icmp sgt i64 %_index4470, %_index4475
  br i1 %_bop4476, label %_then4480, label %_else4479
_then4480:
  %_r4477 = load i64, i64* %_r4438
  store i64 %_r4477, i64* %_m4441
  br label %_merge4478
_else4479:
  br label %_merge4478
_merge4478:
  br label %_merge4481
_else4482:
  br label %_merge4481
_merge4481:
  %_m4484 = load i64, i64* %_m4441
  %_i4485 = load i64, i64* %_i4430
  %_bop4486 = icmp ne i64 %_m4484, %_i4485
  br i1 %_bop4486, label %_then4512, label %_else4511
_then4512:
  %_array4487 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_i4488 = load i64, i64* %_i4430
  %_index_ptr4490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4487, i32 0, i32 1, i64 %_i4488
  %_index4491 = load i64, i64* %_index_ptr4490
  store i64 %_index4491, i64* %_tmp4439
  %_array4492 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_i4493 = load i64, i64* %_i4430
  %_index_ptr4495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4492, i32 0, i32 1, i64 %_i4493
  %_array4496 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_m4497 = load i64, i64* %_m4441
  %_index_ptr4499 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4496, i32 0, i32 1, i64 %_m4497
  %_index4500 = load i64, i64* %_index_ptr4499
  store i64 %_index4500, i64* %_index_ptr4495
  %_array4501 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  %_m4502 = load i64, i64* %_m4441
  %_index_ptr4504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4501, i32 0, i32 1, i64 %_m4502
  %_tmp4505 = load i64, i64* %_tmp4439
  store i64 %_tmp4505, i64* %_index_ptr4504
  %_len4506 = load i64, i64* %_len4428
  %_m4507 = load i64, i64* %_m4441
  %_array4508 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4432
  call void @min_heapify({ i64, [0 x i64] }* %_array4508, i64 %_m4507, i64 %_len4506)
  br label %_merge4510
_else4511:
  br label %_merge4510
_merge4510:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %_array4412, i64 %_len4410) {
  %_array4413 = alloca { i64, [0 x i64] }*
  %_len4411 = alloca i64
  %_i4415 = alloca i64
  store { i64, [0 x i64] }* %_array4412, { i64, [0 x i64] }** %_array4413
  store i64 %_len4410, i64* %_len4411
  %_len4414 = load i64, i64* %_len4411
  store i64 %_len4414, i64* %_i4415
  br label %_cond4420
_cond4420:
  %_i4416 = load i64, i64* %_i4415
  %_bop4417 = icmp sge i64 %_i4416, 1
  br i1 %_bop4417, label %_body4419, label %_post4418
_body4419:
  %_len4421 = load i64, i64* %_len4411
  %_i4422 = load i64, i64* %_i4415
  %_array4423 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4413
  call void @min_heapify({ i64, [0 x i64] }* %_array4423, i64 %_i4422, i64 %_len4421)
  %_i4425 = load i64, i64* %_i4415
  %_bop4426 = sub i64 %_i4425, 1
  store i64 %_bop4426, i64* %_i4415
  br label %_cond4420
_post4418:
  ret void
}

define i64 @program(i64 %_argc4354, { i64, [0 x i8*] }* %_argv4352) {
  %_argc4355 = alloca i64
  %_argv4353 = alloca { i64, [0 x i8*] }*
  %_array4369 = alloca { i64, [0 x i64] }*
  %_end_result4383 = alloca { i64, [0 x i64] }*
  %_same4386 = alloca i64
  %_i4387 = alloca i64
  store i64 %_argc4354, i64* %_argc4355
  store { i64, [0 x i8*] }* %_argv4352, { i64, [0 x i8*] }** %_argv4353
  %_raw_array4356 = call i64* @oat_alloc_array(i64 11)
  %_array4357 = bitcast i64* %_raw_array4356 to { i64, [0 x i64] }*
  %_ind4358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4358
  %_ind4359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind4359
  %_ind4360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4360
  %_ind4361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4361
  %_ind4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4362
  %_ind4363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind4363
  %_ind4364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4364
  %_ind4365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4365
  %_ind4366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4366
  %_ind4367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind4367
  %_ind4368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4357, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind4368
  store { i64, [0 x i64] }* %_array4357, { i64, [0 x i64] }** %_array4369
  %_raw_array4370 = call i64* @oat_alloc_array(i64 11)
  %_array4371 = bitcast i64* %_raw_array4370 to { i64, [0 x i64] }*
  %_ind4372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4372
  %_ind4373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4373
  %_ind4374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind4374
  %_ind4375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4375
  %_ind4376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4376
  %_ind4377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind4377
  %_ind4378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4378
  %_ind4379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4379
  %_ind4380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4380
  %_ind4381 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind4381
  %_ind4382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4371, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind4382
  store { i64, [0 x i64] }* %_array4371, { i64, [0 x i64] }** %_end_result4383
  %_array4384 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4369
  call void @make_min_heap({ i64, [0 x i64] }* %_array4384, i64 10)
  store i64 0, i64* %_same4386
  store i64 0, i64* %_i4387
  br label %_cond4392
_cond4392:
  %_i4388 = load i64, i64* %_i4387
  %_bop4389 = icmp slt i64 %_i4388, 11
  br i1 %_bop4389, label %_body4391, label %_post4390
_body4391:
  %_array4393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4369
  %_i4394 = load i64, i64* %_i4387
  %_index_ptr4396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4393, i32 0, i32 1, i64 %_i4394
  %_index4397 = load i64, i64* %_index_ptr4396
  %_end_result4398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4383
  %_i4399 = load i64, i64* %_i4387
  %_index_ptr4401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result4398, i32 0, i32 1, i64 %_i4399
  %_index4402 = load i64, i64* %_index_ptr4401
  %_bop4403 = icmp ne i64 %_index4397, %_index4402
  br i1 %_bop4403, label %_then4406, label %_else4405
_then4406:
  store i64 1, i64* %_same4386
  br label %_merge4404
_else4405:
  br label %_merge4404
_merge4404:
  %_i4407 = load i64, i64* %_i4387
  %_bop4408 = add i64 %_i4407, 1
  store i64 %_bop4408, i64* %_i4387
  br label %_cond4392
_post4390:
  %_same4409 = load i64, i64* %_same4386
  ret i64 %_same4409
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
