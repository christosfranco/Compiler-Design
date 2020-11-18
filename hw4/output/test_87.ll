; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_arr3604 = global [2 x i8] c"
\00"

define i64 @xor(i64 %_x3648, i64 %_y3646) {
  %_x3649 = alloca i64
  %_y3647 = alloca i64
  store i64 %_x3648, i64* %_x3649
  store i64 %_y3646, i64* %_y3647
  %_x3650 = load i64, i64* %_x3649
  %_y3651 = load i64, i64* %_y3647
  %_bop3652 = and i64 %_x3650, %_y3651
  %_unop3653 = xor i64 %_bop3652, -1
  %_x3654 = load i64, i64* %_x3649
  %_y3655 = load i64, i64* %_y3647
  %_bop3656 = or i64 %_x3654, %_y3655
  %_bop3657 = and i64 %_unop3653, %_bop3656
  ret i64 %_bop3657
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s3609) {
  %_s3610 = alloca { i64, [0 x i64] }*
  %_x3615 = alloca i64
  %_y3620 = alloca i64
  store { i64, [0 x i64] }* %_s3609, { i64, [0 x i64] }** %_s3610
  %_s3611 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3610
  %_index_ptr3613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3611, i32 0, i32 1, i32 0
  %_index3614 = load i64, i64* %_index_ptr3613
  store i64 %_index3614, i64* %_x3615
  %_s3616 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3610
  %_index_ptr3618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3616, i32 0, i32 1, i32 1
  %_index3619 = load i64, i64* %_index_ptr3618
  store i64 %_index3619, i64* %_y3620
  %_s3621 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3610
  %_index_ptr3623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3621, i32 0, i32 1, i32 0
  %_y3624 = load i64, i64* %_y3620
  store i64 %_y3624, i64* %_index_ptr3623
  %_x3625 = load i64, i64* %_x3615
  %_bop3626 = shl i64 %_x3625, 23
  %_x3627 = load i64, i64* %_x3615
  %_result3628 = call i64 @xor(i64 %_x3627, i64 %_bop3626)
  store i64 %_result3628, i64* %_x3615
  %_x3629 = load i64, i64* %_x3615
  %_bop3630 = lshr i64 %_x3629, 17
  %_x3631 = load i64, i64* %_x3615
  %_result3632 = call i64 @xor(i64 %_x3631, i64 %_bop3630)
  store i64 %_result3632, i64* %_x3615
  %_y3633 = load i64, i64* %_y3620
  %_bop3634 = lshr i64 %_y3633, 26
  %_y3635 = load i64, i64* %_y3620
  %_result3636 = call i64 @xor(i64 %_y3635, i64 %_bop3634)
  %_x3637 = load i64, i64* %_x3615
  %_result3638 = call i64 @xor(i64 %_x3637, i64 %_result3636)
  store i64 %_result3638, i64* %_x3615
  %_s3639 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3610
  %_index_ptr3641 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3639, i32 0, i32 1, i32 1
  %_x3642 = load i64, i64* %_x3615
  store i64 %_x3642, i64* %_index_ptr3641
  %_x3643 = load i64, i64* %_x3615
  %_y3644 = load i64, i64* %_y3620
  %_bop3645 = add i64 %_x3643, %_y3644
  ret i64 %_bop3645
}

define i64 @program(i64 %_argc3580, { i64, [0 x i8*] }* %_argv3578) {
  %_argc3581 = alloca i64
  %_argv3579 = alloca { i64, [0 x i8*] }*
  %_seed3584 = alloca { i64, [0 x i64] }*
  %_i3585 = alloca i64
  store i64 %_argc3580, i64* %_argc3581
  store { i64, [0 x i8*] }* %_argv3578, { i64, [0 x i8*] }** %_argv3579
  %_raw_array3582 = call i64* @oat_alloc_array(i64 2)
  %_array3583 = bitcast i64* %_raw_array3582 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3583, { i64, [0 x i64] }** %_seed3584
  store i64 0, i64* %_i3585
  br label %_cond3590
_cond3590:
  %_i3586 = load i64, i64* %_i3585
  %_bop3587 = icmp slt i64 %_i3586, 2
  br i1 %_bop3587, label %_body3589, label %_post3588
_body3589:
  %_seed3591 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3584
  %_i3592 = load i64, i64* %_i3585
  %_index_ptr3594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed3591, i32 0, i32 1, i64 %_i3592
  %_i3595 = load i64, i64* %_i3585
  %_bop3596 = add i64 %_i3595, 1
  %_bop3597 = mul i64 100, %_bop3596
  store i64 %_bop3597, i64* %_index_ptr3594
  %_i3598 = load i64, i64* %_i3585
  %_bop3599 = add i64 %_i3598, 1
  store i64 %_bop3599, i64* %_i3585
  br label %_cond3590
_post3588:
  %_seed3600 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3584
  %_result3601 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3600)
  call void @print_int(i64 %_result3601)
  %_str3603 = getelementptr [2 x i8], [2 x i8]* @_str_arr3604, i32 0, i32 0
  call void @print_string(i8* %_str3603)
  %_seed3606 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3584
  %_result3607 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3606)
  call void @print_int(i64 %_result3607)
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
