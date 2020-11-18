; generated from: oatprograms/count_sort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3679 = global [2 x i8] c"
\00"

define i64 @min({ i64, [0 x i64] }* %_arr3822, i64 %_len3820) {
  %_arr3823 = alloca { i64, [0 x i64] }*
  %_len3821 = alloca i64
  %_min3828 = alloca i64
  %_i3829 = alloca i64
  store { i64, [0 x i64] }* %_arr3822, { i64, [0 x i64] }** %_arr3823
  store i64 %_len3820, i64* %_len3821
  %_arr3824 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3823
  %_index_ptr3826 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3824, i32 0, i32 1, i32 0
  %_index3827 = load i64, i64* %_index_ptr3826
  store i64 %_index3827, i64* %_min3828
  store i64 0, i64* %_i3829
  br label %_cond3835
_cond3835:
  %_i3830 = load i64, i64* %_i3829
  %_len3831 = load i64, i64* %_len3821
  %_bop3832 = icmp slt i64 %_i3830, %_len3831
  br i1 %_bop3832, label %_body3834, label %_post3833
_body3834:
  %_arr3836 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3823
  %_i3837 = load i64, i64* %_i3829
  %_index_ptr3839 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3836, i32 0, i32 1, i64 %_i3837
  %_index3840 = load i64, i64* %_index_ptr3839
  %_min3841 = load i64, i64* %_min3828
  %_bop3842 = icmp slt i64 %_index3840, %_min3841
  br i1 %_bop3842, label %_then3850, label %_else3849
_then3850:
  %_arr3843 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3823
  %_i3844 = load i64, i64* %_i3829
  %_index_ptr3846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3843, i32 0, i32 1, i64 %_i3844
  %_index3847 = load i64, i64* %_index_ptr3846
  store i64 %_index3847, i64* %_min3828
  br label %_merge3848
_else3849:
  br label %_merge3848
_merge3848:
  %_i3851 = load i64, i64* %_i3829
  %_bop3852 = add i64 %_i3851, 1
  store i64 %_bop3852, i64* %_i3829
  br label %_cond3835
_post3833:
  %_min3853 = load i64, i64* %_min3828
  ret i64 %_min3853
}

define i64 @max({ i64, [0 x i64] }* %_arr3788, i64 %_len3786) {
  %_arr3789 = alloca { i64, [0 x i64] }*
  %_len3787 = alloca i64
  %_max3794 = alloca i64
  %_i3795 = alloca i64
  store { i64, [0 x i64] }* %_arr3788, { i64, [0 x i64] }** %_arr3789
  store i64 %_len3786, i64* %_len3787
  %_arr3790 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3789
  %_index_ptr3792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3790, i32 0, i32 1, i32 0
  %_index3793 = load i64, i64* %_index_ptr3792
  store i64 %_index3793, i64* %_max3794
  store i64 0, i64* %_i3795
  br label %_cond3801
_cond3801:
  %_i3796 = load i64, i64* %_i3795
  %_len3797 = load i64, i64* %_len3787
  %_bop3798 = icmp slt i64 %_i3796, %_len3797
  br i1 %_bop3798, label %_body3800, label %_post3799
_body3800:
  %_arr3802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3789
  %_i3803 = load i64, i64* %_i3795
  %_index_ptr3805 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3802, i32 0, i32 1, i64 %_i3803
  %_index3806 = load i64, i64* %_index_ptr3805
  %_max3807 = load i64, i64* %_max3794
  %_bop3808 = icmp sgt i64 %_index3806, %_max3807
  br i1 %_bop3808, label %_then3816, label %_else3815
_then3816:
  %_arr3809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3789
  %_i3810 = load i64, i64* %_i3795
  %_index_ptr3812 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3809, i32 0, i32 1, i64 %_i3810
  %_index3813 = load i64, i64* %_index_ptr3812
  store i64 %_index3813, i64* %_max3794
  br label %_merge3814
_else3815:
  br label %_merge3814
_merge3814:
  %_i3817 = load i64, i64* %_i3795
  %_bop3818 = add i64 %_i3817, 1
  store i64 %_bop3818, i64* %_i3795
  br label %_cond3801
_post3799:
  %_max3819 = load i64, i64* %_max3794
  ret i64 %_max3819
}

define { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr3690, i64 %_len3688) {
  %_arr3691 = alloca { i64, [0 x i64] }*
  %_len3689 = alloca i64
  %_min3695 = alloca i64
  %_max3699 = alloca i64
  %_counts3706 = alloca { i64, [0 x i64] }*
  %_i3707 = alloca i64
  %_i3739 = alloca i64
  %_j3740 = alloca i64
  %_out3744 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr3690, { i64, [0 x i64] }** %_arr3691
  store i64 %_len3688, i64* %_len3689
  %_len3692 = load i64, i64* %_len3689
  %_arr3693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3691
  %_result3694 = call i64 @min({ i64, [0 x i64] }* %_arr3693, i64 %_len3692)
  store i64 %_result3694, i64* %_min3695
  %_len3696 = load i64, i64* %_len3689
  %_arr3697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3691
  %_result3698 = call i64 @max({ i64, [0 x i64] }* %_arr3697, i64 %_len3696)
  store i64 %_result3698, i64* %_max3699
  %_max3700 = load i64, i64* %_max3699
  %_min3701 = load i64, i64* %_min3695
  %_bop3702 = sub i64 %_max3700, %_min3701
  %_bop3703 = add i64 %_bop3702, 1
  %_raw_array3704 = call i64* @oat_alloc_array(i64 %_bop3703)
  %_array3705 = bitcast i64* %_raw_array3704 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3705, { i64, [0 x i64] }** %_counts3706
  store i64 0, i64* %_i3707
  br label %_cond3713
_cond3713:
  %_i3708 = load i64, i64* %_i3707
  %_len3709 = load i64, i64* %_len3689
  %_bop3710 = icmp slt i64 %_i3708, %_len3709
  br i1 %_bop3710, label %_body3712, label %_post3711
_body3712:
  %_counts3714 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3706
  %_arr3715 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3691
  %_i3716 = load i64, i64* %_i3707
  %_index_ptr3718 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3715, i32 0, i32 1, i64 %_i3716
  %_index3719 = load i64, i64* %_index_ptr3718
  %_min3720 = load i64, i64* %_min3695
  %_bop3721 = sub i64 %_index3719, %_min3720
  %_index_ptr3723 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3714, i32 0, i32 1, i64 %_bop3721
  %_counts3724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3706
  %_arr3725 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3691
  %_i3726 = load i64, i64* %_i3707
  %_index_ptr3728 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr3725, i32 0, i32 1, i64 %_i3726
  %_index3729 = load i64, i64* %_index_ptr3728
  %_min3730 = load i64, i64* %_min3695
  %_bop3731 = sub i64 %_index3729, %_min3730
  %_index_ptr3733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3724, i32 0, i32 1, i64 %_bop3731
  %_index3734 = load i64, i64* %_index_ptr3733
  %_bop3735 = add i64 %_index3734, 1
  store i64 %_bop3735, i64* %_index_ptr3723
  %_i3736 = load i64, i64* %_i3707
  %_bop3737 = add i64 %_i3736, 1
  store i64 %_bop3737, i64* %_i3707
  br label %_cond3713
_post3711:
  %_min3738 = load i64, i64* %_min3695
  store i64 %_min3738, i64* %_i3739
  store i64 0, i64* %_j3740
  %_len3741 = load i64, i64* %_len3689
  %_raw_array3742 = call i64* @oat_alloc_array(i64 %_len3741)
  %_array3743 = bitcast i64* %_raw_array3742 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3743, { i64, [0 x i64] }** %_out3744
  br label %_cond3750
_cond3750:
  %_i3745 = load i64, i64* %_i3739
  %_max3746 = load i64, i64* %_max3699
  %_bop3747 = icmp sle i64 %_i3745, %_max3746
  br i1 %_bop3747, label %_body3749, label %_post3748
_body3749:
  %_counts3751 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3706
  %_i3752 = load i64, i64* %_i3739
  %_min3753 = load i64, i64* %_min3695
  %_bop3754 = sub i64 %_i3752, %_min3753
  %_index_ptr3756 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3751, i32 0, i32 1, i64 %_bop3754
  %_index3757 = load i64, i64* %_index_ptr3756
  %_bop3758 = icmp sgt i64 %_index3757, 0
  br i1 %_bop3758, label %_then3784, label %_else3783
_then3784:
  %_out3759 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3744
  %_j3760 = load i64, i64* %_j3740
  %_index_ptr3762 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out3759, i32 0, i32 1, i64 %_j3760
  %_i3763 = load i64, i64* %_i3739
  store i64 %_i3763, i64* %_index_ptr3762
  %_counts3764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3706
  %_i3765 = load i64, i64* %_i3739
  %_min3766 = load i64, i64* %_min3695
  %_bop3767 = sub i64 %_i3765, %_min3766
  %_index_ptr3769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3764, i32 0, i32 1, i64 %_bop3767
  %_counts3770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_counts3706
  %_i3771 = load i64, i64* %_i3739
  %_min3772 = load i64, i64* %_min3695
  %_bop3773 = sub i64 %_i3771, %_min3772
  %_index_ptr3775 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_counts3770, i32 0, i32 1, i64 %_bop3773
  %_index3776 = load i64, i64* %_index_ptr3775
  %_bop3777 = sub i64 %_index3776, 1
  store i64 %_bop3777, i64* %_index_ptr3769
  %_j3778 = load i64, i64* %_j3740
  %_bop3779 = add i64 %_j3778, 1
  store i64 %_bop3779, i64* %_j3740
  br label %_merge3782
_else3783:
  %_i3780 = load i64, i64* %_i3739
  %_bop3781 = add i64 %_i3780, 1
  store i64 %_bop3781, i64* %_i3739
  br label %_merge3782
_merge3782:
  br label %_cond3750
_post3748:
  %_out3785 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out3744
  ret { i64, [0 x i64] }* %_out3785
}

define i64 @program(i64 %_argc3660, { i64, [0 x i8*] }* %_argv3658) {
  %_argc3661 = alloca i64
  %_argv3659 = alloca { i64, [0 x i8*] }*
  %_arr3673 = alloca { i64, [0 x i64] }*
  %_len3674 = alloca i64
  %_sorted3684 = alloca { i64, [0 x i64] }*
  store i64 %_argc3660, i64* %_argc3661
  store { i64, [0 x i8*] }* %_argv3658, { i64, [0 x i8*] }** %_argv3659
  %_raw_array3662 = call i64* @oat_alloc_array(i64 9)
  %_array3663 = bitcast i64* %_raw_array3662 to { i64, [0 x i64] }*
  %_ind3664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 0
  store i64 65, i64* %_ind3664
  %_ind3665 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 1
  store i64 70, i64* %_ind3665
  %_ind3666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 2
  store i64 72, i64* %_ind3666
  %_ind3667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 3
  store i64 90, i64* %_ind3667
  %_ind3668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 4
  store i64 65, i64* %_ind3668
  %_ind3669 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 5
  store i64 65, i64* %_ind3669
  %_ind3670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 6
  store i64 69, i64* %_ind3670
  %_ind3671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 7
  store i64 89, i64* %_ind3671
  %_ind3672 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3663, i32 0, i32 1, i32 8
  store i64 67, i64* %_ind3672
  store { i64, [0 x i64] }* %_array3663, { i64, [0 x i64] }** %_arr3673
  store i64 9, i64* %_len3674
  %_arr3675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3673
  %_result3676 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr3675)
  call void @print_string(i8* %_result3676)
  %_str3678 = getelementptr [2 x i8], [2 x i8]* @_str_arr3679, i32 0, i32 0
  call void @print_string(i8* %_str3678)
  %_len3681 = load i64, i64* %_len3674
  %_arr3682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr3673
  %_result3683 = call { i64, [0 x i64] }* @count_sort({ i64, [0 x i64] }* %_arr3682, i64 %_len3681)
  store { i64, [0 x i64] }* %_result3683, { i64, [0 x i64] }** %_sorted3684
  %_sorted3685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_sorted3684
  %_result3686 = call i8* @string_of_array({ i64, [0 x i64] }* %_sorted3685)
  call void @print_string(i8* %_result3686)
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
