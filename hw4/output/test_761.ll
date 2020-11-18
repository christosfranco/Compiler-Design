; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc477, { i64, [0 x i8*] }* %_argv475) {
  %_argc478 = alloca i64
  %_argv476 = alloca { i64, [0 x i8*] }*
  %_i479 = alloca i64
  %_j483 = alloca i64
  store i64 %_argc477, i64* %_argc478
  store { i64, [0 x i8*] }* %_argv475, { i64, [0 x i8*] }** %_argv476
  store i64 9, i64* %_i479
  %_i480 = load i64, i64* %_i479
  %_i481 = load i64, i64* %_i479
  %_bop482 = add i64 %_i480, %_i481
  store i64 %_bop482, i64* %_j483
  %_i484 = load i64, i64* %_i479
  %_i485 = load i64, i64* %_i479
  %_i486 = load i64, i64* %_i479
  %_bop487 = mul i64 %_i485, %_i486
  %_bop488 = add i64 %_i484, %_bop487
  %_j489 = load i64, i64* %_j483
  %_bop490 = sub i64 %_bop488, %_j489
  %_bop491 = lshr i64 %_bop490, 2
  %_bop492 = shl i64 %_bop491, 2
  %_bop493 = ashr i64 %_bop492, 2
  ret i64 %_bop493
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
