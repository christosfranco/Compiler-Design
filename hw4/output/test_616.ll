; generated from: oatprograms/heap.oat
target triple = "x86_64-unknown-linux"
define void @min_heapify({ i64, [0 x i64] }* %_array4428, i64 %_i4426, i64 %_len4424) {
  %_array4429 = alloca { i64, [0 x i64] }*
  %_i4427 = alloca i64
  %_len4425 = alloca i64
  %_l4432 = alloca i64
  %_r4435 = alloca i64
  %_tmp4436 = alloca i64
  %_m4438 = alloca i64
  store { i64, [0 x i64] }* %_array4428, { i64, [0 x i64] }** %_array4429
  store i64 %_i4426, i64* %_i4427
  store i64 %_len4424, i64* %_len4425
  %_i4430 = load i64, i64* %_i4427
  %_bop4431 = mul i64 %_i4430, 2
  store i64 %_bop4431, i64* %_l4432
  %_i4433 = load i64, i64* %_i4427
  %_bop4434 = add i64 %_i4433, 1
  store i64 %_bop4434, i64* %_r4435
  store i64 0, i64* %_tmp4436
  %_i4437 = load i64, i64* %_i4427
  store i64 %_i4437, i64* %_m4438
  %_l4439 = load i64, i64* %_l4432
  %_len4440 = load i64, i64* %_len4425
  %_bop4441 = icmp slt i64 %_l4439, %_len4440
  br i1 %_bop4441, label %_then4459, label %_else4458
_then4459:
  %_array4442 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_l4443 = load i64, i64* %_l4432
  %_index_ptr4445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4442, i32 0, i32 1, i64 %_l4443
  %_index4446 = load i64, i64* %_index_ptr4445
  %_array4447 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_m4448 = load i64, i64* %_m4438
  %_index_ptr4450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4447, i32 0, i32 1, i64 %_m4448
  %_index4451 = load i64, i64* %_index_ptr4450
  %_bop4452 = icmp sgt i64 %_index4446, %_index4451
  br i1 %_bop4452, label %_then4456, label %_else4455
_then4456:
  %_l4453 = load i64, i64* %_l4432
  store i64 %_l4453, i64* %_m4438
  br label %_merge4454
_else4455:
  br label %_merge4454
_merge4454:
  br label %_merge4457
_else4458:
  br label %_merge4457
_merge4457:
  %_r4460 = load i64, i64* %_r4435
  %_len4461 = load i64, i64* %_len4425
  %_bop4462 = icmp slt i64 %_r4460, %_len4461
  br i1 %_bop4462, label %_then4480, label %_else4479
_then4480:
  %_array4463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_r4464 = load i64, i64* %_r4435
  %_index_ptr4466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4463, i32 0, i32 1, i64 %_r4464
  %_index4467 = load i64, i64* %_index_ptr4466
  %_array4468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_m4469 = load i64, i64* %_m4438
  %_index_ptr4471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4468, i32 0, i32 1, i64 %_m4469
  %_index4472 = load i64, i64* %_index_ptr4471
  %_bop4473 = icmp sgt i64 %_index4467, %_index4472
  br i1 %_bop4473, label %_then4477, label %_else4476
_then4477:
  %_r4474 = load i64, i64* %_r4435
  store i64 %_r4474, i64* %_m4438
  br label %_merge4475
_else4476:
  br label %_merge4475
_merge4475:
  br label %_merge4478
_else4479:
  br label %_merge4478
_merge4478:
  %_m4481 = load i64, i64* %_m4438
  %_i4482 = load i64, i64* %_i4427
  %_bop4483 = icmp ne i64 %_m4481, %_i4482
  br i1 %_bop4483, label %_then4509, label %_else4508
_then4509:
  %_array4484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_i4485 = load i64, i64* %_i4427
  %_index_ptr4487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4484, i32 0, i32 1, i64 %_i4485
  %_index4488 = load i64, i64* %_index_ptr4487
  store i64 %_index4488, i64* %_tmp4436
  %_array4489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_i4490 = load i64, i64* %_i4427
  %_index_ptr4492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4489, i32 0, i32 1, i64 %_i4490
  %_array4493 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_m4494 = load i64, i64* %_m4438
  %_index_ptr4496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4493, i32 0, i32 1, i64 %_m4494
  %_index4497 = load i64, i64* %_index_ptr4496
  store i64 %_index4497, i64* %_index_ptr4492
  %_array4498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  %_m4499 = load i64, i64* %_m4438
  %_index_ptr4501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4498, i32 0, i32 1, i64 %_m4499
  %_tmp4502 = load i64, i64* %_tmp4436
  store i64 %_tmp4502, i64* %_index_ptr4501
  %_len4503 = load i64, i64* %_len4425
  %_m4504 = load i64, i64* %_m4438
  %_array4505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4429
  call void @min_heapify({ i64, [0 x i64] }* %_array4505, i64 %_m4504, i64 %_len4503)
  br label %_merge4507
_else4508:
  br label %_merge4507
_merge4507:
  ret void
}

define void @make_min_heap({ i64, [0 x i64] }* %_array4409, i64 %_len4407) {
  %_array4410 = alloca { i64, [0 x i64] }*
  %_len4408 = alloca i64
  %_i4412 = alloca i64
  store { i64, [0 x i64] }* %_array4409, { i64, [0 x i64] }** %_array4410
  store i64 %_len4407, i64* %_len4408
  %_len4411 = load i64, i64* %_len4408
  store i64 %_len4411, i64* %_i4412
  br label %_cond4417
_cond4417:
  %_i4413 = load i64, i64* %_i4412
  %_bop4414 = icmp sge i64 %_i4413, 1
  br i1 %_bop4414, label %_body4416, label %_post4415
_body4416:
  %_len4418 = load i64, i64* %_len4408
  %_i4419 = load i64, i64* %_i4412
  %_array4420 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4410
  call void @min_heapify({ i64, [0 x i64] }* %_array4420, i64 %_i4419, i64 %_len4418)
  %_i4422 = load i64, i64* %_i4412
  %_bop4423 = sub i64 %_i4422, 1
  store i64 %_bop4423, i64* %_i4412
  br label %_cond4417
_post4415:
  ret void
}

define i64 @program(i64 %_argc4351, { i64, [0 x i8*] }* %_argv4349) {
  %_argc4352 = alloca i64
  %_argv4350 = alloca { i64, [0 x i8*] }*
  %_array4366 = alloca { i64, [0 x i64] }*
  %_end_result4380 = alloca { i64, [0 x i64] }*
  %_same4383 = alloca i64
  %_i4384 = alloca i64
  store i64 %_argc4351, i64* %_argc4352
  store { i64, [0 x i8*] }* %_argv4349, { i64, [0 x i8*] }** %_argv4350
  %_raw_array4353 = call i64* @oat_alloc_array(i64 11)
  %_array4354 = bitcast i64* %_raw_array4353 to { i64, [0 x i64] }*
  %_ind4355 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4355
  %_ind4356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind4356
  %_ind4357 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4357
  %_ind4358 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4358
  %_ind4359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4359
  %_ind4360 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 5
  store i64 10, i64* %_ind4360
  %_ind4361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4361
  %_ind4362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4362
  %_ind4363 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4363
  %_ind4364 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 9
  store i64 4, i64* %_ind4364
  %_ind4365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4354, i32 0, i32 1, i32 10
  store i64 5, i64* %_ind4365
  store { i64, [0 x i64] }* %_array4354, { i64, [0 x i64] }** %_array4366
  %_raw_array4367 = call i64* @oat_alloc_array(i64 11)
  %_array4368 = bitcast i64* %_raw_array4367 to { i64, [0 x i64] }*
  %_ind4369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4369
  %_ind4370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4370
  %_ind4371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind4371
  %_ind4372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind4372
  %_ind4373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 4
  store i64 8, i64* %_ind4373
  %_ind4374 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 5
  store i64 5, i64* %_ind4374
  %_ind4375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 6
  store i64 7, i64* %_ind4375
  %_ind4376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 7
  store i64 3, i64* %_ind4376
  %_ind4377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 8
  store i64 6, i64* %_ind4377
  %_ind4378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 9
  store i64 9, i64* %_ind4378
  %_ind4379 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4368, i32 0, i32 1, i32 10
  store i64 10, i64* %_ind4379
  store { i64, [0 x i64] }* %_array4368, { i64, [0 x i64] }** %_end_result4380
  %_array4381 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4366
  call void @make_min_heap({ i64, [0 x i64] }* %_array4381, i64 10)
  store i64 0, i64* %_same4383
  store i64 0, i64* %_i4384
  br label %_cond4389
_cond4389:
  %_i4385 = load i64, i64* %_i4384
  %_bop4386 = icmp slt i64 %_i4385, 11
  br i1 %_bop4386, label %_body4388, label %_post4387
_body4388:
  %_array4390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4366
  %_i4391 = load i64, i64* %_i4384
  %_index_ptr4393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4390, i32 0, i32 1, i64 %_i4391
  %_index4394 = load i64, i64* %_index_ptr4393
  %_end_result4395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_end_result4380
  %_i4396 = load i64, i64* %_i4384
  %_index_ptr4398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_end_result4395, i32 0, i32 1, i64 %_i4396
  %_index4399 = load i64, i64* %_index_ptr4398
  %_bop4400 = icmp ne i64 %_index4394, %_index4399
  br i1 %_bop4400, label %_then4403, label %_else4402
_then4403:
  store i64 1, i64* %_same4383
  br label %_merge4401
_else4402:
  br label %_merge4401
_merge4401:
  %_i4404 = load i64, i64* %_i4384
  %_bop4405 = add i64 %_i4404, 1
  store i64 %_bop4405, i64* %_i4384
  br label %_cond4389
_post4387:
  %_same4406 = load i64, i64* %_same4383
  ret i64 %_same4406
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
