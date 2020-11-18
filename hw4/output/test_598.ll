; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2591, { i64, [0 x i8*] }* %_argv2589) {
  %_argc2592 = alloca i64
  %_argv2590 = alloca { i64, [0 x i8*] }*
  %_arr12600 = alloca { i64, [0 x i64] }*
  %_str2603 = alloca i8*
  %_arr22606 = alloca { i64, [0 x i64] }*
  %_s2607 = alloca i64
  %_i2608 = alloca i64
  store i64 %_argc2591, i64* %_argc2592
  store { i64, [0 x i8*] }* %_argv2589, { i64, [0 x i8*] }** %_argv2590
  %_raw_array2593 = call i64* @oat_alloc_array(i64 5)
  %_array2594 = bitcast i64* %_raw_array2593 to { i64, [0 x i64] }*
  %_ind2595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2594, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2595
  %_ind2596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2594, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2596
  %_ind2597 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2594, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2597
  %_ind2598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2594, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2598
  %_ind2599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2594, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2599
  store { i64, [0 x i64] }* %_array2594, { i64, [0 x i64] }** %_arr12600
  %_arr12601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12600
  %_result2602 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12601)
  store i8* %_result2602, i8** %_str2603
  %_str2604 = load i8*, i8** %_str2603
  %_result2605 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2604)
  store { i64, [0 x i64] }* %_result2605, { i64, [0 x i64] }** %_arr22606
  store i64 0, i64* %_s2607
  store i64 0, i64* %_i2608
  br label %_cond2613
_cond2613:
  %_i2609 = load i64, i64* %_i2608
  %_bop2610 = icmp slt i64 %_i2609, 5
  br i1 %_bop2610, label %_body2612, label %_post2611
_body2612:
  %_s2614 = load i64, i64* %_s2607
  %_arr22615 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22606
  %_i2616 = load i64, i64* %_i2608
  %_index_ptr2618 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22615, i32 0, i32 1, i64 %_i2616
  %_index2619 = load i64, i64* %_index_ptr2618
  %_bop2620 = add i64 %_s2614, %_index2619
  store i64 %_bop2620, i64* %_s2607
  %_i2621 = load i64, i64* %_i2608
  %_bop2622 = add i64 %_i2621, 1
  store i64 %_bop2622, i64* %_i2608
  br label %_cond2613
_post2611:
  %_s2623 = load i64, i64* %_s2607
  ret i64 %_s2623
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
