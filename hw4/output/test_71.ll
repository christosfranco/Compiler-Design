; generated from: oatprograms/easyrun3.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x8 = alloca i64
  %_i9 = alloca i64
  %_alloca6 = alloca i64
  store i64 %argc, i64* %_alloca6
  %_alloca7 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca7
  store i64 0, i64* %_x8
  store i64 0, i64* %_i9
  br label %_cond14
_cond14:
  %_i10 = load i64, i64* %_i9
  %_bop11 = icmp slt i64 %_i10, 10
  br i1 %_bop11, label %_body13, label %_post12
_body13:
  %_x15 = load i64, i64* %_x8
  %_i16 = load i64, i64* %_i9
  %_bop17 = add i64 %_x15, %_i16
  %_i18 = load i64, i64* %_i9
  %_bop19 = mul i64 %_bop17, %_i18
  store i64 %_bop19, i64* %_x8
  %_i20 = load i64, i64* %_i9
  %_bop21 = add i64 %_i20, 1
  store i64 %_bop21, i64* %_i9
  br label %_cond14
_post12:
  %_x22 = load i64, i64* %_x8
  ret i64 %_x22
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
