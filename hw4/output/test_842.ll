; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc12, { i64, [0 x i8*] }* %_argv10) {
  %_argc13 = alloca i64
  %_argv11 = alloca { i64, [0 x i8*] }*
  %_x14 = alloca i64
  %_i15 = alloca i64
  store i64 %_argc12, i64* %_argc13
  store { i64, [0 x i8*] }* %_argv10, { i64, [0 x i8*] }** %_argv11
  store i64 0, i64* %_x14
  store i64 0, i64* %_i15
  br label %_cond20
_cond20:
  %_i16 = load i64, i64* %_i15
  %_bop17 = icmp slt i64 %_i16, 10
  br i1 %_bop17, label %_body19, label %_post18
_body19:
  %_x21 = load i64, i64* %_x14
  %_i22 = load i64, i64* %_i15
  %_bop23 = add i64 %_x21, %_i22
  %_i24 = load i64, i64* %_i15
  %_bop25 = mul i64 %_bop23, %_i24
  store i64 %_bop25, i64* %_x14
  %_i26 = load i64, i64* %_i15
  %_bop27 = add i64 %_i26, 1
  store i64 %_bop27, i64* %_i15
  br label %_cond20
_post18:
  %_x28 = load i64, i64* %_x14
  ret i64 %_x28
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
