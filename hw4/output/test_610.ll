; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str_arr3549 = global [2 x i8] c" \00"
@_str_arr3554 = global [2 x i8] c"	\00"

define i64 @program(i64 %_argc3701, { i64, [0 x i8*] }* %_argv3699) {
  %_argc3702 = alloca i64
  %_argv3700 = alloca { i64, [0 x i8*] }*
  %_a3717 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3741 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3758 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc3701, i64* %_argc3702
  store { i64, [0 x i8*] }* %_argv3699, { i64, [0 x i8*] }** %_argv3700
  %_raw_array3703 = call i64* @oat_alloc_array(i64 2)
  %_array3704 = bitcast i64* %_raw_array3703 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3705 = call i64* @oat_alloc_array(i64 3)
  %_array3706 = bitcast i64* %_raw_array3705 to { i64, [0 x i64] }*
  %_ind3707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3706, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3707
  %_ind3708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3706, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3708
  %_ind3709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3706, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3709
  %_ind3710 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3704, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3706, { i64, [0 x i64] }** %_ind3710
  %_raw_array3711 = call i64* @oat_alloc_array(i64 3)
  %_array3712 = bitcast i64* %_raw_array3711 to { i64, [0 x i64] }*
  %_ind3713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3712, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3713
  %_ind3714 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3712, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3714
  %_ind3715 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3712, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3715
  %_ind3716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3704, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3712, { i64, [0 x i64] }** %_ind3716
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3704, { i64, [0 x { i64, [0 x i64] }*] }** %_a3717
  %_raw_array3718 = call i64* @oat_alloc_array(i64 3)
  %_array3719 = bitcast i64* %_raw_array3718 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3720 = call i64* @oat_alloc_array(i64 4)
  %_array3721 = bitcast i64* %_raw_array3720 to { i64, [0 x i64] }*
  %_ind3722 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3721, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3722
  %_ind3723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3721, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3723
  %_ind3724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3721, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3724
  %_ind3725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3721, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3725
  %_ind3726 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3719, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3721, { i64, [0 x i64] }** %_ind3726
  %_raw_array3727 = call i64* @oat_alloc_array(i64 4)
  %_array3728 = bitcast i64* %_raw_array3727 to { i64, [0 x i64] }*
  %_ind3729 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3728, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3729
  %_ind3730 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3728, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3730
  %_ind3731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3728, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3731
  %_ind3732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3728, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3732
  %_ind3733 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3719, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3728, { i64, [0 x i64] }** %_ind3733
  %_raw_array3734 = call i64* @oat_alloc_array(i64 4)
  %_array3735 = bitcast i64* %_raw_array3734 to { i64, [0 x i64] }*
  %_ind3736 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3735, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3736
  %_ind3737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3735, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3737
  %_ind3738 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3735, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3738
  %_ind3739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3735, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3739
  %_ind3740 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3719, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3735, { i64, [0 x i64] }** %_ind3740
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3719, { i64, [0 x { i64, [0 x i64] }*] }** %_b3741
  %_raw_array3742 = call i64* @oat_alloc_array(i64 2)
  %_array3743 = bitcast i64* %_raw_array3742 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3744 = call i64* @oat_alloc_array(i64 4)
  %_array3745 = bitcast i64* %_raw_array3744 to { i64, [0 x i64] }*
  %_ind3746 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3745, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3746
  %_ind3747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3745, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3747
  %_ind3748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3745, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3748
  %_ind3749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3745, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3749
  %_ind3750 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3743, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3745, { i64, [0 x i64] }** %_ind3750
  %_raw_array3751 = call i64* @oat_alloc_array(i64 4)
  %_array3752 = bitcast i64* %_raw_array3751 to { i64, [0 x i64] }*
  %_ind3753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3752, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3753
  %_ind3754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3752, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3754
  %_ind3755 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3752, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3755
  %_ind3756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3752, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3756
  %_ind3757 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3743, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3752, { i64, [0 x i64] }** %_ind3757
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3743, { i64, [0 x { i64, [0 x i64] }*] }** %_c3758
  %_c3759 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3758
  %_b3760 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3741
  %_a3761 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3717
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3761, { i64, [0 x { i64, [0 x i64] }*] }* %_b3760, { i64, [0 x { i64, [0 x i64] }*] }* %_c3759)
  %_c3763 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3758
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3763, i64 2)
  %_c3765 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3758
  %_b3766 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3741
  %_a3767 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3717
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3767, { i64, [0 x { i64, [0 x i64] }*] }* %_b3766, { i64, [0 x { i64, [0 x i64] }*] }* %_c3765)
  %_c3769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3758
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3769, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13636, { i64, [0 x { i64, [0 x i64] }*] }* %_a23634, { i64, [0 x { i64, [0 x i64] }*] }* %_a33632) {
  %_a13637 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23635 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33633 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3638 = alloca i64
  %_j3644 = alloca i64
  %_k3650 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13636, { i64, [0 x { i64, [0 x i64] }*] }** %_a13637
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23634, { i64, [0 x { i64, [0 x i64] }*] }** %_a23635
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33632, { i64, [0 x { i64, [0 x i64] }*] }** %_a33633
  store i64 0, i64* %_i3638
  br label %_cond3643
_cond3643:
  %_i3639 = load i64, i64* %_i3638
  %_bop3640 = icmp slt i64 %_i3639, 2
  br i1 %_bop3640, label %_body3642, label %_post3641
_body3642:
  store i64 0, i64* %_j3644
  br label %_cond3649
_cond3649:
  %_j3645 = load i64, i64* %_j3644
  %_bop3646 = icmp slt i64 %_j3645, 4
  br i1 %_bop3646, label %_body3648, label %_post3647
_body3648:
  store i64 0, i64* %_k3650
  br label %_cond3655
_cond3655:
  %_k3651 = load i64, i64* %_k3650
  %_bop3652 = icmp slt i64 %_k3651, 3
  br i1 %_bop3652, label %_body3654, label %_post3653
_body3654:
  %_a33656 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33633
  %_i3657 = load i64, i64* %_i3638
  %_index_ptr3659 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33656, i32 0, i32 1, i64 %_i3657
  %_index3660 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3659
  %_j3661 = load i64, i64* %_j3644
  %_index_ptr3663 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3660, i32 0, i32 1, i64 %_j3661
  %_a33664 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33633
  %_i3665 = load i64, i64* %_i3638
  %_index_ptr3667 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33664, i32 0, i32 1, i64 %_i3665
  %_index3668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3667
  %_j3669 = load i64, i64* %_j3644
  %_index_ptr3671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3668, i32 0, i32 1, i64 %_j3669
  %_index3672 = load i64, i64* %_index_ptr3671
  %_a13673 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13637
  %_i3674 = load i64, i64* %_i3638
  %_index_ptr3676 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13673, i32 0, i32 1, i64 %_i3674
  %_index3677 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3676
  %_k3678 = load i64, i64* %_k3650
  %_index_ptr3680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3677, i32 0, i32 1, i64 %_k3678
  %_index3681 = load i64, i64* %_index_ptr3680
  %_a23682 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23635
  %_k3683 = load i64, i64* %_k3650
  %_index_ptr3685 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23682, i32 0, i32 1, i64 %_k3683
  %_index3686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3685
  %_j3687 = load i64, i64* %_j3644
  %_index_ptr3689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3686, i32 0, i32 1, i64 %_j3687
  %_index3690 = load i64, i64* %_index_ptr3689
  %_bop3691 = mul i64 %_index3681, %_index3690
  %_bop3692 = add i64 %_index3672, %_bop3691
  store i64 %_bop3692, i64* %_index_ptr3663
  %_k3693 = load i64, i64* %_k3650
  %_bop3694 = add i64 %_k3693, 1
  store i64 %_bop3694, i64* %_k3650
  br label %_cond3655
_post3653:
  %_j3695 = load i64, i64* %_j3644
  %_bop3696 = add i64 %_j3695, 1
  store i64 %_bop3696, i64* %_j3644
  br label %_cond3649
_post3647:
  %_i3697 = load i64, i64* %_i3638
  %_bop3698 = add i64 %_i3697, 1
  store i64 %_bop3698, i64* %_i3638
  br label %_cond3643
_post3641:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13601, { i64, [0 x { i64, [0 x i64] }*] }* %_a23599, { i64, [0 x { i64, [0 x i64] }*] }* %_a33597) {
  %_a13602 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23600 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33598 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3603 = alloca i64
  %_j3609 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13601, { i64, [0 x { i64, [0 x i64] }*] }** %_a13602
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23599, { i64, [0 x { i64, [0 x i64] }*] }** %_a23600
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33597, { i64, [0 x { i64, [0 x i64] }*] }** %_a33598
  store i64 0, i64* %_i3603
  br label %_cond3608
_cond3608:
  %_i3604 = load i64, i64* %_i3603
  %_bop3605 = icmp slt i64 %_i3604, 2
  br i1 %_bop3605, label %_body3607, label %_post3606
_body3607:
  store i64 0, i64* %_j3609
  br label %_cond3614
_cond3614:
  %_j3610 = load i64, i64* %_j3609
  %_bop3611 = icmp slt i64 %_j3610, 4
  br i1 %_bop3611, label %_body3613, label %_post3612
_body3613:
  %_a33615 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33598
  %_i3616 = load i64, i64* %_i3603
  %_index_ptr3618 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33615, i32 0, i32 1, i64 %_i3616
  %_index3619 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3618
  %_j3620 = load i64, i64* %_j3609
  %_index_ptr3622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3619, i32 0, i32 1, i64 %_j3620
  %_j3623 = load i64, i64* %_j3609
  %_i3624 = load i64, i64* %_i3603
  %_a23625 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23600
  %_a13626 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13602
  %_result3627 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13626, { i64, [0 x { i64, [0 x i64] }*] }* %_a23625, i64 %_i3624, i64 %_j3623)
  store i64 %_result3627, i64* %_index_ptr3622
  %_j3628 = load i64, i64* %_j3609
  %_bop3629 = add i64 %_j3628, 1
  store i64 %_bop3629, i64* %_j3609
  br label %_cond3614
_post3612:
  %_i3630 = load i64, i64* %_i3603
  %_bop3631 = add i64 %_i3630, 1
  store i64 %_bop3631, i64* %_i3603
  br label %_cond3608
_post3606:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13564, { i64, [0 x { i64, [0 x i64] }*] }* %_a23562, i64 %_row3560, i64 %_col3558) {
  %_a13565 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23563 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3561 = alloca i64
  %_col3559 = alloca i64
  %_sum3566 = alloca i64
  %_k3567 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13564, { i64, [0 x { i64, [0 x i64] }*] }** %_a13565
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23562, { i64, [0 x { i64, [0 x i64] }*] }** %_a23563
  store i64 %_row3560, i64* %_row3561
  store i64 %_col3558, i64* %_col3559
  store i64 0, i64* %_sum3566
  store i64 0, i64* %_k3567
  br label %_cond3572
_cond3572:
  %_k3568 = load i64, i64* %_k3567
  %_bop3569 = icmp slt i64 %_k3568, 3
  br i1 %_bop3569, label %_body3571, label %_post3570
_body3571:
  %_sum3573 = load i64, i64* %_sum3566
  %_a13574 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13565
  %_row3575 = load i64, i64* %_row3561
  %_index_ptr3577 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13574, i32 0, i32 1, i64 %_row3575
  %_index3578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3577
  %_k3579 = load i64, i64* %_k3567
  %_index_ptr3581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3578, i32 0, i32 1, i64 %_k3579
  %_index3582 = load i64, i64* %_index_ptr3581
  %_a23583 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23563
  %_k3584 = load i64, i64* %_k3567
  %_index_ptr3586 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23583, i32 0, i32 1, i64 %_k3584
  %_index3587 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3586
  %_col3588 = load i64, i64* %_col3559
  %_index_ptr3590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3587, i32 0, i32 1, i64 %_col3588
  %_index3591 = load i64, i64* %_index_ptr3590
  %_bop3592 = mul i64 %_index3582, %_index3591
  %_bop3593 = add i64 %_sum3573, %_bop3592
  store i64 %_bop3593, i64* %_sum3566
  %_k3594 = load i64, i64* %_k3567
  %_bop3595 = add i64 %_k3594, 1
  store i64 %_bop3595, i64* %_k3567
  br label %_cond3572
_post3570:
  %_sum3596 = load i64, i64* %_sum3566
  ret i64 %_sum3596
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3523, i64 %_n3521) {
  %_ar3524 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3522 = alloca i64
  %_i3525 = alloca i64
  %_j3532 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3523, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3524
  store i64 %_n3521, i64* %_n3522
  store i64 0, i64* %_i3525
  br label %_cond3531
_cond3531:
  %_i3526 = load i64, i64* %_i3525
  %_n3527 = load i64, i64* %_n3522
  %_bop3528 = icmp slt i64 %_i3526, %_n3527
  br i1 %_bop3528, label %_body3530, label %_post3529
_body3530:
  store i64 0, i64* %_j3532
  br label %_cond3537
_cond3537:
  %_j3533 = load i64, i64* %_j3532
  %_bop3534 = icmp slt i64 %_j3533, 4
  br i1 %_bop3534, label %_body3536, label %_post3535
_body3536:
  %_ar3538 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3524
  %_i3539 = load i64, i64* %_i3525
  %_index_ptr3541 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3538, i32 0, i32 1, i64 %_i3539
  %_index3542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3541
  %_j3543 = load i64, i64* %_j3532
  %_index_ptr3545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3542, i32 0, i32 1, i64 %_j3543
  %_index3546 = load i64, i64* %_index_ptr3545
  call void @print_int(i64 %_index3546)
  %_str3548 = getelementptr [2 x i8], [2 x i8]* @_str_arr3549, i32 0, i32 0
  call void @print_string(i8* %_str3548)
  %_j3551 = load i64, i64* %_j3532
  %_bop3552 = add i64 %_j3551, 1
  store i64 %_bop3552, i64* %_j3532
  br label %_cond3537
_post3535:
  %_str3553 = getelementptr [2 x i8], [2 x i8]* @_str_arr3554, i32 0, i32 0
  call void @print_string(i8* %_str3553)
  %_i3556 = load i64, i64* %_i3525
  %_bop3557 = add i64 %_i3556, 1
  store i64 %_bop3557, i64* %_i3525
  br label %_cond3531
_post3529:
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
