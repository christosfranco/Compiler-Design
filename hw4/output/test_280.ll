; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str_arr2661 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %_argc2658, { i64, [0 x i8*] }* %_argv2656) {
  %_argc2659 = alloca i64
  %_argv2657 = alloca { i64, [0 x i8*] }*
  %_arr2663 = alloca { i64, [0 x i64] }*
  %_sum2664 = alloca i64
  %_i2665 = alloca i64
  %_i2678 = alloca i64
  store i64 %_argc2658, i64* %_argc2659
  store { i64, [0 x i8*] }* %_argv2656, { i64, [0 x i8*] }** %_argv2657
  %_str2660 = getelementptr [11 x i8], [11 x i8]* @_str_arr2661, i32 0, i32 0
  %_result2662 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2660)
  store { i64, [0 x i64] }* %_result2662, { i64, [0 x i64] }** %_arr2663
  store i64 0, i64* %_sum2664
  store i64 0, i64* %_i2665
  br label %_cond2670
_cond2670:
  %_i2666 = load i64, i64* %_i2665
  %_bop2667 = icmp slt i64 %_i2666, 10
  br i1 %_bop2667, label %_body2669, label %_post2668
_body2669:
  %_arr2671 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2663
  %_i2672 = load i64, i64* %_i2665
  %_index_ptr2674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2671, i32 0, i32 1, i64 %_i2672
  %_i2675 = load i64, i64* %_i2665
  store i64 %_i2675, i64* %_index_ptr2674
  %_i2676 = load i64, i64* %_i2665
  %_bop2677 = add i64 %_i2676, 1
  store i64 %_bop2677, i64* %_i2665
  br label %_cond2670
_post2668:
  store i64 0, i64* %_i2678
  br label %_cond2683
_cond2683:
  %_i2679 = load i64, i64* %_i2678
  %_bop2680 = icmp slt i64 %_i2679, 10
  br i1 %_bop2680, label %_body2682, label %_post2681
_body2682:
  %_sum2684 = load i64, i64* %_sum2664
  %_arr2685 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2663
  %_i2686 = load i64, i64* %_i2678
  %_index_ptr2688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2685, i32 0, i32 1, i64 %_i2686
  %_index2689 = load i64, i64* %_index_ptr2688
  %_bop2690 = add i64 %_sum2684, %_index2689
  store i64 %_bop2690, i64* %_sum2664
  %_i2691 = load i64, i64* %_i2678
  %_bop2692 = add i64 %_i2691, 1
  store i64 %_bop2692, i64* %_i2678
  br label %_cond2683
_post2681:
  %_sum2693 = load i64, i64* %_sum2664
  ret i64 %_sum2693
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
