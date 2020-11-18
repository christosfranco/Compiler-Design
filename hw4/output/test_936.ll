; generated from: oatprograms/fibo.oat
target triple = "x86_64-unknown-linux"
define i64 @fibR(i64 %_n4031) {
  %_n4032 = alloca i64
  store i64 %_n4031, i64* %_n4032
  %_n4033 = load i64, i64* %_n4032
  %_bop4034 = icmp eq i64 %_n4033, 0
  br i1 %_bop4034, label %_then4037, label %_else4036
_then4037:
  ret i64 0
_else4036:
  br label %_merge4035
_merge4035:
  %_n4038 = load i64, i64* %_n4032
  %_bop4039 = icmp eq i64 %_n4038, 1
  br i1 %_bop4039, label %_then4042, label %_else4041
_then4042:
  ret i64 1
_else4041:
  br label %_merge4040
_merge4040:
  %_n4043 = load i64, i64* %_n4032
  %_bop4044 = sub i64 %_n4043, 1
  %_result4045 = call i64 @fibR(i64 %_bop4044)
  %_n4046 = load i64, i64* %_n4032
  %_bop4047 = sub i64 %_n4046, 2
  %_result4048 = call i64 @fibR(i64 %_bop4047)
  %_bop4049 = add i64 %_result4045, %_result4048
  ret i64 %_bop4049
}

define i64 @fibI(i64 %_n3998) {
  %_n3999 = alloca i64
  %_a4000 = alloca i64
  %_b4001 = alloca i64
  %_old4021 = alloca i64
  store i64 %_n3998, i64* %_n3999
  store i64 0, i64* %_a4000
  store i64 1, i64* %_b4001
  %_n4002 = load i64, i64* %_n3999
  %_bop4003 = icmp eq i64 %_n4002, 0
  br i1 %_bop4003, label %_then4007, label %_else4006
_then4007:
  %_a4004 = load i64, i64* %_a4000
  ret i64 %_a4004
_else4006:
  br label %_merge4005
_merge4005:
  %_n4008 = load i64, i64* %_n3999
  %_bop4009 = icmp eq i64 %_n4008, 1
  br i1 %_bop4009, label %_then4013, label %_else4012
_then4013:
  %_b4010 = load i64, i64* %_b4001
  ret i64 %_b4010
_else4012:
  br label %_merge4011
_merge4011:
  br label %_cond4019
_cond4019:
  %_n4014 = load i64, i64* %_n3999
  %_bop4015 = sub i64 %_n4014, 2
  %_bop4016 = icmp sgt i64 %_bop4015, 0
  br i1 %_bop4016, label %_body4018, label %_post4017
_body4018:
  %_b4020 = load i64, i64* %_b4001
  store i64 %_b4020, i64* %_old4021
  %_b4022 = load i64, i64* %_b4001
  %_a4023 = load i64, i64* %_a4000
  %_bop4024 = add i64 %_b4022, %_a4023
  store i64 %_bop4024, i64* %_b4001
  %_old4025 = load i64, i64* %_old4021
  store i64 %_old4025, i64* %_a4000
  %_n4026 = load i64, i64* %_n3999
  %_bop4027 = sub i64 %_n4026, 1
  store i64 %_bop4027, i64* %_n3999
  br label %_cond4019
_post4017:
  %_a4028 = load i64, i64* %_a4000
  %_b4029 = load i64, i64* %_b4001
  %_bop4030 = add i64 %_a4028, %_b4029
  ret i64 %_bop4030
}

define i64 @program(i64 %_argc3986, { i64, [0 x i8*] }* %_argv3984) {
  %_argc3987 = alloca i64
  %_argv3985 = alloca { i64, [0 x i8*] }*
  %_val3988 = alloca i64
  store i64 %_argc3986, i64* %_argc3987
  store { i64, [0 x i8*] }* %_argv3984, { i64, [0 x i8*] }** %_argv3985
  store i64 1, i64* %_val3988
  %_result3989 = call i64 @fibR(i64 12)
  %_bop3990 = icmp eq i64 %_result3989, 144
  %_result3991 = call i64 @fibI(i64 12)
  %_bop3992 = icmp eq i64 %_result3991, 144
  %_bop3993 = and i1 %_bop3990, %_bop3992
  br i1 %_bop3993, label %_then3996, label %_else3995
_then3996:
  store i64 0, i64* %_val3988
  br label %_merge3994
_else3995:
  br label %_merge3994
_merge3994:
  %_val3997 = load i64, i64* %_val3988
  ret i64 %_val3997
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
