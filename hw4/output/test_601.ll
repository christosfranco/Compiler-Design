; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str_arr2658 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %_argc2655, { i64, [0 x i8*] }* %_argv2653) {
  %_argc2656 = alloca i64
  %_argv2654 = alloca { i64, [0 x i8*] }*
  %_arr2660 = alloca { i64, [0 x i64] }*
  %_sum2661 = alloca i64
  %_i2662 = alloca i64
  %_i2675 = alloca i64
  store i64 %_argc2655, i64* %_argc2656
  store { i64, [0 x i8*] }* %_argv2653, { i64, [0 x i8*] }** %_argv2654
  %_str2657 = getelementptr [11 x i8], [11 x i8]* @_str_arr2658, i32 0, i32 0
  %_result2659 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2657)
  store { i64, [0 x i64] }* %_result2659, { i64, [0 x i64] }** %_arr2660
  store i64 0, i64* %_sum2661
  store i64 0, i64* %_i2662
  br label %_cond2667
_cond2667:
  %_i2663 = load i64, i64* %_i2662
  %_bop2664 = icmp slt i64 %_i2663, 10
  br i1 %_bop2664, label %_body2666, label %_post2665
_body2666:
  %_arr2668 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2660
  %_i2669 = load i64, i64* %_i2662
  %_index_ptr2671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2668, i32 0, i32 1, i64 %_i2669
  %_i2672 = load i64, i64* %_i2662
  store i64 %_i2672, i64* %_index_ptr2671
  %_i2673 = load i64, i64* %_i2662
  %_bop2674 = add i64 %_i2673, 1
  store i64 %_bop2674, i64* %_i2662
  br label %_cond2667
_post2665:
  store i64 0, i64* %_i2675
  br label %_cond2680
_cond2680:
  %_i2676 = load i64, i64* %_i2675
  %_bop2677 = icmp slt i64 %_i2676, 10
  br i1 %_bop2677, label %_body2679, label %_post2678
_body2679:
  %_sum2681 = load i64, i64* %_sum2661
  %_arr2682 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2660
  %_i2683 = load i64, i64* %_i2675
  %_index_ptr2685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2682, i32 0, i32 1, i64 %_i2683
  %_index2686 = load i64, i64* %_index_ptr2685
  %_bop2687 = add i64 %_sum2681, %_index2686
  store i64 %_bop2687, i64* %_sum2661
  %_i2688 = load i64, i64* %_i2675
  %_bop2689 = add i64 %_i2688, 1
  store i64 %_bop2689, i64* %_i2675
  br label %_cond2680
_post2678:
  %_sum2690 = load i64, i64* %_sum2661
  ret i64 %_sum2690
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
