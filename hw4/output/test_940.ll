; generated from: oatprograms/gnomesort.oat
target triple = "x86_64-unknown-linux"
define void @gnomeSort({ i64, [0 x i64] }* %_a4445, i64 %_len4443) {
  %_a4446 = alloca { i64, [0 x i64] }*
  %_len4444 = alloca i64
  %_i4447 = alloca i64
  %_j4448 = alloca i64
  %_tmp4473 = alloca i64
  store { i64, [0 x i64] }* %_a4445, { i64, [0 x i64] }** %_a4446
  store i64 %_len4443, i64* %_len4444
  store i64 1, i64* %_i4447
  store i64 2, i64* %_j4448
  br label %_cond4454
_cond4454:
  %_i4449 = load i64, i64* %_i4447
  %_len4450 = load i64, i64* %_len4444
  %_bop4451 = icmp slt i64 %_i4449, %_len4450
  br i1 %_bop4451, label %_body4453, label %_post4452
_body4453:
  %_a4455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4446
  %_i4456 = load i64, i64* %_i4447
  %_bop4457 = sub i64 %_i4456, 1
  %_index_ptr4458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4455, i32 0, i32 1, i64 %_bop4457
  %_index4459 = load i64, i64* %_index_ptr4458
  %_a4460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4446
  %_i4461 = load i64, i64* %_i4447
  %_index_ptr4462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4460, i32 0, i32 1, i64 %_i4461
  %_index4463 = load i64, i64* %_index_ptr4462
  %_bop4464 = icmp sle i64 %_index4459, %_index4463
  br i1 %_bop4464, label %_then4498, label %_else4497
_then4498:
  %_j4465 = load i64, i64* %_j4448
  store i64 %_j4465, i64* %_i4447
  %_j4466 = load i64, i64* %_j4448
  %_bop4467 = add i64 %_j4466, 1
  store i64 %_bop4467, i64* %_j4448
  br label %_merge4496
_else4497:
  %_a4468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4446
  %_i4469 = load i64, i64* %_i4447
  %_bop4470 = sub i64 %_i4469, 1
  %_index_ptr4471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4468, i32 0, i32 1, i64 %_bop4470
  %_index4472 = load i64, i64* %_index_ptr4471
  store i64 %_index4472, i64* %_tmp4473
  %_a4474 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4446
  %_i4475 = load i64, i64* %_i4447
  %_bop4476 = sub i64 %_i4475, 1
  %_index_ptr4477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4474, i32 0, i32 1, i64 %_bop4476
  %_a4478 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4446
  %_i4479 = load i64, i64* %_i4447
  %_index_ptr4480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4478, i32 0, i32 1, i64 %_i4479
  %_index4481 = load i64, i64* %_index_ptr4480
  store i64 %_index4481, i64* %_index_ptr4477
  %_a4482 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a4446
  %_i4483 = load i64, i64* %_i4447
  %_index_ptr4484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a4482, i32 0, i32 1, i64 %_i4483
  %_tmp4485 = load i64, i64* %_tmp4473
  store i64 %_tmp4485, i64* %_index_ptr4484
  %_i4486 = load i64, i64* %_i4447
  %_bop4487 = sub i64 %_i4486, 1
  store i64 %_bop4487, i64* %_i4447
  %_i4488 = load i64, i64* %_i4447
  %_bop4489 = icmp eq i64 %_i4488, 0
  br i1 %_bop4489, label %_then4495, label %_else4494
_then4495:
  %_j4490 = load i64, i64* %_j4448
  store i64 %_j4490, i64* %_i4447
  %_j4491 = load i64, i64* %_j4448
  %_bop4492 = add i64 %_j4491, 1
  store i64 %_bop4492, i64* %_j4448
  br label %_merge4493
_else4494:
  br label %_merge4493
_merge4493:
  br label %_merge4496
_merge4496:
  br label %_cond4454
_post4452:
  ret void
}

define i64 @program(i64 %_argc4413, { i64, [0 x i8*] }* %_argv4411) {
  %_argc4414 = alloca i64
  %_argv4412 = alloca { i64, [0 x i8*] }*
  %_arr4425 = alloca { i64, [0 x i64] }*
  %_len4426 = alloca i64
  %_i4430 = alloca i64
  store i64 %_argc4413, i64* %_argc4414
  store { i64, [0 x i8*] }* %_argv4411, { i64, [0 x i8*] }** %_argv4412
  %_raw_array4415 = call i64* @oat_alloc_array(i64 8)
  %_array4416 = bitcast i64* %_raw_array4415 to { i64, [0 x i64] }*
  %_ind4417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind4417
  %_ind4418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind4418
  %_ind4419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4419
  %_ind4420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind4420
  %_ind4421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind4421
  %_ind4422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind4422
  %_ind4423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind4423
  %_ind4424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4416, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind4424
  store { i64, [0 x i64] }* %_array4416, { i64, [0 x i64] }** %_arr4425
  store i64 8, i64* %_len4426
  %_len4427 = load i64, i64* %_len4426
  %_arr4428 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4425
  call void @gnomeSort({ i64, [0 x i64] }* %_arr4428, i64 %_len4427)
  store i64 0, i64* %_i4430
  br label %_cond4435
_cond4435:
  %_i4431 = load i64, i64* %_i4430
  %_bop4432 = icmp slt i64 %_i4431, 8
  br i1 %_bop4432, label %_body4434, label %_post4433
_body4434:
  %_arr4436 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4425
  %_i4437 = load i64, i64* %_i4430
  %_index_ptr4438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4436, i32 0, i32 1, i64 %_i4437
  %_index4439 = load i64, i64* %_index_ptr4438
  call void @print_int(i64 %_index4439)
  %_i4441 = load i64, i64* %_i4430
  %_bop4442 = add i64 %_i4441, 1
  store i64 %_bop4442, i64* %_i4430
  br label %_cond4435
_post4433:
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
