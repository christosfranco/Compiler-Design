; generated from: oatprograms/easyrun5.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc47, { i64, [0 x i8*] }* %_argv45) {
  %_argc48 = alloca i64
  %_argv46 = alloca { i64, [0 x i8*] }*
  %_x50 = alloca i64
  %_y52 = alloca i64
  store i64 %_argc47, i64* %_argc48
  store { i64, [0 x i8*] }* %_argv45, { i64, [0 x i8*] }** %_argv46
  %_bop49 = lshr i64 100, 3
  store i64 %_bop49, i64* %_x50
  %_bop51 = shl i64 100, 3
  store i64 %_bop51, i64* %_y52
  %_x53 = load i64, i64* %_x50
  %_y54 = load i64, i64* %_y52
  %_bop55 = sub i64 %_x53, %_y54
  %_bop56 = icmp sle i64 %_bop55, 0
  br i1 %_bop56, label %_then66, label %_else65
_then66:
  %_x57 = load i64, i64* %_x50
  %_unop58 = sub i64 0, %_x57
  %_y59 = load i64, i64* %_y52
  %_bop60 = sub i64 %_unop58, %_y59
  ret i64 %_bop60
_else65:
  %_x61 = load i64, i64* %_x50
  %_y62 = load i64, i64* %_y52
  %_bop63 = sub i64 %_x61, %_y62
  ret i64 %_bop63
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
