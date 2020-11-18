; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %_n3901) {
  %_n3902 = alloca i64
  store i64 %_n3901, i64* %_n3902
  %_n3903 = load i64, i64* %_n3902
  %_bop3904 = icmp eq i64 %_n3903, 0
  br i1 %_bop3904, label %_then3907, label %_else3906
_then3907:
  ret i64 0
_else3906:
  br label %_merge3905
_merge3905:
  %_n3908 = load i64, i64* %_n3902
  %_bop3909 = icmp eq i64 %_n3908, 1
  br i1 %_bop3909, label %_then3912, label %_else3911
_then3912:
  ret i64 1
_else3911:
  br label %_merge3910
_merge3910:
  %_n3913 = load i64, i64* %_n3902
  %_bop3914 = sub i64 %_n3913, 1
  %_result3915 = call i64 @fibR(i64 %_bop3914)
  %_n3916 = load i64, i64* %_n3902
  %_bop3917 = sub i64 %_n3916, 2
  %_result3918 = call i64 @fibR(i64 %_bop3917)
  %_bop3919 = add i64 %_result3915, %_result3918
  ret i64 %_bop3919
}

define i64 @fibI(i64 %_n3868) {
  %_n3869 = alloca i64
  %_a3870 = alloca i64
  %_b3871 = alloca i64
  %_old3891 = alloca i64
  store i64 %_n3868, i64* %_n3869
  store i64 0, i64* %_a3870
  store i64 1, i64* %_b3871
  %_n3872 = load i64, i64* %_n3869
  %_bop3873 = icmp eq i64 %_n3872, 0
  br i1 %_bop3873, label %_then3877, label %_else3876
_then3877:
  %_a3874 = load i64, i64* %_a3870
  ret i64 %_a3874
_else3876:
  br label %_merge3875
_merge3875:
  %_n3878 = load i64, i64* %_n3869
  %_bop3879 = icmp eq i64 %_n3878, 1
  br i1 %_bop3879, label %_then3883, label %_else3882
_then3883:
  %_b3880 = load i64, i64* %_b3871
  ret i64 %_b3880
_else3882:
  br label %_merge3881
_merge3881:
  br label %_cond3889
_cond3889:
  %_n3884 = load i64, i64* %_n3869
  %_bop3885 = sub i64 %_n3884, 2
  %_bop3886 = icmp sgt i64 %_bop3885, 0
  br i1 %_bop3886, label %_body3888, label %_post3887
_body3888:
  %_b3890 = load i64, i64* %_b3871
  store i64 %_b3890, i64* %_old3891
  %_b3892 = load i64, i64* %_b3871
  %_a3893 = load i64, i64* %_a3870
  %_bop3894 = add i64 %_b3892, %_a3893
  store i64 %_bop3894, i64* %_b3871
  %_old3895 = load i64, i64* %_old3891
  store i64 %_old3895, i64* %_a3870
  %_n3896 = load i64, i64* %_n3869
  %_bop3897 = sub i64 %_n3896, 1
  store i64 %_bop3897, i64* %_n3869
  br label %_cond3889
_post3887:
  %_a3898 = load i64, i64* %_a3870
  %_b3899 = load i64, i64* %_b3871
  %_bop3900 = add i64 %_a3898, %_b3899
  ret i64 %_bop3900
}

define i64 @program(i64 %_argc3856, { i64, [0 x i8*] }* %_argv3854) {
  %_argc3857 = alloca i64
  %_argv3855 = alloca { i64, [0 x i8*] }*
  %_val3858 = alloca i64
  store i64 %_argc3856, i64* %_argc3857
  store { i64, [0 x i8*] }* %_argv3854, { i64, [0 x i8*] }** %_argv3855
  store i64 1, i64* %_val3858
  %_result3859 = call i64 @fibR(i64 12)
  %_bop3860 = icmp eq i64 %_result3859, 144
  %_result3861 = call i64 @fibI(i64 12)
  %_bop3862 = icmp eq i64 %_result3861, 144
  %_bop3863 = and i1 %_bop3860, %_bop3862
  br i1 %_bop3863, label %_then3866, label %_else3865
_then3866:
  store i64 0, i64* %_val3858
  br label %_merge3864
_else3865:
  br label %_merge3864
_merge3864:
  %_val3867 = load i64, i64* %_val3858
  ret i64 %_val3867
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
