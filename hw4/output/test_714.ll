; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2979 = global [2 x i8] c" \00"
@_str_arr2985 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc2957, { i64, [0 x i8*] }* %_argv2955) {
  %_argc2958 = alloca i64
  %_argv2956 = alloca { i64, [0 x i8*] }*
  %_i2959 = alloca i64
  %_a2972 = alloca { i64, [0 x i64] }*
  store i64 %_argc2957, i64* %_argc2958
  store { i64, [0 x i8*] }* %_argv2955, { i64, [0 x i8*] }** %_argv2956
  store i64 0, i64* %_i2959
  %_raw_array2960 = call i64* @oat_alloc_array(i64 10)
  %_array2961 = bitcast i64* %_raw_array2960 to { i64, [0 x i64] }*
  %_ind2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind2962
  %_ind2963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind2963
  %_ind2964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind2964
  %_ind2965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind2965
  %_ind2966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind2966
  %_ind2967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind2967
  %_ind2968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind2968
  %_ind2969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind2969
  %_ind2970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind2970
  %_ind2971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2961, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind2971
  store { i64, [0 x i64] }* %_array2961, { i64, [0 x i64] }** %_a2972
  %_a2973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2972
  %_result2974 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2973)
  call void @print_string(i8* %_result2974)
  %_a2976 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2972
  call void @oat_mergesort({ i64, [0 x i64] }* %_a2976, i64 0, i64 9)
  %_str2978 = getelementptr [2 x i8], [2 x i8]* @_str_arr2979, i32 0, i32 0
  call void @print_string(i8* %_str2978)
  %_a2981 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2972
  %_result2982 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2981)
  call void @print_string(i8* %_result2982)
  %_str2984 = getelementptr [2 x i8], [2 x i8]* @_str_arr2985, i32 0, i32 0
  call void @print_string(i8* %_str2984)
  %_i2987 = load i64, i64* %_i2959
  ret i64 %_i2987
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a2928, i64 %_low2926, i64 %_high2924) {
  %_a2929 = alloca { i64, [0 x i64] }*
  %_low2927 = alloca i64
  %_high2925 = alloca i64
  %_mid2930 = alloca i64
  store { i64, [0 x i64] }* %_a2928, { i64, [0 x i64] }** %_a2929
  store i64 %_low2926, i64* %_low2927
  store i64 %_high2924, i64* %_high2925
  store i64 0, i64* %_mid2930
  %_low2931 = load i64, i64* %_low2927
  %_high2932 = load i64, i64* %_high2925
  %_bop2933 = icmp slt i64 %_low2931, %_high2932
  br i1 %_bop2933, label %_then2954, label %_else2953
_then2954:
  %_low2934 = load i64, i64* %_low2927
  %_high2935 = load i64, i64* %_high2925
  %_bop2936 = add i64 %_low2934, %_high2935
  %_bop2937 = lshr i64 %_bop2936, 1
  store i64 %_bop2937, i64* %_mid2930
  %_mid2938 = load i64, i64* %_mid2930
  %_low2939 = load i64, i64* %_low2927
  %_a2940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2929
  call void @oat_mergesort({ i64, [0 x i64] }* %_a2940, i64 %_low2939, i64 %_mid2938)
  %_high2942 = load i64, i64* %_high2925
  %_mid2943 = load i64, i64* %_mid2930
  %_bop2944 = add i64 %_mid2943, 1
  %_a2945 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2929
  call void @oat_mergesort({ i64, [0 x i64] }* %_a2945, i64 %_bop2944, i64 %_high2942)
  %_mid2947 = load i64, i64* %_mid2930
  %_high2948 = load i64, i64* %_high2925
  %_low2949 = load i64, i64* %_low2927
  %_a2950 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2929
  call void @merge({ i64, [0 x i64] }* %_a2950, i64 %_low2949, i64 %_high2948, i64 %_mid2947)
  br label %_merge2952
_else2953:
  br label %_merge2952
_merge2952:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a2818, i64 %_low2816, i64 %_high2814, i64 %_mid2812) {
  %_a2819 = alloca { i64, [0 x i64] }*
  %_low2817 = alloca i64
  %_high2815 = alloca i64
  %_mid2813 = alloca i64
  %_i2820 = alloca i64
  %_j2821 = alloca i64
  %_k2822 = alloca i64
  %_c2825 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2818, { i64, [0 x i64] }** %_a2819
  store i64 %_low2816, i64* %_low2817
  store i64 %_high2814, i64* %_high2815
  store i64 %_mid2812, i64* %_mid2813
  store i64 0, i64* %_i2820
  store i64 0, i64* %_j2821
  store i64 0, i64* %_k2822
  %_raw_array2823 = call i64* @oat_alloc_array(i64 50)
  %_array2824 = bitcast i64* %_raw_array2823 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2824, { i64, [0 x i64] }** %_c2825
  %_low2826 = load i64, i64* %_low2817
  store i64 %_low2826, i64* %_i2820
  %_mid2827 = load i64, i64* %_mid2813
  %_bop2828 = add i64 %_mid2827, 1
  store i64 %_bop2828, i64* %_j2821
  %_low2829 = load i64, i64* %_low2817
  store i64 %_low2829, i64* %_k2822
  br label %_cond2839
_cond2839:
  %_i2830 = load i64, i64* %_i2820
  %_mid2831 = load i64, i64* %_mid2813
  %_bop2832 = icmp sle i64 %_i2830, %_mid2831
  %_j2833 = load i64, i64* %_j2821
  %_high2834 = load i64, i64* %_high2815
  %_bop2835 = icmp sle i64 %_j2833, %_high2834
  %_bop2836 = and i1 %_bop2832, %_bop2835
  br i1 %_bop2836, label %_body2838, label %_post2837
_body2838:
  %_a2840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_i2841 = load i64, i64* %_i2820
  %_index_ptr2842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2840, i32 0, i32 1, i64 %_i2841
  %_index2843 = load i64, i64* %_index_ptr2842
  %_a2844 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_j2845 = load i64, i64* %_j2821
  %_index_ptr2846 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2844, i32 0, i32 1, i64 %_j2845
  %_index2847 = load i64, i64* %_index_ptr2846
  %_bop2848 = icmp slt i64 %_index2843, %_index2847
  br i1 %_bop2848, label %_then2873, label %_else2872
_then2873:
  %_c2849 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2825
  %_k2850 = load i64, i64* %_k2822
  %_index_ptr2851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2849, i32 0, i32 1, i64 %_k2850
  %_a2852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_i2853 = load i64, i64* %_i2820
  %_index_ptr2854 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2852, i32 0, i32 1, i64 %_i2853
  %_index2855 = load i64, i64* %_index_ptr2854
  store i64 %_index2855, i64* %_index_ptr2851
  %_k2856 = load i64, i64* %_k2822
  %_bop2857 = add i64 %_k2856, 1
  store i64 %_bop2857, i64* %_k2822
  %_i2858 = load i64, i64* %_i2820
  %_bop2859 = add i64 %_i2858, 1
  store i64 %_bop2859, i64* %_i2820
  br label %_merge2871
_else2872:
  %_c2860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2825
  %_k2861 = load i64, i64* %_k2822
  %_index_ptr2862 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2860, i32 0, i32 1, i64 %_k2861
  %_a2863 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_j2864 = load i64, i64* %_j2821
  %_index_ptr2865 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2863, i32 0, i32 1, i64 %_j2864
  %_index2866 = load i64, i64* %_index_ptr2865
  store i64 %_index2866, i64* %_index_ptr2862
  %_k2867 = load i64, i64* %_k2822
  %_bop2868 = add i64 %_k2867, 1
  store i64 %_bop2868, i64* %_k2822
  %_j2869 = load i64, i64* %_j2821
  %_bop2870 = add i64 %_j2869, 1
  store i64 %_bop2870, i64* %_j2821
  br label %_merge2871
_merge2871:
  br label %_cond2839
_post2837:
  br label %_cond2879
_cond2879:
  %_i2874 = load i64, i64* %_i2820
  %_mid2875 = load i64, i64* %_mid2813
  %_bop2876 = icmp sle i64 %_i2874, %_mid2875
  br i1 %_bop2876, label %_body2878, label %_post2877
_body2878:
  %_c2880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2825
  %_k2881 = load i64, i64* %_k2822
  %_index_ptr2882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2880, i32 0, i32 1, i64 %_k2881
  %_a2883 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_i2884 = load i64, i64* %_i2820
  %_index_ptr2885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2883, i32 0, i32 1, i64 %_i2884
  %_index2886 = load i64, i64* %_index_ptr2885
  store i64 %_index2886, i64* %_index_ptr2882
  %_k2887 = load i64, i64* %_k2822
  %_bop2888 = add i64 %_k2887, 1
  store i64 %_bop2888, i64* %_k2822
  %_i2889 = load i64, i64* %_i2820
  %_bop2890 = add i64 %_i2889, 1
  store i64 %_bop2890, i64* %_i2820
  br label %_cond2879
_post2877:
  br label %_cond2896
_cond2896:
  %_j2891 = load i64, i64* %_j2821
  %_high2892 = load i64, i64* %_high2815
  %_bop2893 = icmp sle i64 %_j2891, %_high2892
  br i1 %_bop2893, label %_body2895, label %_post2894
_body2895:
  %_c2897 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2825
  %_k2898 = load i64, i64* %_k2822
  %_index_ptr2899 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2897, i32 0, i32 1, i64 %_k2898
  %_a2900 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_j2901 = load i64, i64* %_j2821
  %_index_ptr2902 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2900, i32 0, i32 1, i64 %_j2901
  %_index2903 = load i64, i64* %_index_ptr2902
  store i64 %_index2903, i64* %_index_ptr2899
  %_k2904 = load i64, i64* %_k2822
  %_bop2905 = add i64 %_k2904, 1
  store i64 %_bop2905, i64* %_k2822
  %_j2906 = load i64, i64* %_j2821
  %_bop2907 = add i64 %_j2906, 1
  store i64 %_bop2907, i64* %_j2821
  br label %_cond2896
_post2894:
  %_low2908 = load i64, i64* %_low2817
  store i64 %_low2908, i64* %_i2820
  br label %_cond2914
_cond2914:
  %_i2909 = load i64, i64* %_i2820
  %_k2910 = load i64, i64* %_k2822
  %_bop2911 = icmp slt i64 %_i2909, %_k2910
  br i1 %_bop2911, label %_body2913, label %_post2912
_body2913:
  %_a2915 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2819
  %_i2916 = load i64, i64* %_i2820
  %_index_ptr2917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2915, i32 0, i32 1, i64 %_i2916
  %_c2918 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2825
  %_i2919 = load i64, i64* %_i2820
  %_index_ptr2920 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2918, i32 0, i32 1, i64 %_i2919
  %_index2921 = load i64, i64* %_index_ptr2920
  store i64 %_index2921, i64* %_index_ptr2917
  %_i2922 = load i64, i64* %_i2820
  %_bop2923 = add i64 %_i2922, 1
  store i64 %_bop2923, i64* %_i2820
  br label %_cond2914
_post2912:
  ret void
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
