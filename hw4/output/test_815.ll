; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str_arr2465 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %_argc2462, { i64, [0 x i8*] }* %_argv2460) {
  %_argc2463 = alloca i64
  %_argv2461 = alloca { i64, [0 x i8*] }*
  %_arr2467 = alloca { i64, [0 x i64] }*
  %_sum2468 = alloca i64
  %_i2469 = alloca i64
  %_i2481 = alloca i64
  store i64 %_argc2462, i64* %_argc2463
  store { i64, [0 x i8*] }* %_argv2460, { i64, [0 x i8*] }** %_argv2461
  %_str2464 = getelementptr [11 x i8], [11 x i8]* @_str_arr2465, i32 0, i32 0
  %_result2466 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2464)
  store { i64, [0 x i64] }* %_result2466, { i64, [0 x i64] }** %_arr2467
  store i64 0, i64* %_sum2468
  store i64 0, i64* %_i2469
  br label %_cond2474
_cond2474:
  %_i2470 = load i64, i64* %_i2469
  %_bop2471 = icmp slt i64 %_i2470, 10
  br i1 %_bop2471, label %_body2473, label %_post2472
_body2473:
  %_arr2475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2467
  %_i2476 = load i64, i64* %_i2469
  %_index_ptr2477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2475, i32 0, i32 1, i64 %_i2476
  %_i2478 = load i64, i64* %_i2469
  store i64 %_i2478, i64* %_index_ptr2477
  %_i2479 = load i64, i64* %_i2469
  %_bop2480 = add i64 %_i2479, 1
  store i64 %_bop2480, i64* %_i2469
  br label %_cond2474
_post2472:
  store i64 0, i64* %_i2481
  br label %_cond2486
_cond2486:
  %_i2482 = load i64, i64* %_i2481
  %_bop2483 = icmp slt i64 %_i2482, 10
  br i1 %_bop2483, label %_body2485, label %_post2484
_body2485:
  %_sum2487 = load i64, i64* %_sum2468
  %_arr2488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2467
  %_i2489 = load i64, i64* %_i2481
  %_index_ptr2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2488, i32 0, i32 1, i64 %_i2489
  %_index2491 = load i64, i64* %_index_ptr2490
  %_bop2492 = add i64 %_sum2487, %_index2491
  store i64 %_bop2492, i64* %_sum2468
  %_i2493 = load i64, i64* %_i2481
  %_bop2494 = add i64 %_i2493, 1
  store i64 %_bop2494, i64* %_i2481
  br label %_cond2486
_post2484:
  %_sum2495 = load i64, i64* %_sum2468
  ret i64 %_sum2495
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
