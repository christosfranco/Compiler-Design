; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %_a4346, i64 %_b4344) {
  %_a4347 = alloca i64
  %_b4345 = alloca i64
  %_t4354 = alloca i64
  store i64 %_a4346, i64* %_a4347
  store i64 %_b4344, i64* %_b4345
  br label %_cond4352
_cond4352:
  %_b4348 = load i64, i64* %_b4345
  %_bop4349 = icmp ne i64 %_b4348, 0
  br i1 %_bop4349, label %_body4351, label %_post4350
_body4351:
  %_b4353 = load i64, i64* %_b4345
  store i64 %_b4353, i64* %_t4354
  %_b4355 = load i64, i64* %_b4345
  %_a4356 = load i64, i64* %_a4347
  %_result4357 = call i64 @mod(i64 %_a4356, i64 %_b4355)
  store i64 %_result4357, i64* %_b4345
  %_t4358 = load i64, i64* %_t4354
  store i64 %_t4358, i64* %_a4347
  br label %_cond4352
_post4350:
  %_a4359 = load i64, i64* %_a4347
  ret i64 %_a4359
}

define i64 @mod(i64 %_a4329, i64 %_b4327) {
  %_a4330 = alloca i64
  %_b4328 = alloca i64
  %_t4332 = alloca i64
  store i64 %_a4329, i64* %_a4330
  store i64 %_b4327, i64* %_b4328
  %_a4331 = load i64, i64* %_a4330
  store i64 %_a4331, i64* %_t4332
  br label %_cond4339
_cond4339:
  %_t4333 = load i64, i64* %_t4332
  %_b4334 = load i64, i64* %_b4328
  %_bop4335 = sub i64 %_t4333, %_b4334
  %_bop4336 = icmp sge i64 %_bop4335, 0
  br i1 %_bop4336, label %_body4338, label %_post4337
_body4338:
  %_t4340 = load i64, i64* %_t4332
  %_b4341 = load i64, i64* %_b4328
  %_bop4342 = sub i64 %_t4340, %_b4341
  store i64 %_bop4342, i64* %_t4332
  br label %_cond4339
_post4337:
  %_t4343 = load i64, i64* %_t4332
  ret i64 %_t4343
}

define i64 @program(i64 %_argc4320, { i64, [0 x i8*] }* %_argv4318) {
  %_argc4321 = alloca i64
  %_argv4319 = alloca { i64, [0 x i8*] }*
  %_a4322 = alloca i64
  %_b4323 = alloca i64
  store i64 %_argc4320, i64* %_argc4321
  store { i64, [0 x i8*] }* %_argv4318, { i64, [0 x i8*] }** %_argv4319
  store i64 64, i64* %_a4322
  store i64 48, i64* %_b4323
  %_b4324 = load i64, i64* %_b4323
  %_a4325 = load i64, i64* %_a4322
  %_result4326 = call i64 @gcd(i64 %_a4325, i64 %_b4324)
  ret i64 %_result4326
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
