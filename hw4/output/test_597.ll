; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2554, { i64, [0 x i8*] }* %_argv2552) {
  %_argc2555 = alloca i64
  %_argv2553 = alloca { i64, [0 x i8*] }*
  %_arr12563 = alloca { i64, [0 x i64] }*
  %_str2566 = alloca i8*
  %_arr22569 = alloca { i64, [0 x i64] }*
  %_s2570 = alloca i64
  %_i2571 = alloca i64
  store i64 %_argc2554, i64* %_argc2555
  store { i64, [0 x i8*] }* %_argv2552, { i64, [0 x i8*] }** %_argv2553
  %_raw_array2556 = call i64* @oat_alloc_array(i64 5)
  %_array2557 = bitcast i64* %_raw_array2556 to { i64, [0 x i64] }*
  %_ind2558 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2557, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2558
  %_ind2559 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2557, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2559
  %_ind2560 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2557, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2560
  %_ind2561 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2557, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2561
  %_ind2562 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2557, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2562
  store { i64, [0 x i64] }* %_array2557, { i64, [0 x i64] }** %_arr12563
  %_arr12564 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12563
  %_result2565 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12564)
  store i8* %_result2565, i8** %_str2566
  %_str2567 = load i8*, i8** %_str2566
  %_result2568 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2567)
  store { i64, [0 x i64] }* %_result2568, { i64, [0 x i64] }** %_arr22569
  store i64 0, i64* %_s2570
  store i64 0, i64* %_i2571
  br label %_cond2576
_cond2576:
  %_i2572 = load i64, i64* %_i2571
  %_bop2573 = icmp slt i64 %_i2572, 5
  br i1 %_bop2573, label %_body2575, label %_post2574
_body2575:
  %_s2577 = load i64, i64* %_s2570
  %_arr22578 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22569
  %_i2579 = load i64, i64* %_i2571
  %_index_ptr2581 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22578, i32 0, i32 1, i64 %_i2579
  %_index2582 = load i64, i64* %_index_ptr2581
  %_bop2583 = add i64 %_s2577, %_index2582
  store i64 %_bop2583, i64* %_s2570
  %_i2584 = load i64, i64* %_i2571
  %_bop2585 = add i64 %_i2584, 1
  store i64 %_bop2585, i64* %_i2571
  br label %_cond2576
_post2574:
  %_s2586 = load i64, i64* %_s2570
  call void @print_int(i64 %_s2586)
  %_s2588 = load i64, i64* %_s2570
  ret i64 %_s2588
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
