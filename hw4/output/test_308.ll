; generated from: oatprograms/easyrun4.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc31, { i64, [0 x i8*] }* %_argv29) {
  %_argc32 = alloca i64
  %_argv30 = alloca { i64, [0 x i8*] }*
  %_x33 = alloca i64
  %_i34 = alloca i64
  store i64 %_argc31, i64* %_argc32
  store { i64, [0 x i8*] }* %_argv29, { i64, [0 x i8*] }** %_argv30
  store i64 0, i64* %_x33
  store i64 0, i64* %_i34
  br label %_cond39
_cond39:
  %_i35 = load i64, i64* %_i34
  %_bop36 = icmp slt i64 %_i35, 3
  br i1 %_bop36, label %_body38, label %_post37
_body38:
  %_x40 = load i64, i64* %_x33
  %_bop41 = add i64 %_x40, 2
  store i64 %_bop41, i64* %_x33
  %_i42 = load i64, i64* %_i34
  %_bop43 = add i64 %_i42, 1
  store i64 %_bop43, i64* %_i34
  br label %_cond39
_post37:
  %_x44 = load i64, i64* %_x33
  ret i64 %_x44
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
