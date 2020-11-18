; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc497, { i64, [0 x i8*] }* %_argv495) {
  %_argc498 = alloca i64
  %_argv496 = alloca { i64, [0 x i8*] }*
  %_i499 = alloca i64
  %_j503 = alloca i64
  store i64 %_argc497, i64* %_argc498
  store { i64, [0 x i8*] }* %_argv495, { i64, [0 x i8*] }** %_argv496
  store i64 9, i64* %_i499
  %_i500 = load i64, i64* %_i499
  %_i501 = load i64, i64* %_i499
  %_bop502 = add i64 %_i500, %_i501
  store i64 %_bop502, i64* %_j503
  %_i504 = load i64, i64* %_i499
  %_i505 = load i64, i64* %_i499
  %_i506 = load i64, i64* %_i499
  %_bop507 = mul i64 %_i505, %_i506
  %_bop508 = add i64 %_i504, %_bop507
  %_j509 = load i64, i64* %_j503
  %_bop510 = sub i64 %_bop508, %_j509
  %_bop511 = lshr i64 %_bop510, 2
  %_bop512 = shl i64 %_bop511, 2
  %_bop513 = ashr i64 %_bop512, 2
  ret i64 %_bop513
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
