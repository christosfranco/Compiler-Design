; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str_arr3552 = global [2 x i8] c" \00"
@_str_arr3557 = global [2 x i8] c"	\00"

define i64 @program(i64 %_argc3704, { i64, [0 x i8*] }* %_argv3702) {
  %_argc3705 = alloca i64
  %_argv3703 = alloca { i64, [0 x i8*] }*
  %_a3720 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3744 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3761 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc3704, i64* %_argc3705
  store { i64, [0 x i8*] }* %_argv3702, { i64, [0 x i8*] }** %_argv3703
  %_raw_array3706 = call i64* @oat_alloc_array(i64 2)
  %_array3707 = bitcast i64* %_raw_array3706 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3708 = call i64* @oat_alloc_array(i64 3)
  %_array3709 = bitcast i64* %_raw_array3708 to { i64, [0 x i64] }*
  %_ind3710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3709, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3710
  %_ind3711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3709, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3711
  %_ind3712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3709, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3712
  %_ind3713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3707, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3709, { i64, [0 x i64] }** %_ind3713
  %_raw_array3714 = call i64* @oat_alloc_array(i64 3)
  %_array3715 = bitcast i64* %_raw_array3714 to { i64, [0 x i64] }*
  %_ind3716 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3715, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3716
  %_ind3717 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3715, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3717
  %_ind3718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3715, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3718
  %_ind3719 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3707, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3715, { i64, [0 x i64] }** %_ind3719
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3707, { i64, [0 x { i64, [0 x i64] }*] }** %_a3720
  %_raw_array3721 = call i64* @oat_alloc_array(i64 3)
  %_array3722 = bitcast i64* %_raw_array3721 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3723 = call i64* @oat_alloc_array(i64 4)
  %_array3724 = bitcast i64* %_raw_array3723 to { i64, [0 x i64] }*
  %_ind3725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3724, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3725
  %_ind3726 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3724, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3726
  %_ind3727 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3724, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3727
  %_ind3728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3724, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3728
  %_ind3729 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3722, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3724, { i64, [0 x i64] }** %_ind3729
  %_raw_array3730 = call i64* @oat_alloc_array(i64 4)
  %_array3731 = bitcast i64* %_raw_array3730 to { i64, [0 x i64] }*
  %_ind3732 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3731, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3732
  %_ind3733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3731, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3733
  %_ind3734 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3731, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3734
  %_ind3735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3731, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3735
  %_ind3736 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3722, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3731, { i64, [0 x i64] }** %_ind3736
  %_raw_array3737 = call i64* @oat_alloc_array(i64 4)
  %_array3738 = bitcast i64* %_raw_array3737 to { i64, [0 x i64] }*
  %_ind3739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3738, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3739
  %_ind3740 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3738, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3740
  %_ind3741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3738, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3741
  %_ind3742 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3738, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3742
  %_ind3743 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3722, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3738, { i64, [0 x i64] }** %_ind3743
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3722, { i64, [0 x { i64, [0 x i64] }*] }** %_b3744
  %_raw_array3745 = call i64* @oat_alloc_array(i64 2)
  %_array3746 = bitcast i64* %_raw_array3745 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3747 = call i64* @oat_alloc_array(i64 4)
  %_array3748 = bitcast i64* %_raw_array3747 to { i64, [0 x i64] }*
  %_ind3749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3748, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3749
  %_ind3750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3748, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3750
  %_ind3751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3748, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3751
  %_ind3752 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3748, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3752
  %_ind3753 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3746, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3748, { i64, [0 x i64] }** %_ind3753
  %_raw_array3754 = call i64* @oat_alloc_array(i64 4)
  %_array3755 = bitcast i64* %_raw_array3754 to { i64, [0 x i64] }*
  %_ind3756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3755, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3756
  %_ind3757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3755, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3757
  %_ind3758 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3755, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3758
  %_ind3759 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3755, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3759
  %_ind3760 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3746, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3755, { i64, [0 x i64] }** %_ind3760
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3746, { i64, [0 x { i64, [0 x i64] }*] }** %_c3761
  %_c3762 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3761
  %_b3763 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3744
  %_a3764 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3720
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3764, { i64, [0 x { i64, [0 x i64] }*] }* %_b3763, { i64, [0 x { i64, [0 x i64] }*] }* %_c3762)
  %_c3766 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3761
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3766, i64 2)
  %_c3768 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3761
  %_b3769 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3744
  %_a3770 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3720
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3770, { i64, [0 x { i64, [0 x i64] }*] }* %_b3769, { i64, [0 x { i64, [0 x i64] }*] }* %_c3768)
  %_c3772 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3761
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3772, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13639, { i64, [0 x { i64, [0 x i64] }*] }* %_a23637, { i64, [0 x { i64, [0 x i64] }*] }* %_a33635) {
  %_a13640 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23638 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33636 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3641 = alloca i64
  %_j3647 = alloca i64
  %_k3653 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13639, { i64, [0 x { i64, [0 x i64] }*] }** %_a13640
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23637, { i64, [0 x { i64, [0 x i64] }*] }** %_a23638
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33635, { i64, [0 x { i64, [0 x i64] }*] }** %_a33636
  store i64 0, i64* %_i3641
  br label %_cond3646
_cond3646:
  %_i3642 = load i64, i64* %_i3641
  %_bop3643 = icmp slt i64 %_i3642, 2
  br i1 %_bop3643, label %_body3645, label %_post3644
_body3645:
  store i64 0, i64* %_j3647
  br label %_cond3652
_cond3652:
  %_j3648 = load i64, i64* %_j3647
  %_bop3649 = icmp slt i64 %_j3648, 4
  br i1 %_bop3649, label %_body3651, label %_post3650
_body3651:
  store i64 0, i64* %_k3653
  br label %_cond3658
_cond3658:
  %_k3654 = load i64, i64* %_k3653
  %_bop3655 = icmp slt i64 %_k3654, 3
  br i1 %_bop3655, label %_body3657, label %_post3656
_body3657:
  %_a33659 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33636
  %_i3660 = load i64, i64* %_i3641
  %_index_ptr3662 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33659, i32 0, i32 1, i64 %_i3660
  %_index3663 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3662
  %_j3664 = load i64, i64* %_j3647
  %_index_ptr3666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3663, i32 0, i32 1, i64 %_j3664
  %_a33667 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33636
  %_i3668 = load i64, i64* %_i3641
  %_index_ptr3670 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33667, i32 0, i32 1, i64 %_i3668
  %_index3671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3670
  %_j3672 = load i64, i64* %_j3647
  %_index_ptr3674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3671, i32 0, i32 1, i64 %_j3672
  %_index3675 = load i64, i64* %_index_ptr3674
  %_a13676 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13640
  %_i3677 = load i64, i64* %_i3641
  %_index_ptr3679 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13676, i32 0, i32 1, i64 %_i3677
  %_index3680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3679
  %_k3681 = load i64, i64* %_k3653
  %_index_ptr3683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3680, i32 0, i32 1, i64 %_k3681
  %_index3684 = load i64, i64* %_index_ptr3683
  %_a23685 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23638
  %_k3686 = load i64, i64* %_k3653
  %_index_ptr3688 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23685, i32 0, i32 1, i64 %_k3686
  %_index3689 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3688
  %_j3690 = load i64, i64* %_j3647
  %_index_ptr3692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3689, i32 0, i32 1, i64 %_j3690
  %_index3693 = load i64, i64* %_index_ptr3692
  %_bop3694 = mul i64 %_index3684, %_index3693
  %_bop3695 = add i64 %_index3675, %_bop3694
  store i64 %_bop3695, i64* %_index_ptr3666
  %_k3696 = load i64, i64* %_k3653
  %_bop3697 = add i64 %_k3696, 1
  store i64 %_bop3697, i64* %_k3653
  br label %_cond3658
_post3656:
  %_j3698 = load i64, i64* %_j3647
  %_bop3699 = add i64 %_j3698, 1
  store i64 %_bop3699, i64* %_j3647
  br label %_cond3652
_post3650:
  %_i3700 = load i64, i64* %_i3641
  %_bop3701 = add i64 %_i3700, 1
  store i64 %_bop3701, i64* %_i3641
  br label %_cond3646
_post3644:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13604, { i64, [0 x { i64, [0 x i64] }*] }* %_a23602, { i64, [0 x { i64, [0 x i64] }*] }* %_a33600) {
  %_a13605 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23603 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33601 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3606 = alloca i64
  %_j3612 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13604, { i64, [0 x { i64, [0 x i64] }*] }** %_a13605
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23602, { i64, [0 x { i64, [0 x i64] }*] }** %_a23603
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33600, { i64, [0 x { i64, [0 x i64] }*] }** %_a33601
  store i64 0, i64* %_i3606
  br label %_cond3611
_cond3611:
  %_i3607 = load i64, i64* %_i3606
  %_bop3608 = icmp slt i64 %_i3607, 2
  br i1 %_bop3608, label %_body3610, label %_post3609
_body3610:
  store i64 0, i64* %_j3612
  br label %_cond3617
_cond3617:
  %_j3613 = load i64, i64* %_j3612
  %_bop3614 = icmp slt i64 %_j3613, 4
  br i1 %_bop3614, label %_body3616, label %_post3615
_body3616:
  %_a33618 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33601
  %_i3619 = load i64, i64* %_i3606
  %_index_ptr3621 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33618, i32 0, i32 1, i64 %_i3619
  %_index3622 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3621
  %_j3623 = load i64, i64* %_j3612
  %_index_ptr3625 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3622, i32 0, i32 1, i64 %_j3623
  %_j3626 = load i64, i64* %_j3612
  %_i3627 = load i64, i64* %_i3606
  %_a23628 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23603
  %_a13629 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13605
  %_result3630 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13629, { i64, [0 x { i64, [0 x i64] }*] }* %_a23628, i64 %_i3627, i64 %_j3626)
  store i64 %_result3630, i64* %_index_ptr3625
  %_j3631 = load i64, i64* %_j3612
  %_bop3632 = add i64 %_j3631, 1
  store i64 %_bop3632, i64* %_j3612
  br label %_cond3617
_post3615:
  %_i3633 = load i64, i64* %_i3606
  %_bop3634 = add i64 %_i3633, 1
  store i64 %_bop3634, i64* %_i3606
  br label %_cond3611
_post3609:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13567, { i64, [0 x { i64, [0 x i64] }*] }* %_a23565, i64 %_row3563, i64 %_col3561) {
  %_a13568 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23566 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3564 = alloca i64
  %_col3562 = alloca i64
  %_sum3569 = alloca i64
  %_k3570 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13567, { i64, [0 x { i64, [0 x i64] }*] }** %_a13568
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23565, { i64, [0 x { i64, [0 x i64] }*] }** %_a23566
  store i64 %_row3563, i64* %_row3564
  store i64 %_col3561, i64* %_col3562
  store i64 0, i64* %_sum3569
  store i64 0, i64* %_k3570
  br label %_cond3575
_cond3575:
  %_k3571 = load i64, i64* %_k3570
  %_bop3572 = icmp slt i64 %_k3571, 3
  br i1 %_bop3572, label %_body3574, label %_post3573
_body3574:
  %_sum3576 = load i64, i64* %_sum3569
  %_a13577 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13568
  %_row3578 = load i64, i64* %_row3564
  %_index_ptr3580 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13577, i32 0, i32 1, i64 %_row3578
  %_index3581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3580
  %_k3582 = load i64, i64* %_k3570
  %_index_ptr3584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3581, i32 0, i32 1, i64 %_k3582
  %_index3585 = load i64, i64* %_index_ptr3584
  %_a23586 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23566
  %_k3587 = load i64, i64* %_k3570
  %_index_ptr3589 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23586, i32 0, i32 1, i64 %_k3587
  %_index3590 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3589
  %_col3591 = load i64, i64* %_col3562
  %_index_ptr3593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3590, i32 0, i32 1, i64 %_col3591
  %_index3594 = load i64, i64* %_index_ptr3593
  %_bop3595 = mul i64 %_index3585, %_index3594
  %_bop3596 = add i64 %_sum3576, %_bop3595
  store i64 %_bop3596, i64* %_sum3569
  %_k3597 = load i64, i64* %_k3570
  %_bop3598 = add i64 %_k3597, 1
  store i64 %_bop3598, i64* %_k3570
  br label %_cond3575
_post3573:
  %_sum3599 = load i64, i64* %_sum3569
  ret i64 %_sum3599
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3526, i64 %_n3524) {
  %_ar3527 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3525 = alloca i64
  %_i3528 = alloca i64
  %_j3535 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3526, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3527
  store i64 %_n3524, i64* %_n3525
  store i64 0, i64* %_i3528
  br label %_cond3534
_cond3534:
  %_i3529 = load i64, i64* %_i3528
  %_n3530 = load i64, i64* %_n3525
  %_bop3531 = icmp slt i64 %_i3529, %_n3530
  br i1 %_bop3531, label %_body3533, label %_post3532
_body3533:
  store i64 0, i64* %_j3535
  br label %_cond3540
_cond3540:
  %_j3536 = load i64, i64* %_j3535
  %_bop3537 = icmp slt i64 %_j3536, 4
  br i1 %_bop3537, label %_body3539, label %_post3538
_body3539:
  %_ar3541 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3527
  %_i3542 = load i64, i64* %_i3528
  %_index_ptr3544 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3541, i32 0, i32 1, i64 %_i3542
  %_index3545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3544
  %_j3546 = load i64, i64* %_j3535
  %_index_ptr3548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3545, i32 0, i32 1, i64 %_j3546
  %_index3549 = load i64, i64* %_index_ptr3548
  call void @print_int(i64 %_index3549)
  %_str3551 = getelementptr [2 x i8], [2 x i8]* @_str_arr3552, i32 0, i32 0
  call void @print_string(i8* %_str3551)
  %_j3554 = load i64, i64* %_j3535
  %_bop3555 = add i64 %_j3554, 1
  store i64 %_bop3555, i64* %_j3535
  br label %_cond3540
_post3538:
  %_str3556 = getelementptr [2 x i8], [2 x i8]* @_str_arr3557, i32 0, i32 0
  call void @print_string(i8* %_str3556)
  %_i3559 = load i64, i64* %_i3528
  %_bop3560 = add i64 %_i3559, 1
  store i64 %_bop3560, i64* %_i3528
  br label %_cond3534
_post3532:
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
