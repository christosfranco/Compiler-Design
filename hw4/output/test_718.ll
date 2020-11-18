; generated from: oatprograms/binary_search.oat
target triple = "x86_64-unknown-linux"
@_str_arr3536 = global [9 x i8] c"Correct!\00"

define i64 @euclid_division(i64 %_numerator3592, i64 %_denominator3590) {
  %_numerator3593 = alloca i64
  %_denominator3591 = alloca i64
  %_quotient3604 = alloca i64
  %_remainder3606 = alloca i64
  store i64 %_numerator3592, i64* %_numerator3593
  store i64 %_denominator3590, i64* %_denominator3591
  %_denominator3594 = load i64, i64* %_denominator3591
  %_bop3595 = icmp slt i64 %_denominator3594, 0
  br i1 %_bop3595, label %_then3603, label %_else3602
_then3603:
  %_denominator3596 = load i64, i64* %_denominator3591
  %_unop3597 = sub i64 0, %_denominator3596
  %_numerator3598 = load i64, i64* %_numerator3593
  %_result3599 = call i64 @euclid_division(i64 %_numerator3598, i64 %_unop3597)
  %_unop3600 = sub i64 0, %_result3599
  ret i64 %_unop3600
_else3602:
  br label %_merge3601
_merge3601:
  store i64 0, i64* %_quotient3604
  %_numerator3605 = load i64, i64* %_numerator3593
  store i64 %_numerator3605, i64* %_remainder3606
  %_numerator3607 = load i64, i64* %_numerator3593
  %_bop3608 = icmp slt i64 %_numerator3607, 0
  br i1 %_bop3608, label %_then3634, label %_else3633
_then3634:
  %_numerator3609 = load i64, i64* %_numerator3593
  %_unop3610 = sub i64 0, %_numerator3609
  store i64 %_unop3610, i64* %_remainder3606
  br label %_cond3616
_cond3616:
  %_remainder3611 = load i64, i64* %_remainder3606
  %_denominator3612 = load i64, i64* %_denominator3591
  %_bop3613 = icmp sge i64 %_remainder3611, %_denominator3612
  br i1 %_bop3613, label %_body3615, label %_post3614
_body3615:
  %_quotient3617 = load i64, i64* %_quotient3604
  %_bop3618 = add i64 %_quotient3617, 1
  store i64 %_bop3618, i64* %_quotient3604
  %_remainder3619 = load i64, i64* %_remainder3606
  %_denominator3620 = load i64, i64* %_denominator3591
  %_bop3621 = sub i64 %_remainder3619, %_denominator3620
  store i64 %_bop3621, i64* %_remainder3606
  br label %_cond3616
_post3614:
  %_remainder3622 = load i64, i64* %_remainder3606
  %_bop3623 = icmp eq i64 %_remainder3622, 0
  br i1 %_bop3623, label %_then3631, label %_else3630
_then3631:
  %_quotient3624 = load i64, i64* %_quotient3604
  %_unop3625 = sub i64 0, %_quotient3624
  ret i64 %_unop3625
_else3630:
  %_quotient3626 = load i64, i64* %_quotient3604
  %_unop3627 = sub i64 0, %_quotient3626
  %_bop3628 = sub i64 %_unop3627, 1
  ret i64 %_bop3628
_merge3629:
  br label %_merge3632
_else3633:
  br label %_merge3632
_merge3632:
  br label %_cond3640
_cond3640:
  %_remainder3635 = load i64, i64* %_remainder3606
  %_denominator3636 = load i64, i64* %_denominator3591
  %_bop3637 = icmp sge i64 %_remainder3635, %_denominator3636
  br i1 %_bop3637, label %_body3639, label %_post3638
_body3639:
  %_quotient3641 = load i64, i64* %_quotient3604
  %_bop3642 = add i64 %_quotient3641, 1
  store i64 %_bop3642, i64* %_quotient3604
  %_remainder3643 = load i64, i64* %_remainder3606
  %_denominator3644 = load i64, i64* %_denominator3591
  %_bop3645 = sub i64 %_remainder3643, %_denominator3644
  store i64 %_bop3645, i64* %_remainder3606
  br label %_cond3640
_post3638:
  %_quotient3646 = load i64, i64* %_quotient3604
  ret i64 %_quotient3646
}

define i1 @binary_search({ i64, [0 x i64] }* %_input3547, i64 %_key3545, i64 %_min3543, i64 %_max3541) {
  %_input3548 = alloca { i64, [0 x i64] }*
  %_key3546 = alloca i64
  %_min3544 = alloca i64
  %_max3542 = alloca i64
  %_midpt3559 = alloca i64
  store { i64, [0 x i64] }* %_input3547, { i64, [0 x i64] }** %_input3548
  store i64 %_key3545, i64* %_key3546
  store i64 %_min3543, i64* %_min3544
  store i64 %_max3541, i64* %_max3542
  %_max3549 = load i64, i64* %_max3542
  %_min3550 = load i64, i64* %_min3544
  %_bop3551 = icmp slt i64 %_max3549, %_min3550
  br i1 %_bop3551, label %_then3554, label %_else3553
_then3554:
  ret i1 0
_else3553:
  br label %_merge3552
_merge3552:
  %_max3555 = load i64, i64* %_max3542
  %_min3556 = load i64, i64* %_min3544
  %_bop3557 = add i64 %_max3555, %_min3556
  %_result3558 = call i64 @euclid_division(i64 %_bop3557, i64 2)
  store i64 %_result3558, i64* %_midpt3559
  %_input3560 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3548
  %_midpt3561 = load i64, i64* %_midpt3559
  %_index_ptr3562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3560, i32 0, i32 1, i64 %_midpt3561
  %_index3563 = load i64, i64* %_index_ptr3562
  %_key3564 = load i64, i64* %_key3546
  %_bop3565 = icmp sgt i64 %_index3563, %_key3564
  br i1 %_bop3565, label %_then3574, label %_else3573
_then3574:
  %_midpt3566 = load i64, i64* %_midpt3559
  %_bop3567 = sub i64 %_midpt3566, 1
  %_min3568 = load i64, i64* %_min3544
  %_key3569 = load i64, i64* %_key3546
  %_input3570 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3548
  %_result3571 = call i1 @binary_search({ i64, [0 x i64] }* %_input3570, i64 %_key3569, i64 %_min3568, i64 %_bop3567)
  ret i1 %_result3571
_else3573:
  br label %_merge3572
_merge3572:
  %_input3575 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3548
  %_midpt3576 = load i64, i64* %_midpt3559
  %_index_ptr3577 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_input3575, i32 0, i32 1, i64 %_midpt3576
  %_index3578 = load i64, i64* %_index_ptr3577
  %_key3579 = load i64, i64* %_key3546
  %_bop3580 = icmp slt i64 %_index3578, %_key3579
  br i1 %_bop3580, label %_then3589, label %_else3588
_then3589:
  %_max3581 = load i64, i64* %_max3542
  %_midpt3582 = load i64, i64* %_midpt3559
  %_bop3583 = add i64 %_midpt3582, 1
  %_key3584 = load i64, i64* %_key3546
  %_input3585 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_input3548
  %_result3586 = call i1 @binary_search({ i64, [0 x i64] }* %_input3585, i64 %_key3584, i64 %_bop3583, i64 %_max3581)
  ret i1 %_result3586
_else3588:
  ret i1 1
}

define i64 @program(i64 %_argc3502, { i64, [0 x i8*] }* %_argv3500) {
  %_argc3503 = alloca i64
  %_argv3501 = alloca { i64, [0 x i8*] }*
  %_test_array3506 = alloca { i64, [0 x i64] }*
  %_i3507 = alloca i64
  %_even3523 = alloca i1
  %_odd3526 = alloca i1
  store i64 %_argc3502, i64* %_argc3503
  store { i64, [0 x i8*] }* %_argv3500, { i64, [0 x i8*] }** %_argv3501
  %_raw_array3504 = call i64* @oat_alloc_array(i64 100)
  %_array3505 = bitcast i64* %_raw_array3504 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3505, { i64, [0 x i64] }** %_test_array3506
  store i64 0, i64* %_i3507
  br label %_cond3512
_cond3512:
  %_i3508 = load i64, i64* %_i3507
  %_bop3509 = icmp slt i64 %_i3508, 100
  br i1 %_bop3509, label %_body3511, label %_post3510
_body3511:
  %_test_array3513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3506
  %_i3514 = load i64, i64* %_i3507
  %_index_ptr3515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_test_array3513, i32 0, i32 1, i64 %_i3514
  %_i3516 = load i64, i64* %_i3507
  %_bop3517 = mul i64 2, %_i3516
  %_bop3518 = add i64 %_bop3517, 1
  store i64 %_bop3518, i64* %_index_ptr3515
  %_i3519 = load i64, i64* %_i3507
  %_bop3520 = add i64 %_i3519, 1
  store i64 %_bop3520, i64* %_i3507
  br label %_cond3512
_post3510:
  %_test_array3521 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3506
  %_result3522 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3521, i64 80, i64 0, i64 99)
  store i1 %_result3522, i1* %_even3523
  %_test_array3524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_test_array3506
  %_result3525 = call i1 @binary_search({ i64, [0 x i64] }* %_test_array3524, i64 81, i64 0, i64 99)
  store i1 %_result3525, i1* %_odd3526
  %_even3527 = load i1, i1* %_even3523
  %_odd3528 = load i1, i1* %_odd3526
  %_bop3529 = and i1 %_even3527, %_odd3528
  %_unop3530 = icmp eq i1 %_bop3529, 0
  %_even3531 = load i1, i1* %_even3523
  %_odd3532 = load i1, i1* %_odd3526
  %_bop3533 = or i1 %_even3531, %_odd3532
  %_bop3534 = and i1 %_unop3530, %_bop3533
  br i1 %_bop3534, label %_then3540, label %_else3539
_then3540:
  %_str3535 = getelementptr [9 x i8], [9 x i8]* @_str_arr3536, i32 0, i32 0
  call void @print_string(i8* %_str3535)
  br label %_merge3538
_else3539:
  br label %_merge3538
_merge3538:
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
