; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %_str2532, i64 %_start2530, i64 %_len2528) {
  %_str2533 = alloca i8*
  %_start2531 = alloca i64
  %_len2529 = alloca i64
  %_arr2536 = alloca { i64, [0 x i64] }*
  %_r2540 = alloca { i64, [0 x i64] }*
  %_i2541 = alloca i64
  store i8* %_str2532, i8** %_str2533
  store i64 %_start2530, i64* %_start2531
  store i64 %_len2528, i64* %_len2529
  %_str2534 = load i8*, i8** %_str2533
  %_result2535 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2534)
  store { i64, [0 x i64] }* %_result2535, { i64, [0 x i64] }** %_arr2536
  %_len2537 = load i64, i64* %_len2529
  %_raw_array2538 = call i64* @oat_alloc_array(i64 %_len2537)
  %_array2539 = bitcast i64* %_raw_array2538 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2539, { i64, [0 x i64] }** %_r2540
  store i64 0, i64* %_i2541
  br label %_cond2547
_cond2547:
  %_i2542 = load i64, i64* %_i2541
  %_len2543 = load i64, i64* %_len2529
  %_bop2544 = icmp slt i64 %_i2542, %_len2543
  br i1 %_bop2544, label %_body2546, label %_post2545
_body2546:
  %_r2548 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2540
  %_i2549 = load i64, i64* %_i2541
  %_index_ptr2551 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r2548, i32 0, i32 1, i64 %_i2549
  %_arr2552 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2536
  %_i2553 = load i64, i64* %_i2541
  %_start2554 = load i64, i64* %_start2531
  %_bop2555 = add i64 %_i2553, %_start2554
  %_index_ptr2557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2552, i32 0, i32 1, i64 %_bop2555
  %_index2558 = load i64, i64* %_index_ptr2557
  store i64 %_index2558, i64* %_index_ptr2551
  %_i2559 = load i64, i64* %_i2541
  %_bop2560 = add i64 %_i2559, 1
  store i64 %_bop2560, i64* %_i2541
  br label %_cond2547
_post2545:
  %_r2561 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2540
  %_result2562 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2561)
  ret i8* %_result2562
}

define i64 @program(i64 %_argc2520, { i64, [0 x i8*] }* %_argv2518) {
  %_argc2521 = alloca i64
  %_argv2519 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2520, i64* %_argc2521
  store { i64, [0 x i8*] }* %_argv2518, { i64, [0 x i8*] }** %_argv2519
  %_argv2522 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2519
  %_index_ptr2524 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2522, i32 0, i32 1, i32 1
  %_index2525 = load i8*, i8** %_index_ptr2524
  %_result2526 = call i8* @sub(i8* %_index2525, i64 3, i64 5)
  call void @print_string(i8* %_result2526)
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
