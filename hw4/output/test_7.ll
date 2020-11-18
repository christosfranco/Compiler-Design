; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc95, { i64, [0 x i8*] }* %_argv93) {
  %_argc96 = alloca i64
  %_argv94 = alloca { i64, [0 x i8*] }*
  store i64 %_argc95, i64* %_argc96
  store { i64, [0 x i8*] }* %_argv93, { i64, [0 x i8*] }** %_argv94
  %_bop97 = icmp ne i64 6, 5
  br i1 %_bop97, label %_then108, label %_else107
_then108:
  %_unop98 = sub i64 0, 6
  %_bop99 = lshr i64 5, %_unop98
  %_bop100 = shl i64 %_bop99, 9
  %_bop101 = ashr i64 %_bop100, 10
  %_unop102 = xor i64 %_bop101, -1
  %_bop103 = mul i64 %_unop102, 2
  %_bop104 = sub i64 %_bop103, 100
  %_bop105 = add i64 %_bop104, 6
  ret i64 %_bop105
_else107:
  ret i64 2
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
