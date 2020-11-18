; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2750 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %_numbers2760, i64 %_array_size2758) {
  %_numbers2761 = alloca { i64, [0 x i64] }*
  %_array_size2759 = alloca i64
  %_temp2762 = alloca i64
  %_i2765 = alloca i64
  %_j2771 = alloca i64
  store { i64, [0 x i64] }* %_numbers2760, { i64, [0 x i64] }** %_numbers2761
  store i64 %_array_size2758, i64* %_array_size2759
  store i64 0, i64* %_temp2762
  %_array_size2763 = load i64, i64* %_array_size2759
  %_bop2764 = sub i64 %_array_size2763, 1
  store i64 %_bop2764, i64* %_i2765
  br label %_cond2770
_cond2770:
  %_i2766 = load i64, i64* %_i2765
  %_bop2767 = icmp sgt i64 %_i2766, 0
  br i1 %_bop2767, label %_body2769, label %_post2768
_body2769:
  store i64 1, i64* %_j2771
  br label %_cond2777
_cond2777:
  %_j2772 = load i64, i64* %_j2771
  %_i2773 = load i64, i64* %_i2765
  %_bop2774 = icmp sle i64 %_j2772, %_i2773
  br i1 %_bop2774, label %_body2776, label %_post2775
_body2776:
  %_numbers2778 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2761
  %_j2779 = load i64, i64* %_j2771
  %_bop2780 = sub i64 %_j2779, 1
  %_index_ptr2781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2778, i32 0, i32 1, i64 %_bop2780
  %_index2782 = load i64, i64* %_index_ptr2781
  %_numbers2783 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2761
  %_i2784 = load i64, i64* %_i2765
  %_index_ptr2785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2783, i32 0, i32 1, i64 %_i2784
  %_index2786 = load i64, i64* %_index_ptr2785
  %_bop2787 = icmp sgt i64 %_index2782, %_index2786
  br i1 %_bop2787, label %_then2807, label %_else2806
_then2807:
  %_numbers2788 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2761
  %_j2789 = load i64, i64* %_j2771
  %_bop2790 = sub i64 %_j2789, 1
  %_index_ptr2791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2788, i32 0, i32 1, i64 %_bop2790
  %_index2792 = load i64, i64* %_index_ptr2791
  store i64 %_index2792, i64* %_temp2762
  %_numbers2793 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2761
  %_j2794 = load i64, i64* %_j2771
  %_bop2795 = sub i64 %_j2794, 1
  %_index_ptr2796 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2793, i32 0, i32 1, i64 %_bop2795
  %_numbers2797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2761
  %_i2798 = load i64, i64* %_i2765
  %_index_ptr2799 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2797, i32 0, i32 1, i64 %_i2798
  %_index2800 = load i64, i64* %_index_ptr2799
  store i64 %_index2800, i64* %_index_ptr2796
  %_numbers2801 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2761
  %_i2802 = load i64, i64* %_i2765
  %_index_ptr2803 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2801, i32 0, i32 1, i64 %_i2802
  %_temp2804 = load i64, i64* %_temp2762
  store i64 %_temp2804, i64* %_index_ptr2803
  br label %_merge2805
_else2806:
  br label %_merge2805
_merge2805:
  %_j2808 = load i64, i64* %_j2771
  %_bop2809 = add i64 %_j2808, 1
  store i64 %_bop2809, i64* %_j2771
  br label %_cond2777
_post2775:
  %_i2810 = load i64, i64* %_i2765
  %_bop2811 = sub i64 %_i2810, 1
  store i64 %_bop2811, i64* %_i2765
  br label %_cond2770
_post2768:
  ret void
}

define i64 @program(i64 %_argc2725, { i64, [0 x i8*] }* %_argv2723) {
  %_argc2726 = alloca i64
  %_argv2724 = alloca { i64, [0 x i8*] }*
  %_a2729 = alloca { i64, [0 x i64] }*
  store i64 %_argc2725, i64* %_argc2726
  store { i64, [0 x i8*] }* %_argv2723, { i64, [0 x i8*] }** %_argv2724
  %_raw_array2727 = call i64* @oat_alloc_array(i64 8)
  %_array2728 = bitcast i64* %_raw_array2727 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2728, { i64, [0 x i64] }** %_a2729
  %_a2730 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2730, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2731
  %_a2732 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2732, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2733
  %_a2734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2735 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2734, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2735
  %_a2736 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2737 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2736, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2737
  %_a2738 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2739 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2738, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2739
  %_a2740 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2741 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2740, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2741
  %_a2742 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2743 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2742, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2743
  %_a2744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_index_ptr2745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2744, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2745
  %_a2746 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_result2747 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2746)
  call void @print_string(i8* %_result2747)
  %_str2749 = getelementptr [2 x i8], [2 x i8]* @_str_arr2750, i32 0, i32 0
  call void @print_string(i8* %_str2749)
  %_a2752 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  call void @bubble_sort({ i64, [0 x i64] }* %_a2752, i64 8)
  %_a2754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2729
  %_result2755 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2754)
  call void @print_string(i8* %_result2755)
  %_unop2757 = sub i64 0, 1
  ret i64 %_unop2757
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
