; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %_x4092, i64 %_y4090) {
  %_x4093 = alloca i64
  %_y4091 = alloca i64
  store i64 %_x4092, i64* %_x4093
  store i64 %_y4090, i64* %_y4091
  %_x4094 = load i64, i64* %_x4093
  %_y4095 = load i64, i64* %_y4091
  %_bop4096 = icmp eq i64 %_x4094, %_y4095
  br i1 %_bop4096, label %_then4100, label %_else4099
_then4100:
  %_x4097 = load i64, i64* %_x4093
  ret i64 %_x4097
_else4099:
  br label %_merge4098
_merge4098:
  %_x4101 = load i64, i64* %_x4093
  %_bop4102 = icmp eq i64 %_x4101, 0
  br i1 %_bop4102, label %_then4106, label %_else4105
_then4106:
  %_y4103 = load i64, i64* %_y4091
  ret i64 %_y4103
_else4105:
  br label %_merge4104
_merge4104:
  %_y4107 = load i64, i64* %_y4091
  %_bop4108 = icmp eq i64 %_y4107, 0
  br i1 %_bop4108, label %_then4112, label %_else4111
_then4112:
  %_x4109 = load i64, i64* %_x4093
  ret i64 %_x4109
_else4111:
  br label %_merge4110
_merge4110:
  %_x4113 = load i64, i64* %_x4093
  %_unop4114 = xor i64 %_x4113, -1
  %_bop4115 = and i64 %_unop4114, 1
  %_bop4116 = icmp eq i64 %_bop4115, 1
  br i1 %_bop4116, label %_then4135, label %_else4134
_then4135:
  %_y4117 = load i64, i64* %_y4091
  %_bop4118 = and i64 %_y4117, 1
  %_bop4119 = icmp eq i64 %_bop4118, 1
  br i1 %_bop4119, label %_then4132, label %_else4131
_then4132:
  %_y4120 = load i64, i64* %_y4091
  %_x4121 = load i64, i64* %_x4093
  %_bop4122 = lshr i64 %_x4121, 1
  %_result4123 = call i64 @binary_gcd(i64 %_bop4122, i64 %_y4120)
  ret i64 %_result4123
_else4131:
  %_y4124 = load i64, i64* %_y4091
  %_bop4125 = lshr i64 %_y4124, 1
  %_x4126 = load i64, i64* %_x4093
  %_bop4127 = lshr i64 %_x4126, 1
  %_result4128 = call i64 @binary_gcd(i64 %_bop4127, i64 %_bop4125)
  %_bop4129 = shl i64 %_result4128, 1
  ret i64 %_bop4129
_merge4130:
  br label %_merge4133
_else4134:
  br label %_merge4133
_merge4133:
  %_y4136 = load i64, i64* %_y4091
  %_unop4137 = xor i64 %_y4136, -1
  %_bop4138 = and i64 %_unop4137, 1
  %_bop4139 = icmp eq i64 %_bop4138, 1
  br i1 %_bop4139, label %_then4146, label %_else4145
_then4146:
  %_y4140 = load i64, i64* %_y4091
  %_bop4141 = lshr i64 %_y4140, 1
  %_x4142 = load i64, i64* %_x4093
  %_result4143 = call i64 @binary_gcd(i64 %_x4142, i64 %_bop4141)
  ret i64 %_result4143
_else4145:
  br label %_merge4144
_merge4144:
  %_x4147 = load i64, i64* %_x4093
  %_y4148 = load i64, i64* %_y4091
  %_bop4149 = icmp sgt i64 %_x4147, %_y4148
  br i1 %_bop4149, label %_then4158, label %_else4157
_then4158:
  %_y4150 = load i64, i64* %_y4091
  %_x4151 = load i64, i64* %_x4093
  %_y4152 = load i64, i64* %_y4091
  %_bop4153 = sub i64 %_x4151, %_y4152
  %_bop4154 = lshr i64 %_bop4153, 1
  %_result4155 = call i64 @binary_gcd(i64 %_bop4154, i64 %_y4150)
  ret i64 %_result4155
_else4157:
  br label %_merge4156
_merge4156:
  %_x4159 = load i64, i64* %_x4093
  %_y4160 = load i64, i64* %_y4091
  %_x4161 = load i64, i64* %_x4093
  %_bop4162 = sub i64 %_y4160, %_x4161
  %_bop4163 = lshr i64 %_bop4162, 1
  %_result4164 = call i64 @binary_gcd(i64 %_bop4163, i64 %_x4159)
  ret i64 %_result4164
}

define i64 @program(i64 %_argc4083, { i64, [0 x i8*] }* %_argv4081) {
  %_argc4084 = alloca i64
  %_argv4082 = alloca { i64, [0 x i8*] }*
  %_x4085 = alloca i64
  %_y4086 = alloca i64
  store i64 %_argc4083, i64* %_argc4084
  store { i64, [0 x i8*] }* %_argv4081, { i64, [0 x i8*] }** %_argv4082
  store i64 21, i64* %_x4085
  store i64 15, i64* %_y4086
  %_y4087 = load i64, i64* %_y4086
  %_x4088 = load i64, i64* %_x4085
  %_result4089 = call i64 @binary_gcd(i64 %_x4088, i64 %_y4087)
  ret i64 %_result4089
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
