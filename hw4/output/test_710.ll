; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %_str2529, i64 %_start2527, i64 %_len2525) {
  %_str2530 = alloca i8*
  %_start2528 = alloca i64
  %_len2526 = alloca i64
  %_arr2533 = alloca { i64, [0 x i64] }*
  %_r2537 = alloca { i64, [0 x i64] }*
  %_i2538 = alloca i64
  store i8* %_str2529, i8** %_str2530
  store i64 %_start2527, i64* %_start2528
  store i64 %_len2525, i64* %_len2526
  %_str2531 = load i8*, i8** %_str2530
  %_result2532 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2531)
  store { i64, [0 x i64] }* %_result2532, { i64, [0 x i64] }** %_arr2533
  %_len2534 = load i64, i64* %_len2526
  %_raw_array2535 = call i64* @oat_alloc_array(i64 %_len2534)
  %_array2536 = bitcast i64* %_raw_array2535 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2536, { i64, [0 x i64] }** %_r2537
  store i64 0, i64* %_i2538
  br label %_cond2544
_cond2544:
  %_i2539 = load i64, i64* %_i2538
  %_len2540 = load i64, i64* %_len2526
  %_bop2541 = icmp slt i64 %_i2539, %_len2540
  br i1 %_bop2541, label %_body2543, label %_post2542
_body2543:
  %_r2545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2537
  %_i2546 = load i64, i64* %_i2538
  %_index_ptr2547 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r2545, i32 0, i32 1, i64 %_i2546
  %_arr2548 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2533
  %_i2549 = load i64, i64* %_i2538
  %_start2550 = load i64, i64* %_start2528
  %_bop2551 = add i64 %_i2549, %_start2550
  %_index_ptr2552 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2548, i32 0, i32 1, i64 %_bop2551
  %_index2553 = load i64, i64* %_index_ptr2552
  store i64 %_index2553, i64* %_index_ptr2547
  %_i2554 = load i64, i64* %_i2538
  %_bop2555 = add i64 %_i2554, 1
  store i64 %_bop2555, i64* %_i2538
  br label %_cond2544
_post2542:
  %_r2556 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2537
  %_result2557 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2556)
  ret i8* %_result2557
}

define i64 @program(i64 %_argc2518, { i64, [0 x i8*] }* %_argv2516) {
  %_argc2519 = alloca i64
  %_argv2517 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2518, i64* %_argc2519
  store { i64, [0 x i8*] }* %_argv2516, { i64, [0 x i8*] }** %_argv2517
  %_argv2520 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2517
  %_index_ptr2521 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2520, i32 0, i32 1, i32 1
  %_index2522 = load i8*, i8** %_index_ptr2521
  %_result2523 = call i8* @sub(i8* %_index2522, i64 3, i64 5)
  call void @print_string(i8* %_result2523)
  ret i64 0
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
