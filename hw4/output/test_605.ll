; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a2909, i64 %_l2907, i64 %_r2905) {
  %_a2910 = alloca { i64, [0 x i64] }*
  %_l2908 = alloca i64
  %_r2906 = alloca i64
  %_j2911 = alloca i64
  store { i64, [0 x i64] }* %_a2909, { i64, [0 x i64] }** %_a2910
  store i64 %_l2907, i64* %_l2908
  store i64 %_r2905, i64* %_r2906
  store i64 0, i64* %_j2911
  %_l2912 = load i64, i64* %_l2908
  %_r2913 = load i64, i64* %_r2906
  %_bop2914 = icmp slt i64 %_l2912, %_r2913
  br i1 %_bop2914, label %_then2931, label %_else2930
_then2931:
  %_r2915 = load i64, i64* %_r2906
  %_l2916 = load i64, i64* %_l2908
  %_a2917 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2910
  %_result2918 = call i64 @partition({ i64, [0 x i64] }* %_a2917, i64 %_l2916, i64 %_r2915)
  store i64 %_result2918, i64* %_j2911
  %_j2919 = load i64, i64* %_j2911
  %_bop2920 = sub i64 %_j2919, 1
  %_l2921 = load i64, i64* %_l2908
  %_a2922 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2910
  call void @quick_sort({ i64, [0 x i64] }* %_a2922, i64 %_l2921, i64 %_bop2920)
  %_r2924 = load i64, i64* %_r2906
  %_j2925 = load i64, i64* %_j2911
  %_bop2926 = add i64 %_j2925, 1
  %_a2927 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2910
  call void @quick_sort({ i64, [0 x i64] }* %_a2927, i64 %_bop2926, i64 %_r2924)
  br label %_merge2929
_else2930:
  br label %_merge2929
_merge2929:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %_a2803, i64 %_l2801, i64 %_r2799) {
  %_a2804 = alloca { i64, [0 x i64] }*
  %_l2802 = alloca i64
  %_r2800 = alloca i64
  %_pivot2810 = alloca i64
  %_i2812 = alloca i64
  %_j2815 = alloca i64
  %_t2816 = alloca i64
  %_done2817 = alloca i64
  store { i64, [0 x i64] }* %_a2803, { i64, [0 x i64] }** %_a2804
  store i64 %_l2801, i64* %_l2802
  store i64 %_r2799, i64* %_r2800
  %_a2805 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_l2806 = load i64, i64* %_l2802
  %_index_ptr2808 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2805, i32 0, i32 1, i64 %_l2806
  %_index2809 = load i64, i64* %_index_ptr2808
  store i64 %_index2809, i64* %_pivot2810
  %_l2811 = load i64, i64* %_l2802
  store i64 %_l2811, i64* %_i2812
  %_r2813 = load i64, i64* %_r2800
  %_bop2814 = add i64 %_r2813, 1
  store i64 %_bop2814, i64* %_j2815
  store i64 0, i64* %_t2816
  store i64 0, i64* %_done2817
  br label %_cond2822
_cond2822:
  %_done2818 = load i64, i64* %_done2817
  %_bop2819 = icmp eq i64 %_done2818, 0
  br i1 %_bop2819, label %_body2821, label %_post2820
_body2821:
  %_i2823 = load i64, i64* %_i2812
  %_bop2824 = add i64 %_i2823, 1
  store i64 %_bop2824, i64* %_i2812
  br label %_cond2838
_cond2838:
  %_a2825 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_i2826 = load i64, i64* %_i2812
  %_index_ptr2828 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2825, i32 0, i32 1, i64 %_i2826
  %_index2829 = load i64, i64* %_index_ptr2828
  %_pivot2830 = load i64, i64* %_pivot2810
  %_bop2831 = icmp sle i64 %_index2829, %_pivot2830
  %_i2832 = load i64, i64* %_i2812
  %_r2833 = load i64, i64* %_r2800
  %_bop2834 = icmp sle i64 %_i2832, %_r2833
  %_bop2835 = and i1 %_bop2831, %_bop2834
  br i1 %_bop2835, label %_body2837, label %_post2836
_body2837:
  %_i2839 = load i64, i64* %_i2812
  %_bop2840 = add i64 %_i2839, 1
  store i64 %_bop2840, i64* %_i2812
  br label %_cond2838
_post2836:
  %_j2841 = load i64, i64* %_j2815
  %_bop2842 = sub i64 %_j2841, 1
  store i64 %_bop2842, i64* %_j2815
  br label %_cond2852
_cond2852:
  %_a2843 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_j2844 = load i64, i64* %_j2815
  %_index_ptr2846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2843, i32 0, i32 1, i64 %_j2844
  %_index2847 = load i64, i64* %_index_ptr2846
  %_pivot2848 = load i64, i64* %_pivot2810
  %_bop2849 = icmp sgt i64 %_index2847, %_pivot2848
  br i1 %_bop2849, label %_body2851, label %_post2850
_body2851:
  %_j2853 = load i64, i64* %_j2815
  %_bop2854 = sub i64 %_j2853, 1
  store i64 %_bop2854, i64* %_j2815
  br label %_cond2852
_post2850:
  %_i2855 = load i64, i64* %_i2812
  %_j2856 = load i64, i64* %_j2815
  %_bop2857 = icmp sge i64 %_i2855, %_j2856
  br i1 %_bop2857, label %_then2860, label %_else2859
_then2860:
  store i64 1, i64* %_done2817
  br label %_merge2858
_else2859:
  br label %_merge2858
_merge2858:
  %_done2861 = load i64, i64* %_done2817
  %_bop2862 = icmp eq i64 %_done2861, 0
  br i1 %_bop2862, label %_then2884, label %_else2883
_then2884:
  %_a2863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_i2864 = load i64, i64* %_i2812
  %_index_ptr2866 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2863, i32 0, i32 1, i64 %_i2864
  %_index2867 = load i64, i64* %_index_ptr2866
  store i64 %_index2867, i64* %_t2816
  %_a2868 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_i2869 = load i64, i64* %_i2812
  %_index_ptr2871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2868, i32 0, i32 1, i64 %_i2869
  %_a2872 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_j2873 = load i64, i64* %_j2815
  %_index_ptr2875 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2872, i32 0, i32 1, i64 %_j2873
  %_index2876 = load i64, i64* %_index_ptr2875
  store i64 %_index2876, i64* %_index_ptr2871
  %_a2877 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_j2878 = load i64, i64* %_j2815
  %_index_ptr2880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2877, i32 0, i32 1, i64 %_j2878
  %_t2881 = load i64, i64* %_t2816
  store i64 %_t2881, i64* %_index_ptr2880
  br label %_merge2882
_else2883:
  br label %_merge2882
_merge2882:
  br label %_cond2822
_post2820:
  %_a2885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_l2886 = load i64, i64* %_l2802
  %_index_ptr2888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2885, i32 0, i32 1, i64 %_l2886
  %_index2889 = load i64, i64* %_index_ptr2888
  store i64 %_index2889, i64* %_t2816
  %_a2890 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_l2891 = load i64, i64* %_l2802
  %_index_ptr2893 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2890, i32 0, i32 1, i64 %_l2891
  %_a2894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_j2895 = load i64, i64* %_j2815
  %_index_ptr2897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2894, i32 0, i32 1, i64 %_j2895
  %_index2898 = load i64, i64* %_index_ptr2897
  store i64 %_index2898, i64* %_index_ptr2893
  %_a2899 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2804
  %_j2900 = load i64, i64* %_j2815
  %_index_ptr2902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2899, i32 0, i32 1, i64 %_j2900
  %_t2903 = load i64, i64* %_t2816
  store i64 %_t2903, i64* %_index_ptr2902
  %_j2904 = load i64, i64* %_j2815
  ret i64 %_j2904
}

define i64 @program(i64 %_argc2777, { i64, [0 x i8*] }* %_argv2775) {
  %_argc2778 = alloca i64
  %_argv2776 = alloca { i64, [0 x i8*] }*
  %_a2790 = alloca { i64, [0 x i64] }*
  store i64 %_argc2777, i64* %_argc2778
  store { i64, [0 x i8*] }* %_argv2775, { i64, [0 x i8*] }** %_argv2776
  %_raw_array2779 = call i64* @oat_alloc_array(i64 9)
  %_array2780 = bitcast i64* %_raw_array2779 to { i64, [0 x i64] }*
  %_ind2781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind2781
  %_ind2782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2782
  %_ind2783 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind2783
  %_ind2784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind2784
  %_ind2785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind2785
  %_ind2786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind2786
  %_ind2787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind2787
  %_ind2788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2788
  %_ind2789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2780, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind2789
  store { i64, [0 x i64] }* %_array2780, { i64, [0 x i64] }** %_a2790
  %_a2791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2790
  %_result2792 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2791)
  call void @print_string(i8* %_result2792)
  %_a2794 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2790
  call void @quick_sort({ i64, [0 x i64] }* %_a2794, i64 0, i64 8)
  %_a2796 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2790
  %_result2797 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2796)
  call void @print_string(i8* %_result2797)
  ret i64 255
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
