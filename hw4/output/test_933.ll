; generated from: oatprograms/xor_shift.oat
target triple = "x86_64-unknown-linux"
@_str_arr3672 = global [2 x i8] c"
\00"

define i64 @xor(i64 %_x3712, i64 %_y3710) {
  %_x3713 = alloca i64
  %_y3711 = alloca i64
  store i64 %_x3712, i64* %_x3713
  store i64 %_y3710, i64* %_y3711
  %_x3714 = load i64, i64* %_x3713
  %_y3715 = load i64, i64* %_y3711
  %_bop3716 = and i64 %_x3714, %_y3715
  %_unop3717 = xor i64 %_bop3716, -1
  %_x3718 = load i64, i64* %_x3713
  %_y3719 = load i64, i64* %_y3711
  %_bop3720 = or i64 %_x3718, %_y3719
  %_bop3721 = and i64 %_unop3717, %_bop3720
  ret i64 %_bop3721
}

define i64 @xor_shift_plus({ i64, [0 x i64] }* %_s3677) {
  %_s3678 = alloca { i64, [0 x i64] }*
  %_x3682 = alloca i64
  %_y3686 = alloca i64
  store { i64, [0 x i64] }* %_s3677, { i64, [0 x i64] }** %_s3678
  %_s3679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3678
  %_index_ptr3680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3679, i32 0, i32 1, i32 0
  %_index3681 = load i64, i64* %_index_ptr3680
  store i64 %_index3681, i64* %_x3682
  %_s3683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3678
  %_index_ptr3684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3683, i32 0, i32 1, i32 1
  %_index3685 = load i64, i64* %_index_ptr3684
  store i64 %_index3685, i64* %_y3686
  %_s3687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3678
  %_index_ptr3688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3687, i32 0, i32 1, i32 0
  %_y3689 = load i64, i64* %_y3686
  store i64 %_y3689, i64* %_index_ptr3688
  %_x3690 = load i64, i64* %_x3682
  %_bop3691 = shl i64 %_x3690, 23
  %_x3692 = load i64, i64* %_x3682
  %_result3693 = call i64 @xor(i64 %_x3692, i64 %_bop3691)
  store i64 %_result3693, i64* %_x3682
  %_x3694 = load i64, i64* %_x3682
  %_bop3695 = lshr i64 %_x3694, 17
  %_x3696 = load i64, i64* %_x3682
  %_result3697 = call i64 @xor(i64 %_x3696, i64 %_bop3695)
  store i64 %_result3697, i64* %_x3682
  %_y3698 = load i64, i64* %_y3686
  %_bop3699 = lshr i64 %_y3698, 26
  %_y3700 = load i64, i64* %_y3686
  %_result3701 = call i64 @xor(i64 %_y3700, i64 %_bop3699)
  %_x3702 = load i64, i64* %_x3682
  %_result3703 = call i64 @xor(i64 %_x3702, i64 %_result3701)
  store i64 %_result3703, i64* %_x3682
  %_s3704 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_s3678
  %_index_ptr3705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_s3704, i32 0, i32 1, i32 1
  %_x3706 = load i64, i64* %_x3682
  store i64 %_x3706, i64* %_index_ptr3705
  %_x3707 = load i64, i64* %_x3682
  %_y3708 = load i64, i64* %_y3686
  %_bop3709 = add i64 %_x3707, %_y3708
  ret i64 %_bop3709
}

define i64 @program(i64 %_argc3649, { i64, [0 x i8*] }* %_argv3647) {
  %_argc3650 = alloca i64
  %_argv3648 = alloca { i64, [0 x i8*] }*
  %_seed3653 = alloca { i64, [0 x i64] }*
  %_i3654 = alloca i64
  store i64 %_argc3649, i64* %_argc3650
  store { i64, [0 x i8*] }* %_argv3647, { i64, [0 x i8*] }** %_argv3648
  %_raw_array3651 = call i64* @oat_alloc_array(i64 2)
  %_array3652 = bitcast i64* %_raw_array3651 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3652, { i64, [0 x i64] }** %_seed3653
  store i64 0, i64* %_i3654
  br label %_cond3659
_cond3659:
  %_i3655 = load i64, i64* %_i3654
  %_bop3656 = icmp slt i64 %_i3655, 2
  br i1 %_bop3656, label %_body3658, label %_post3657
_body3658:
  %_seed3660 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3653
  %_i3661 = load i64, i64* %_i3654
  %_index_ptr3662 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_seed3660, i32 0, i32 1, i64 %_i3661
  %_i3663 = load i64, i64* %_i3654
  %_bop3664 = add i64 %_i3663, 1
  %_bop3665 = mul i64 100, %_bop3664
  store i64 %_bop3665, i64* %_index_ptr3662
  %_i3666 = load i64, i64* %_i3654
  %_bop3667 = add i64 %_i3666, 1
  store i64 %_bop3667, i64* %_i3654
  br label %_cond3659
_post3657:
  %_seed3668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3653
  %_result3669 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3668)
  call void @print_int(i64 %_result3669)
  %_str3671 = getelementptr [2 x i8], [2 x i8]* @_str_arr3672, i32 0, i32 0
  call void @print_string(i8* %_str3671)
  %_seed3674 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_seed3653
  %_result3675 = call i64 @xor_shift_plus({ i64, [0 x i64] }* %_seed3674)
  call void @print_int(i64 %_result3675)
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
