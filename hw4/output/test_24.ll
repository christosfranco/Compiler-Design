; generated from: oatprograms/run28.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc319, { i64, [0 x i8*] }* %_argv317) {
  %_argc320 = alloca i64
  %_argv318 = alloca { i64, [0 x i8*] }*
  %_i321 = alloca i64
  %_j325 = alloca i64
  store i64 %_argc319, i64* %_argc320
  store { i64, [0 x i8*] }* %_argv317, { i64, [0 x i8*] }** %_argv318
  store i64 9, i64* %_i321
  %_i322 = load i64, i64* %_i321
  %_i323 = load i64, i64* %_i321
  %_bop324 = add i64 %_i322, %_i323
  store i64 %_bop324, i64* %_j325
  %_i326 = load i64, i64* %_i321
  %_i327 = load i64, i64* %_i321
  %_i328 = load i64, i64* %_i321
  %_bop329 = mul i64 %_i327, %_i328
  %_bop330 = add i64 %_i326, %_bop329
  %_j331 = load i64, i64* %_j325
  %_bop332 = sub i64 %_bop330, %_j331
  %_bop333 = lshr i64 %_bop332, 2
  %_bop334 = shl i64 %_bop333, 2
  %_bop335 = ashr i64 %_bop334, 2
  ret i64 %_bop335
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
