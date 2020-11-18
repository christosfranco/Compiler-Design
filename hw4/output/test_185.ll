; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str_arr3356 = global [2 x i8] c" \00"
@_str_arr3361 = global [2 x i8] c"	\00"

define i64 @program(i64 %_argc3508, { i64, [0 x i8*] }* %_argv3506) {
  %_argc3509 = alloca i64
  %_argv3507 = alloca { i64, [0 x i8*] }*
  %_a3524 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3548 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3565 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc3508, i64* %_argc3509
  store { i64, [0 x i8*] }* %_argv3506, { i64, [0 x i8*] }** %_argv3507
  %_raw_array3510 = call i64* @oat_alloc_array(i64 2)
  %_array3511 = bitcast i64* %_raw_array3510 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3512 = call i64* @oat_alloc_array(i64 3)
  %_array3513 = bitcast i64* %_raw_array3512 to { i64, [0 x i64] }*
  %_ind3514 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3513, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3514
  %_ind3515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3513, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3515
  %_ind3516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3513, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3516
  %_ind3517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3511, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3513, { i64, [0 x i64] }** %_ind3517
  %_raw_array3518 = call i64* @oat_alloc_array(i64 3)
  %_array3519 = bitcast i64* %_raw_array3518 to { i64, [0 x i64] }*
  %_ind3520 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3519, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3520
  %_ind3521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3519, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3521
  %_ind3522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3519, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3522
  %_ind3523 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3511, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3519, { i64, [0 x i64] }** %_ind3523
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3511, { i64, [0 x { i64, [0 x i64] }*] }** %_a3524
  %_raw_array3525 = call i64* @oat_alloc_array(i64 3)
  %_array3526 = bitcast i64* %_raw_array3525 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3527 = call i64* @oat_alloc_array(i64 4)
  %_array3528 = bitcast i64* %_raw_array3527 to { i64, [0 x i64] }*
  %_ind3529 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3528, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3529
  %_ind3530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3528, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3530
  %_ind3531 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3528, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3531
  %_ind3532 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3528, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3532
  %_ind3533 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3526, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3528, { i64, [0 x i64] }** %_ind3533
  %_raw_array3534 = call i64* @oat_alloc_array(i64 4)
  %_array3535 = bitcast i64* %_raw_array3534 to { i64, [0 x i64] }*
  %_ind3536 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3536
  %_ind3537 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3537
  %_ind3538 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3538
  %_ind3539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3535, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3539
  %_ind3540 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3526, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3535, { i64, [0 x i64] }** %_ind3540
  %_raw_array3541 = call i64* @oat_alloc_array(i64 4)
  %_array3542 = bitcast i64* %_raw_array3541 to { i64, [0 x i64] }*
  %_ind3543 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3542, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3543
  %_ind3544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3542, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3544
  %_ind3545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3542, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3545
  %_ind3546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3542, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3546
  %_ind3547 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3526, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3542, { i64, [0 x i64] }** %_ind3547
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3526, { i64, [0 x { i64, [0 x i64] }*] }** %_b3548
  %_raw_array3549 = call i64* @oat_alloc_array(i64 2)
  %_array3550 = bitcast i64* %_raw_array3549 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3551 = call i64* @oat_alloc_array(i64 4)
  %_array3552 = bitcast i64* %_raw_array3551 to { i64, [0 x i64] }*
  %_ind3553 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3552, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3553
  %_ind3554 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3552, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3554
  %_ind3555 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3552, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3555
  %_ind3556 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3552, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3556
  %_ind3557 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3550, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3552, { i64, [0 x i64] }** %_ind3557
  %_raw_array3558 = call i64* @oat_alloc_array(i64 4)
  %_array3559 = bitcast i64* %_raw_array3558 to { i64, [0 x i64] }*
  %_ind3560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3560
  %_ind3561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3561
  %_ind3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3562
  %_ind3563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3559, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3563
  %_ind3564 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3550, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3559, { i64, [0 x i64] }** %_ind3564
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3550, { i64, [0 x { i64, [0 x i64] }*] }** %_c3565
  %_c3566 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3565
  %_b3567 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3548
  %_a3568 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3524
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3568, { i64, [0 x { i64, [0 x i64] }*] }* %_b3567, { i64, [0 x { i64, [0 x i64] }*] }* %_c3566)
  %_c3570 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3565
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3570, i64 2)
  %_c3572 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3565
  %_b3573 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3548
  %_a3574 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3524
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3574, { i64, [0 x { i64, [0 x i64] }*] }* %_b3573, { i64, [0 x { i64, [0 x i64] }*] }* %_c3572)
  %_c3576 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3565
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3576, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13443, { i64, [0 x { i64, [0 x i64] }*] }* %_a23441, { i64, [0 x { i64, [0 x i64] }*] }* %_a33439) {
  %_a13444 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23442 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33440 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3445 = alloca i64
  %_j3451 = alloca i64
  %_k3457 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13443, { i64, [0 x { i64, [0 x i64] }*] }** %_a13444
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23441, { i64, [0 x { i64, [0 x i64] }*] }** %_a23442
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33439, { i64, [0 x { i64, [0 x i64] }*] }** %_a33440
  store i64 0, i64* %_i3445
  br label %_cond3450
_cond3450:
  %_i3446 = load i64, i64* %_i3445
  %_bop3447 = icmp slt i64 %_i3446, 2
  br i1 %_bop3447, label %_body3449, label %_post3448
_body3449:
  store i64 0, i64* %_j3451
  br label %_cond3456
_cond3456:
  %_j3452 = load i64, i64* %_j3451
  %_bop3453 = icmp slt i64 %_j3452, 4
  br i1 %_bop3453, label %_body3455, label %_post3454
_body3455:
  store i64 0, i64* %_k3457
  br label %_cond3462
_cond3462:
  %_k3458 = load i64, i64* %_k3457
  %_bop3459 = icmp slt i64 %_k3458, 3
  br i1 %_bop3459, label %_body3461, label %_post3460
_body3461:
  %_a33463 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33440
  %_i3464 = load i64, i64* %_i3445
  %_index_ptr3466 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33463, i32 0, i32 1, i64 %_i3464
  %_index3467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3466
  %_j3468 = load i64, i64* %_j3451
  %_index_ptr3470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3467, i32 0, i32 1, i64 %_j3468
  %_a33471 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33440
  %_i3472 = load i64, i64* %_i3445
  %_index_ptr3474 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33471, i32 0, i32 1, i64 %_i3472
  %_index3475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3474
  %_j3476 = load i64, i64* %_j3451
  %_index_ptr3478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3475, i32 0, i32 1, i64 %_j3476
  %_index3479 = load i64, i64* %_index_ptr3478
  %_a13480 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13444
  %_i3481 = load i64, i64* %_i3445
  %_index_ptr3483 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13480, i32 0, i32 1, i64 %_i3481
  %_index3484 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3483
  %_k3485 = load i64, i64* %_k3457
  %_index_ptr3487 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3484, i32 0, i32 1, i64 %_k3485
  %_index3488 = load i64, i64* %_index_ptr3487
  %_a23489 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23442
  %_k3490 = load i64, i64* %_k3457
  %_index_ptr3492 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23489, i32 0, i32 1, i64 %_k3490
  %_index3493 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3492
  %_j3494 = load i64, i64* %_j3451
  %_index_ptr3496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3493, i32 0, i32 1, i64 %_j3494
  %_index3497 = load i64, i64* %_index_ptr3496
  %_bop3498 = mul i64 %_index3488, %_index3497
  %_bop3499 = add i64 %_index3479, %_bop3498
  store i64 %_bop3499, i64* %_index_ptr3470
  %_k3500 = load i64, i64* %_k3457
  %_bop3501 = add i64 %_k3500, 1
  store i64 %_bop3501, i64* %_k3457
  br label %_cond3462
_post3460:
  %_j3502 = load i64, i64* %_j3451
  %_bop3503 = add i64 %_j3502, 1
  store i64 %_bop3503, i64* %_j3451
  br label %_cond3456
_post3454:
  %_i3504 = load i64, i64* %_i3445
  %_bop3505 = add i64 %_i3504, 1
  store i64 %_bop3505, i64* %_i3445
  br label %_cond3450
_post3448:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13408, { i64, [0 x { i64, [0 x i64] }*] }* %_a23406, { i64, [0 x { i64, [0 x i64] }*] }* %_a33404) {
  %_a13409 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23407 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33405 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3410 = alloca i64
  %_j3416 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13408, { i64, [0 x { i64, [0 x i64] }*] }** %_a13409
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23406, { i64, [0 x { i64, [0 x i64] }*] }** %_a23407
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33404, { i64, [0 x { i64, [0 x i64] }*] }** %_a33405
  store i64 0, i64* %_i3410
  br label %_cond3415
_cond3415:
  %_i3411 = load i64, i64* %_i3410
  %_bop3412 = icmp slt i64 %_i3411, 2
  br i1 %_bop3412, label %_body3414, label %_post3413
_body3414:
  store i64 0, i64* %_j3416
  br label %_cond3421
_cond3421:
  %_j3417 = load i64, i64* %_j3416
  %_bop3418 = icmp slt i64 %_j3417, 4
  br i1 %_bop3418, label %_body3420, label %_post3419
_body3420:
  %_a33422 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33405
  %_i3423 = load i64, i64* %_i3410
  %_index_ptr3425 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33422, i32 0, i32 1, i64 %_i3423
  %_index3426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3425
  %_j3427 = load i64, i64* %_j3416
  %_index_ptr3429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3426, i32 0, i32 1, i64 %_j3427
  %_j3430 = load i64, i64* %_j3416
  %_i3431 = load i64, i64* %_i3410
  %_a23432 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23407
  %_a13433 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13409
  %_result3434 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13433, { i64, [0 x { i64, [0 x i64] }*] }* %_a23432, i64 %_i3431, i64 %_j3430)
  store i64 %_result3434, i64* %_index_ptr3429
  %_j3435 = load i64, i64* %_j3416
  %_bop3436 = add i64 %_j3435, 1
  store i64 %_bop3436, i64* %_j3416
  br label %_cond3421
_post3419:
  %_i3437 = load i64, i64* %_i3410
  %_bop3438 = add i64 %_i3437, 1
  store i64 %_bop3438, i64* %_i3410
  br label %_cond3415
_post3413:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13371, { i64, [0 x { i64, [0 x i64] }*] }* %_a23369, i64 %_row3367, i64 %_col3365) {
  %_a13372 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23370 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3368 = alloca i64
  %_col3366 = alloca i64
  %_sum3373 = alloca i64
  %_k3374 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13371, { i64, [0 x { i64, [0 x i64] }*] }** %_a13372
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23369, { i64, [0 x { i64, [0 x i64] }*] }** %_a23370
  store i64 %_row3367, i64* %_row3368
  store i64 %_col3365, i64* %_col3366
  store i64 0, i64* %_sum3373
  store i64 0, i64* %_k3374
  br label %_cond3379
_cond3379:
  %_k3375 = load i64, i64* %_k3374
  %_bop3376 = icmp slt i64 %_k3375, 3
  br i1 %_bop3376, label %_body3378, label %_post3377
_body3378:
  %_sum3380 = load i64, i64* %_sum3373
  %_a13381 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13372
  %_row3382 = load i64, i64* %_row3368
  %_index_ptr3384 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13381, i32 0, i32 1, i64 %_row3382
  %_index3385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3384
  %_k3386 = load i64, i64* %_k3374
  %_index_ptr3388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3385, i32 0, i32 1, i64 %_k3386
  %_index3389 = load i64, i64* %_index_ptr3388
  %_a23390 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23370
  %_k3391 = load i64, i64* %_k3374
  %_index_ptr3393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23390, i32 0, i32 1, i64 %_k3391
  %_index3394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3393
  %_col3395 = load i64, i64* %_col3366
  %_index_ptr3397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3394, i32 0, i32 1, i64 %_col3395
  %_index3398 = load i64, i64* %_index_ptr3397
  %_bop3399 = mul i64 %_index3389, %_index3398
  %_bop3400 = add i64 %_sum3380, %_bop3399
  store i64 %_bop3400, i64* %_sum3373
  %_k3401 = load i64, i64* %_k3374
  %_bop3402 = add i64 %_k3401, 1
  store i64 %_bop3402, i64* %_k3374
  br label %_cond3379
_post3377:
  %_sum3403 = load i64, i64* %_sum3373
  ret i64 %_sum3403
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3330, i64 %_n3328) {
  %_ar3331 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3329 = alloca i64
  %_i3332 = alloca i64
  %_j3339 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3330, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3331
  store i64 %_n3328, i64* %_n3329
  store i64 0, i64* %_i3332
  br label %_cond3338
_cond3338:
  %_i3333 = load i64, i64* %_i3332
  %_n3334 = load i64, i64* %_n3329
  %_bop3335 = icmp slt i64 %_i3333, %_n3334
  br i1 %_bop3335, label %_body3337, label %_post3336
_body3337:
  store i64 0, i64* %_j3339
  br label %_cond3344
_cond3344:
  %_j3340 = load i64, i64* %_j3339
  %_bop3341 = icmp slt i64 %_j3340, 4
  br i1 %_bop3341, label %_body3343, label %_post3342
_body3343:
  %_ar3345 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3331
  %_i3346 = load i64, i64* %_i3332
  %_index_ptr3348 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3345, i32 0, i32 1, i64 %_i3346
  %_index3349 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3348
  %_j3350 = load i64, i64* %_j3339
  %_index_ptr3352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3349, i32 0, i32 1, i64 %_j3350
  %_index3353 = load i64, i64* %_index_ptr3352
  call void @print_int(i64 %_index3353)
  %_str3355 = getelementptr [2 x i8], [2 x i8]* @_str_arr3356, i32 0, i32 0
  call void @print_string(i8* %_str3355)
  %_j3358 = load i64, i64* %_j3339
  %_bop3359 = add i64 %_j3358, 1
  store i64 %_bop3359, i64* %_j3339
  br label %_cond3344
_post3342:
  %_str3360 = getelementptr [2 x i8], [2 x i8]* @_str_arr3361, i32 0, i32 0
  call void @print_string(i8* %_str3360)
  %_i3363 = load i64, i64* %_i3332
  %_bop3364 = add i64 %_i3363, 1
  store i64 %_bop3364, i64* %_i3332
  br label %_cond3338
_post3336:
  ret void
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
