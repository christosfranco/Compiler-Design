; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4
@_constant4613 = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4583, i64 %_i4581, i64 %_j4579, i64 %_count4577) {
  %_board4584 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4582 = alloca i64
  %_j4580 = alloca i64
  %_count4578 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4583, { i64, [0 x { i64, [0 x i64] }*] }** %_board4584
  store i64 %_i4581, i64* %_i4582
  store i64 %_j4579, i64* %_j4580
  store i64 %_count4577, i64* %_count4578
  %_i4585 = load i64, i64* %_i4582
  %_bop4586 = icmp sge i64 %_i4585, 0
  %_j4587 = load i64, i64* %_j4580
  %_bop4588 = icmp sge i64 %_j4587, 0
  %_bop4589 = and i1 %_bop4586, %_bop4588
  %_i4590 = load i64, i64* %_i4582
  %_len4591 = load i64, i64* @len
  %_bop4592 = icmp slt i64 %_i4590, %_len4591
  %_bop4593 = and i1 %_bop4589, %_bop4592
  %_j4594 = load i64, i64* %_j4580
  %_len4595 = load i64, i64* @len
  %_bop4596 = icmp slt i64 %_j4594, %_len4595
  %_bop4597 = and i1 %_bop4593, %_bop4596
  br i1 %_bop4597, label %_then4612, label %_else4611
_then4612:
  %_count4598 = load i64, i64* %_count4578
  %_board4599 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4584
  %_i4600 = load i64, i64* %_i4582
  %_index_ptr4602 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board4599, i32 0, i32 1, i64 %_i4600
  %_index4603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4602
  %_j4604 = load i64, i64* %_j4580
  %_index_ptr4606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4603, i32 0, i32 1, i64 %_j4604
  %_index4607 = load i64, i64* %_index_ptr4606
  %_bop4608 = add i64 %_count4598, %_index4607
  ret i64 %_bop4608
_else4611:
  %_count4609 = load i64, i64* %_count4578
  ret i64 %_count4609
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4492, i64 %_i4490, i64 %_j4488) {
  %_board4493 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4491 = alloca i64
  %_j4489 = alloca i64
  %_alive4503 = alloca i64
  %_count4504 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4492, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  store i64 %_i4490, i64* %_i4491
  store i64 %_j4488, i64* %_j4489
  %_board4494 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_i4495 = load i64, i64* %_i4491
  %_index_ptr4497 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board4494, i32 0, i32 1, i64 %_i4495
  %_index4498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4497
  %_j4499 = load i64, i64* %_j4489
  %_index_ptr4501 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4498, i32 0, i32 1, i64 %_j4499
  %_index4502 = load i64, i64* %_index_ptr4501
  store i64 %_index4502, i64* %_alive4503
  store i64 0, i64* %_count4504
  %_count4505 = load i64, i64* %_count4504
  %_j4506 = load i64, i64* %_j4489
  %_bop4507 = sub i64 %_j4506, 1
  %_i4508 = load i64, i64* %_i4491
  %_bop4509 = sub i64 %_i4508, 1
  %_board4510 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4511 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4510, i64 %_bop4509, i64 %_bop4507, i64 %_count4505)
  store i64 %_result4511, i64* %_count4504
  %_count4512 = load i64, i64* %_count4504
  %_j4513 = load i64, i64* %_j4489
  %_i4514 = load i64, i64* %_i4491
  %_bop4515 = sub i64 %_i4514, 1
  %_board4516 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4517 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4516, i64 %_bop4515, i64 %_j4513, i64 %_count4512)
  store i64 %_result4517, i64* %_count4504
  %_count4518 = load i64, i64* %_count4504
  %_j4519 = load i64, i64* %_j4489
  %_bop4520 = add i64 %_j4519, 1
  %_i4521 = load i64, i64* %_i4491
  %_bop4522 = sub i64 %_i4521, 1
  %_board4523 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4524 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4523, i64 %_bop4522, i64 %_bop4520, i64 %_count4518)
  store i64 %_result4524, i64* %_count4504
  %_count4525 = load i64, i64* %_count4504
  %_j4526 = load i64, i64* %_j4489
  %_bop4527 = sub i64 %_j4526, 1
  %_i4528 = load i64, i64* %_i4491
  %_board4529 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4530 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4529, i64 %_i4528, i64 %_bop4527, i64 %_count4525)
  store i64 %_result4530, i64* %_count4504
  %_count4531 = load i64, i64* %_count4504
  %_j4532 = load i64, i64* %_j4489
  %_bop4533 = add i64 %_j4532, 1
  %_i4534 = load i64, i64* %_i4491
  %_board4535 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4536 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4535, i64 %_i4534, i64 %_bop4533, i64 %_count4531)
  store i64 %_result4536, i64* %_count4504
  %_count4537 = load i64, i64* %_count4504
  %_j4538 = load i64, i64* %_j4489
  %_bop4539 = sub i64 %_j4538, 1
  %_i4540 = load i64, i64* %_i4491
  %_bop4541 = add i64 %_i4540, 1
  %_board4542 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4543 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4542, i64 %_bop4541, i64 %_bop4539, i64 %_count4537)
  store i64 %_result4543, i64* %_count4504
  %_count4544 = load i64, i64* %_count4504
  %_j4545 = load i64, i64* %_j4489
  %_i4546 = load i64, i64* %_i4491
  %_bop4547 = add i64 %_i4546, 1
  %_board4548 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4549 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4548, i64 %_bop4547, i64 %_j4545, i64 %_count4544)
  store i64 %_result4549, i64* %_count4504
  %_count4550 = load i64, i64* %_count4504
  %_j4551 = load i64, i64* %_j4489
  %_bop4552 = add i64 %_j4551, 1
  %_i4553 = load i64, i64* %_i4491
  %_bop4554 = add i64 %_i4553, 1
  %_board4555 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4493
  %_result4556 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4555, i64 %_bop4554, i64 %_bop4552, i64 %_count4550)
  store i64 %_result4556, i64* %_count4504
  %_alive4557 = load i64, i64* %_alive4503
  %_bop4558 = icmp eq i64 %_alive4557, 1
  br i1 %_bop4558, label %_then4571, label %_else4570
_then4571:
  %_count4559 = load i64, i64* %_count4504
  %_bop4560 = icmp slt i64 %_count4559, 2
  br i1 %_bop4560, label %_then4568, label %_else4567
_then4568:
  ret i64 0
_else4567:
  %_count4561 = load i64, i64* %_count4504
  %_bop4562 = icmp slt i64 %_count4561, 4
  br i1 %_bop4562, label %_then4565, label %_else4564
_then4565:
  ret i64 1
_else4564:
  br label %_merge4563
_merge4563:
  br label %_merge4566
_merge4566:
  ret i64 0
_else4570:
  br label %_merge4569
_merge4569:
  %_count4572 = load i64, i64* %_count4504
  %_bop4573 = icmp eq i64 %_count4572, 3
  br i1 %_bop4573, label %_then4576, label %_else4575
_then4576:
  ret i64 1
_else4575:
  ret i64 0
_merge4574:
  ret i64 0
}

define i64 @program(i64 %_argc4362, { i64, [0 x i8*] }* %_argv4360) {
  %_argc4363 = alloca i64
  %_argv4361 = alloca { i64, [0 x i8*] }*
  %_board4394 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board4425 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4426 = alloca i64
  %_j4438 = alloca i64
  %_i4460 = alloca i64
  %_j4467 = alloca i64
  store i64 %_argc4362, i64* %_argc4363
  store { i64, [0 x i8*] }* %_argv4360, { i64, [0 x i8*] }** %_argv4361
  %_raw_array4364 = call i64* @oat_alloc_array(i64 4)
  %_array4365 = bitcast i64* %_raw_array4364 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4366 = call i64* @oat_alloc_array(i64 4)
  %_array4367 = bitcast i64* %_raw_array4366 to { i64, [0 x i64] }*
  %_ind4368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4367, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4368
  %_ind4369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4367, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4369
  %_ind4370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4367, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4370
  %_ind4371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4367, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4371
  %_ind4372 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4365, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4367, { i64, [0 x i64] }** %_ind4372
  %_raw_array4373 = call i64* @oat_alloc_array(i64 4)
  %_array4374 = bitcast i64* %_raw_array4373 to { i64, [0 x i64] }*
  %_ind4375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4374, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4375
  %_ind4376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4374, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4376
  %_ind4377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4374, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4377
  %_ind4378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4374, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind4378
  %_ind4379 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4365, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4374, { i64, [0 x i64] }** %_ind4379
  %_raw_array4380 = call i64* @oat_alloc_array(i64 4)
  %_array4381 = bitcast i64* %_raw_array4380 to { i64, [0 x i64] }*
  %_ind4382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4381, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4382
  %_ind4383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4381, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4383
  %_ind4384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4381, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4384
  %_ind4385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4381, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4385
  %_ind4386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4365, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4381, { i64, [0 x i64] }** %_ind4386
  %_raw_array4387 = call i64* @oat_alloc_array(i64 4)
  %_array4388 = bitcast i64* %_raw_array4387 to { i64, [0 x i64] }*
  %_ind4389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4389
  %_ind4390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4390
  %_ind4391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4391
  %_ind4392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4388, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4392
  %_ind4393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4365, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4388, { i64, [0 x i64] }** %_ind4393
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4365, { i64, [0 x { i64, [0 x i64] }*] }** %_board4394
  %_raw_array4395 = call i64* @oat_alloc_array(i64 4)
  %_array4396 = bitcast i64* %_raw_array4395 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4397 = call i64* @oat_alloc_array(i64 4)
  %_array4398 = bitcast i64* %_raw_array4397 to { i64, [0 x i64] }*
  %_ind4399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4398, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4399
  %_ind4400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4398, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4400
  %_ind4401 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4398, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4401
  %_ind4402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4398, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4402
  %_ind4403 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4396, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4398, { i64, [0 x i64] }** %_ind4403
  %_raw_array4404 = call i64* @oat_alloc_array(i64 4)
  %_array4405 = bitcast i64* %_raw_array4404 to { i64, [0 x i64] }*
  %_ind4406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4405, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4406
  %_ind4407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4405, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4407
  %_ind4408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4405, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4408
  %_ind4409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4405, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4409
  %_ind4410 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4396, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4405, { i64, [0 x i64] }** %_ind4410
  %_raw_array4411 = call i64* @oat_alloc_array(i64 4)
  %_array4412 = bitcast i64* %_raw_array4411 to { i64, [0 x i64] }*
  %_ind4413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4412, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4413
  %_ind4414 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4412, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4414
  %_ind4415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4412, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4415
  %_ind4416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4412, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4416
  %_ind4417 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4396, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4412, { i64, [0 x i64] }** %_ind4417
  %_raw_array4418 = call i64* @oat_alloc_array(i64 4)
  %_array4419 = bitcast i64* %_raw_array4418 to { i64, [0 x i64] }*
  %_ind4420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4419, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4420
  %_ind4421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4419, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4421
  %_ind4422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4419, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4422
  %_ind4423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4419, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4423
  %_ind4424 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4396, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4419, { i64, [0 x i64] }** %_ind4424
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4396, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4425
  store i64 0, i64* %_i4426
  br label %_cond4431
_cond4431:
  %_i4427 = load i64, i64* %_i4426
  %_bop4428 = icmp slt i64 %_i4427, 4
  br i1 %_bop4428, label %_body4430, label %_post4429
_body4430:
  %_new_board4432 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4425
  %_i4433 = load i64, i64* %_i4426
  %_index_ptr4435 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4432, i32 0, i32 1, i64 %_i4433
  %_raw_array4436 = call i64* @oat_alloc_array(i64 4)
  %_array4437 = bitcast i64* %_raw_array4436 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4437, { i64, [0 x i64] }** %_index_ptr4435
  store i64 0, i64* %_j4438
  br label %_cond4443
_cond4443:
  %_j4439 = load i64, i64* %_j4438
  %_bop4440 = icmp slt i64 %_j4439, 4
  br i1 %_bop4440, label %_body4442, label %_post4441
_body4442:
  %_new_board4444 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4425
  %_i4445 = load i64, i64* %_i4426
  %_index_ptr4447 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4444, i32 0, i32 1, i64 %_i4445
  %_index4448 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4447
  %_j4449 = load i64, i64* %_j4438
  %_index_ptr4451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4448, i32 0, i32 1, i64 %_j4449
  %_j4452 = load i64, i64* %_j4438
  %_i4453 = load i64, i64* %_i4426
  %_board4454 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4394
  %_result4455 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4454, i64 %_i4453, i64 %_j4452)
  store i64 %_result4455, i64* %_index_ptr4451
  %_j4456 = load i64, i64* %_j4438
  %_bop4457 = add i64 %_j4456, 1
  store i64 %_bop4457, i64* %_j4438
  br label %_cond4443
_post4441:
  %_i4458 = load i64, i64* %_i4426
  %_bop4459 = add i64 %_i4458, 1
  store i64 %_bop4459, i64* %_i4426
  br label %_cond4431
_post4429:
  store i64 0, i64* %_i4460
  br label %_cond4466
_cond4466:
  %_i4461 = load i64, i64* %_i4460
  %_len4462 = load i64, i64* @len
  %_bop4463 = icmp slt i64 %_i4461, %_len4462
  br i1 %_bop4463, label %_body4465, label %_post4464
_body4465:
  store i64 0, i64* %_j4467
  br label %_cond4473
_cond4473:
  %_j4468 = load i64, i64* %_j4467
  %_len4469 = load i64, i64* @len
  %_bop4470 = icmp slt i64 %_j4468, %_len4469
  br i1 %_bop4470, label %_body4472, label %_post4471
_body4472:
  %_new_board4474 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4425
  %_i4475 = load i64, i64* %_i4460
  %_index_ptr4477 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4474, i32 0, i32 1, i64 %_i4475
  %_index4478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4477
  %_j4479 = load i64, i64* %_j4467
  %_index_ptr4481 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4478, i32 0, i32 1, i64 %_j4479
  %_index4482 = load i64, i64* %_index_ptr4481
  call void @print_int(i64 %_index4482)
  %_j4484 = load i64, i64* %_j4467
  %_bop4485 = add i64 %_j4484, 1
  store i64 %_bop4485, i64* %_j4467
  br label %_cond4473
_post4471:
  %_i4486 = load i64, i64* %_i4460
  %_bop4487 = add i64 %_i4486, 1
  store i64 %_bop4487, i64* %_i4460
  br label %_cond4466
_post4464:
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
