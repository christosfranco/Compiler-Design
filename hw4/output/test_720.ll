; generated from: oatprograms/sieve.oat
target triple = "x86_64-unknown-linux"
define i64 @sieve(i64 %_n3729) {
  %_n3730 = alloca i64
  %_arr3734 = alloca { i64, [0 x i1] }*
  %_i3735 = alloca i64
  %_i3751 = alloca i64
  %_j3764 = alloca i64
  %_count3782 = alloca i64
  %_i3783 = alloca i64
  store i64 %_n3729, i64* %_n3730
  %_n3731 = load i64, i64* %_n3730
  %_raw_array3732 = call i64* @oat_alloc_array(i64 %_n3731)
  %_array3733 = bitcast i64* %_raw_array3732 to { i64, [0 x i1] }*
  store { i64, [0 x i1] }* %_array3733, { i64, [0 x i1] }** %_arr3734
  store i64 0, i64* %_i3735
  br label %_cond3741
_cond3741:
  %_i3736 = load i64, i64* %_i3735
  %_n3737 = load i64, i64* %_n3730
  %_bop3738 = icmp slt i64 %_i3736, %_n3737
  br i1 %_bop3738, label %_body3740, label %_post3739
_body3740:
  %_arr3742 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3734
  %_i3743 = load i64, i64* %_i3735
  %_index_ptr3744 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3742, i32 0, i32 1, i64 %_i3743
  store i1 1, i1* %_index_ptr3744
  %_i3745 = load i64, i64* %_i3735
  %_bop3746 = add i64 %_i3745, 1
  store i64 %_bop3746, i64* %_i3735
  br label %_cond3741
_post3739:
  %_arr3747 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3734
  %_index_ptr3748 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3747, i32 0, i32 1, i32 0
  store i1 0, i1* %_index_ptr3748
  %_arr3749 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3734
  %_index_ptr3750 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3749, i32 0, i32 1, i32 1
  store i1 0, i1* %_index_ptr3750
  store i64 0, i64* %_i3751
  br label %_cond3757
_cond3757:
  %_i3752 = load i64, i64* %_i3751
  %_n3753 = load i64, i64* %_n3730
  %_bop3754 = icmp slt i64 %_i3752, %_n3753
  br i1 %_bop3754, label %_body3756, label %_post3755
_body3756:
  %_arr3758 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3734
  %_i3759 = load i64, i64* %_i3751
  %_index_ptr3760 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3758, i32 0, i32 1, i64 %_i3759
  %_index3761 = load i1, i1* %_index_ptr3760
  br i1 %_index3761, label %_then3779, label %_else3778
_then3779:
  %_i3762 = load i64, i64* %_i3751
  %_bop3763 = mul i64 %_i3762, 2
  store i64 %_bop3763, i64* %_j3764
  br label %_cond3770
_cond3770:
  %_j3765 = load i64, i64* %_j3764
  %_n3766 = load i64, i64* %_n3730
  %_bop3767 = icmp slt i64 %_j3765, %_n3766
  br i1 %_bop3767, label %_body3769, label %_post3768
_body3769:
  %_arr3771 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3734
  %_j3772 = load i64, i64* %_j3764
  %_index_ptr3773 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3771, i32 0, i32 1, i64 %_j3772
  store i1 0, i1* %_index_ptr3773
  %_j3774 = load i64, i64* %_j3764
  %_i3775 = load i64, i64* %_i3751
  %_bop3776 = add i64 %_j3774, %_i3775
  store i64 %_bop3776, i64* %_j3764
  br label %_cond3770
_post3768:
  br label %_merge3777
_else3778:
  br label %_merge3777
_merge3777:
  %_i3780 = load i64, i64* %_i3751
  %_bop3781 = add i64 %_i3780, 1
  store i64 %_bop3781, i64* %_i3751
  br label %_cond3757
_post3755:
  store i64 0, i64* %_count3782
  store i64 0, i64* %_i3783
  br label %_cond3789
_cond3789:
  %_i3784 = load i64, i64* %_i3783
  %_n3785 = load i64, i64* %_n3730
  %_bop3786 = icmp slt i64 %_i3784, %_n3785
  br i1 %_bop3786, label %_body3788, label %_post3787
_body3788:
  %_arr3790 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_arr3734
  %_i3791 = load i64, i64* %_i3783
  %_index_ptr3792 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_arr3790, i32 0, i32 1, i64 %_i3791
  %_index3793 = load i1, i1* %_index_ptr3792
  br i1 %_index3793, label %_then3798, label %_else3797
_then3798:
  %_count3794 = load i64, i64* %_count3782
  %_bop3795 = add i64 %_count3794, 1
  store i64 %_bop3795, i64* %_count3782
  br label %_merge3796
_else3797:
  br label %_merge3796
_merge3796:
  %_i3799 = load i64, i64* %_i3783
  %_bop3800 = add i64 %_i3799, 1
  store i64 %_bop3800, i64* %_i3783
  br label %_cond3789
_post3787:
  %_count3801 = load i64, i64* %_count3782
  ret i64 %_count3801
}

define i64 @program(i64 %_argc3724, { i64, [0 x i8*] }* %_argv3722) {
  %_argc3725 = alloca i64
  %_argv3723 = alloca { i64, [0 x i8*] }*
  %_n3726 = alloca i64
  store i64 %_argc3724, i64* %_argc3725
  store { i64, [0 x i8*] }* %_argv3722, { i64, [0 x i8*] }** %_argv3723
  store i64 100, i64* %_n3726
  %_n3727 = load i64, i64* %_n3726
  %_result3728 = call i64 @sieve(i64 %_n3727)
  ret i64 %_result3728
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
