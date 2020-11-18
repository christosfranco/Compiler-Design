; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2557, { i64, [0 x i8*] }* %_argv2555) {
  %_argc2558 = alloca i64
  %_argv2556 = alloca { i64, [0 x i8*] }*
  %_arr12566 = alloca { i64, [0 x i64] }*
  %_str2569 = alloca i8*
  %_arr22572 = alloca { i64, [0 x i64] }*
  %_s2573 = alloca i64
  %_i2574 = alloca i64
  store i64 %_argc2557, i64* %_argc2558
  store { i64, [0 x i8*] }* %_argv2555, { i64, [0 x i8*] }** %_argv2556
  %_raw_array2559 = call i64* @oat_alloc_array(i64 5)
  %_array2560 = bitcast i64* %_raw_array2559 to { i64, [0 x i64] }*
  %_ind2561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2560, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2561
  %_ind2562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2560, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2562
  %_ind2563 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2560, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2563
  %_ind2564 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2560, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2564
  %_ind2565 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2560, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2565
  store { i64, [0 x i64] }* %_array2560, { i64, [0 x i64] }** %_arr12566
  %_arr12567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12566
  %_result2568 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12567)
  store i8* %_result2568, i8** %_str2569
  %_str2570 = load i8*, i8** %_str2569
  %_result2571 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2570)
  store { i64, [0 x i64] }* %_result2571, { i64, [0 x i64] }** %_arr22572
  store i64 0, i64* %_s2573
  store i64 0, i64* %_i2574
  br label %_cond2579
_cond2579:
  %_i2575 = load i64, i64* %_i2574
  %_bop2576 = icmp slt i64 %_i2575, 5
  br i1 %_bop2576, label %_body2578, label %_post2577
_body2578:
  %_s2580 = load i64, i64* %_s2573
  %_arr22581 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22572
  %_i2582 = load i64, i64* %_i2574
  %_index_ptr2584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22581, i32 0, i32 1, i64 %_i2582
  %_index2585 = load i64, i64* %_index_ptr2584
  %_bop2586 = add i64 %_s2580, %_index2585
  store i64 %_bop2586, i64* %_s2573
  %_i2587 = load i64, i64* %_i2574
  %_bop2588 = add i64 %_i2587, 1
  store i64 %_bop2588, i64* %_i2574
  br label %_cond2579
_post2577:
  %_s2589 = load i64, i64* %_s2573
  call void @print_int(i64 %_s2589)
  %_s2591 = load i64, i64* %_s2573
  ret i64 %_s2591
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
