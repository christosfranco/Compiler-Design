; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2774 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %_numbers2784, i64 %_array_size2782) {
  %_numbers2785 = alloca { i64, [0 x i64] }*
  %_array_size2783 = alloca i64
  %_temp2786 = alloca i64
  %_i2789 = alloca i64
  %_j2795 = alloca i64
  store { i64, [0 x i64] }* %_numbers2784, { i64, [0 x i64] }** %_numbers2785
  store i64 %_array_size2782, i64* %_array_size2783
  store i64 0, i64* %_temp2786
  %_array_size2787 = load i64, i64* %_array_size2783
  %_bop2788 = sub i64 %_array_size2787, 1
  store i64 %_bop2788, i64* %_i2789
  br label %_cond2794
_cond2794:
  %_i2790 = load i64, i64* %_i2789
  %_bop2791 = icmp sgt i64 %_i2790, 0
  br i1 %_bop2791, label %_body2793, label %_post2792
_body2793:
  store i64 1, i64* %_j2795
  br label %_cond2801
_cond2801:
  %_j2796 = load i64, i64* %_j2795
  %_i2797 = load i64, i64* %_i2789
  %_bop2798 = icmp sle i64 %_j2796, %_i2797
  br i1 %_bop2798, label %_body2800, label %_post2799
_body2800:
  %_numbers2802 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2785
  %_j2803 = load i64, i64* %_j2795
  %_bop2804 = sub i64 %_j2803, 1
  %_index_ptr2806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2802, i32 0, i32 1, i64 %_bop2804
  %_index2807 = load i64, i64* %_index_ptr2806
  %_numbers2808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2785
  %_i2809 = load i64, i64* %_i2789
  %_index_ptr2811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2808, i32 0, i32 1, i64 %_i2809
  %_index2812 = load i64, i64* %_index_ptr2811
  %_bop2813 = icmp sgt i64 %_index2807, %_index2812
  br i1 %_bop2813, label %_then2837, label %_else2836
_then2837:
  %_numbers2814 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2785
  %_j2815 = load i64, i64* %_j2795
  %_bop2816 = sub i64 %_j2815, 1
  %_index_ptr2818 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2814, i32 0, i32 1, i64 %_bop2816
  %_index2819 = load i64, i64* %_index_ptr2818
  store i64 %_index2819, i64* %_temp2786
  %_numbers2820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2785
  %_j2821 = load i64, i64* %_j2795
  %_bop2822 = sub i64 %_j2821, 1
  %_index_ptr2824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2820, i32 0, i32 1, i64 %_bop2822
  %_numbers2825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2785
  %_i2826 = load i64, i64* %_i2789
  %_index_ptr2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2825, i32 0, i32 1, i64 %_i2826
  %_index2829 = load i64, i64* %_index_ptr2828
  store i64 %_index2829, i64* %_index_ptr2824
  %_numbers2830 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2785
  %_i2831 = load i64, i64* %_i2789
  %_index_ptr2833 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2830, i32 0, i32 1, i64 %_i2831
  %_temp2834 = load i64, i64* %_temp2786
  store i64 %_temp2834, i64* %_index_ptr2833
  br label %_merge2835
_else2836:
  br label %_merge2835
_merge2835:
  %_j2838 = load i64, i64* %_j2795
  %_bop2839 = add i64 %_j2838, 1
  store i64 %_bop2839, i64* %_j2795
  br label %_cond2801
_post2799:
  %_i2840 = load i64, i64* %_i2789
  %_bop2841 = sub i64 %_i2840, 1
  store i64 %_bop2841, i64* %_i2789
  br label %_cond2794
_post2792:
  ret void
}

define i64 @program(i64 %_argc2741, { i64, [0 x i8*] }* %_argv2739) {
  %_argc2742 = alloca i64
  %_argv2740 = alloca { i64, [0 x i8*] }*
  %_a2745 = alloca { i64, [0 x i64] }*
  store i64 %_argc2741, i64* %_argc2742
  store { i64, [0 x i8*] }* %_argv2739, { i64, [0 x i8*] }** %_argv2740
  %_raw_array2743 = call i64* @oat_alloc_array(i64 8)
  %_array2744 = bitcast i64* %_raw_array2743 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2744, { i64, [0 x i64] }** %_a2745
  %_a2746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2748 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2746, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2748
  %_a2749 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2751 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2749, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2751
  %_a2752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2754 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2752, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2754
  %_a2755 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2755, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2757
  %_a2758 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2760 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2758, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2760
  %_a2761 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2763 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2761, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2763
  %_a2764 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2766 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2764, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2766
  %_a2767 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_index_ptr2769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2767, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2769
  %_a2770 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_result2771 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2770)
  call void @print_string(i8* %_result2771)
  %_str2773 = getelementptr [2 x i8], [2 x i8]* @_str_arr2774, i32 0, i32 0
  call void @print_string(i8* %_str2773)
  %_a2776 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  call void @bubble_sort({ i64, [0 x i64] }* %_a2776, i64 8)
  %_a2778 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2745
  %_result2779 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2778)
  call void @print_string(i8* %_result2779)
  %_unop2781 = sub i64 0, 1
  ret i64 %_unop2781
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
