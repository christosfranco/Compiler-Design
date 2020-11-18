; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2594, { i64, [0 x i8*] }* %_argv2592) {
  %_argc2595 = alloca i64
  %_argv2593 = alloca { i64, [0 x i8*] }*
  %_arr12603 = alloca { i64, [0 x i64] }*
  %_str2606 = alloca i8*
  %_arr22609 = alloca { i64, [0 x i64] }*
  %_s2610 = alloca i64
  %_i2611 = alloca i64
  store i64 %_argc2594, i64* %_argc2595
  store { i64, [0 x i8*] }* %_argv2592, { i64, [0 x i8*] }** %_argv2593
  %_raw_array2596 = call i64* @oat_alloc_array(i64 5)
  %_array2597 = bitcast i64* %_raw_array2596 to { i64, [0 x i64] }*
  %_ind2598 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2597, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2598
  %_ind2599 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2597, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2599
  %_ind2600 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2597, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2600
  %_ind2601 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2597, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2601
  %_ind2602 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2597, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2602
  store { i64, [0 x i64] }* %_array2597, { i64, [0 x i64] }** %_arr12603
  %_arr12604 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12603
  %_result2605 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12604)
  store i8* %_result2605, i8** %_str2606
  %_str2607 = load i8*, i8** %_str2606
  %_result2608 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2607)
  store { i64, [0 x i64] }* %_result2608, { i64, [0 x i64] }** %_arr22609
  store i64 0, i64* %_s2610
  store i64 0, i64* %_i2611
  br label %_cond2616
_cond2616:
  %_i2612 = load i64, i64* %_i2611
  %_bop2613 = icmp slt i64 %_i2612, 5
  br i1 %_bop2613, label %_body2615, label %_post2614
_body2615:
  %_s2617 = load i64, i64* %_s2610
  %_arr22618 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22609
  %_i2619 = load i64, i64* %_i2611
  %_index_ptr2621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22618, i32 0, i32 1, i64 %_i2619
  %_index2622 = load i64, i64* %_index_ptr2621
  %_bop2623 = add i64 %_s2617, %_index2622
  store i64 %_bop2623, i64* %_s2610
  %_i2624 = load i64, i64* %_i2611
  %_bop2625 = add i64 %_i2624, 1
  store i64 %_bop2625, i64* %_i2611
  br label %_cond2616
_post2614:
  %_s2626 = load i64, i64* %_s2610
  ret i64 %_s2626
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
