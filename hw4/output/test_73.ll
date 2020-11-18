; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x40 = alloca i64
  %_y42 = alloca i64
  %_alloca37 = alloca i64
  store i64 %argc, i64* %_alloca37
  %_alloca38 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca38
  %_bop39 = lshr i64 100, 3
  store i64 %_bop39, i64* %_x40
  %_bop41 = shl i64 100, 3
  store i64 %_bop41, i64* %_y42
  %_x43 = load i64, i64* %_x40
  %_y44 = load i64, i64* %_y42
  %_bop45 = sub i64 %_x43, %_y44
  %_bop46 = icmp sle i64 %_bop45, 0
  br i1 %_bop46, label %_then56, label %_else55
_then56:
  %_x47 = load i64, i64* %_x40
  %_unop48 = sub i64 0, %_x47
  %_y49 = load i64, i64* %_y42
  %_bop50 = sub i64 %_unop48, %_y49
  ret i64 %_bop50
_else55:
  %_x51 = load i64, i64* %_x40
  %_y52 = load i64, i64* %_y42
  %_bop53 = sub i64 %_x51, %_y52
  ret i64 %_bop53
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
