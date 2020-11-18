; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x25 = alloca i64
  %_i26 = alloca i64
  %_alloca23 = alloca i64
  store i64 %argc, i64* %_alloca23
  %_alloca24 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca24
  store i64 0, i64* %_x25
  store i64 0, i64* %_i26
  br label %_cond31
_cond31:
  %_i27 = load i64, i64* %_i26
  %_bop28 = icmp slt i64 %_i27, 3
  br i1 %_bop28, label %_body30, label %_post29
_body30:
  %_x32 = load i64, i64* %_x25
  %_bop33 = add i64 %_x32, 2
  store i64 %_bop33, i64* %_x25
  %_i34 = load i64, i64* %_i26
  %_bop35 = add i64 %_i34, 1
  store i64 %_bop35, i64* %_i26
  br label %_cond31
_post29:
  %_x36 = load i64, i64* %_x25
  ret i64 %_x36
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
