; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc496, { i64, [0 x i8*] }* %_argv494) {
  %_argc497 = alloca i64
  %_argv495 = alloca { i64, [0 x i8*] }*
  %_i498 = alloca i64
  %_j502 = alloca i64
  store i64 %_argc496, i64* %_argc497
  store { i64, [0 x i8*] }* %_argv494, { i64, [0 x i8*] }** %_argv495
  store i64 9, i64* %_i498
  %_i499 = load i64, i64* %_i498
  %_i500 = load i64, i64* %_i498
  %_bop501 = add i64 %_i499, %_i500
  store i64 %_bop501, i64* %_j502
  %_i503 = load i64, i64* %_i498
  %_i504 = load i64, i64* %_i498
  %_i505 = load i64, i64* %_i498
  %_bop506 = mul i64 %_i504, %_i505
  %_bop507 = add i64 %_i503, %_bop506
  %_j508 = load i64, i64* %_j502
  %_bop509 = sub i64 %_bop507, %_j508
  %_bop510 = lshr i64 %_bop509, 2
  %_bop511 = shl i64 %_bop510, 2
  %_bop512 = ashr i64 %_bop511, 2
  ret i64 %_bop512
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
