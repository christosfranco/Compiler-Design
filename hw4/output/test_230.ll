; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i268 = alloca i64
  %_j272 = alloca i64
  %_alloca266 = alloca i64
  store i64 %argc, i64* %_alloca266
  %_alloca267 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca267
  store i64 9, i64* %_i268
  %_i269 = load i64, i64* %_i268
  %_i270 = load i64, i64* %_i268
  %_bop271 = add i64 %_i269, %_i270
  store i64 %_bop271, i64* %_j272
  %_i273 = load i64, i64* %_i268
  %_i274 = load i64, i64* %_i268
  %_i275 = load i64, i64* %_i268
  %_bop276 = mul i64 %_i274, %_i275
  %_bop277 = add i64 %_i273, %_bop276
  %_j278 = load i64, i64* %_j272
  %_bop279 = sub i64 %_bop277, %_j278
  %_bop280 = lshr i64 %_bop279, 2
  %_bop281 = shl i64 %_bop280, 2
  %_bop282 = ashr i64 %_bop281, 2
  ret i64 %_bop282
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
