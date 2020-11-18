; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3021 = global [2 x i8] c" \00"
@_str_arr3027 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc2999, { i64, [0 x i8*] }* %_argv2997) {
  %_argc3000 = alloca i64
  %_argv2998 = alloca { i64, [0 x i8*] }*
  %_i3001 = alloca i64
  %_a3014 = alloca { i64, [0 x i64] }*
  store i64 %_argc2999, i64* %_argc3000
  store { i64, [0 x i8*] }* %_argv2997, { i64, [0 x i8*] }** %_argv2998
  store i64 0, i64* %_i3001
  %_raw_array3002 = call i64* @oat_alloc_array(i64 10)
  %_array3003 = bitcast i64* %_raw_array3002 to { i64, [0 x i64] }*
  %_ind3004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3004
  %_ind3005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3005
  %_ind3006 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3006
  %_ind3007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3007
  %_ind3008 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3008
  %_ind3009 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3009
  %_ind3010 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3010
  %_ind3011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3011
  %_ind3012 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3012
  %_ind3013 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3003, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3013
  store { i64, [0 x i64] }* %_array3003, { i64, [0 x i64] }** %_a3014
  %_a3015 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3014
  %_result3016 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3015)
  call void @print_string(i8* %_result3016)
  %_a3018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3014
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3018, i64 0, i64 9)
  %_str3020 = getelementptr [2 x i8], [2 x i8]* @_str_arr3021, i32 0, i32 0
  call void @print_string(i8* %_str3020)
  %_a3023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3014
  %_result3024 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3023)
  call void @print_string(i8* %_result3024)
  %_str3026 = getelementptr [2 x i8], [2 x i8]* @_str_arr3027, i32 0, i32 0
  call void @print_string(i8* %_str3026)
  %_i3029 = load i64, i64* %_i3001
  ret i64 %_i3029
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a2970, i64 %_low2968, i64 %_high2966) {
  %_a2971 = alloca { i64, [0 x i64] }*
  %_low2969 = alloca i64
  %_high2967 = alloca i64
  %_mid2972 = alloca i64
  store { i64, [0 x i64] }* %_a2970, { i64, [0 x i64] }** %_a2971
  store i64 %_low2968, i64* %_low2969
  store i64 %_high2966, i64* %_high2967
  store i64 0, i64* %_mid2972
  %_low2973 = load i64, i64* %_low2969
  %_high2974 = load i64, i64* %_high2967
  %_bop2975 = icmp slt i64 %_low2973, %_high2974
  br i1 %_bop2975, label %_then2996, label %_else2995
_then2996:
  %_low2976 = load i64, i64* %_low2969
  %_high2977 = load i64, i64* %_high2967
  %_bop2978 = add i64 %_low2976, %_high2977
  %_bop2979 = lshr i64 %_bop2978, 1
  store i64 %_bop2979, i64* %_mid2972
  %_mid2980 = load i64, i64* %_mid2972
  %_low2981 = load i64, i64* %_low2969
  %_a2982 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2971
  call void @oat_mergesort({ i64, [0 x i64] }* %_a2982, i64 %_low2981, i64 %_mid2980)
  %_high2984 = load i64, i64* %_high2967
  %_mid2985 = load i64, i64* %_mid2972
  %_bop2986 = add i64 %_mid2985, 1
  %_a2987 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2971
  call void @oat_mergesort({ i64, [0 x i64] }* %_a2987, i64 %_bop2986, i64 %_high2984)
  %_mid2989 = load i64, i64* %_mid2972
  %_high2990 = load i64, i64* %_high2967
  %_low2991 = load i64, i64* %_low2969
  %_a2992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2971
  call void @merge({ i64, [0 x i64] }* %_a2992, i64 %_low2991, i64 %_high2990, i64 %_mid2989)
  br label %_merge2994
_else2995:
  br label %_merge2994
_merge2994:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a2848, i64 %_low2846, i64 %_high2844, i64 %_mid2842) {
  %_a2849 = alloca { i64, [0 x i64] }*
  %_low2847 = alloca i64
  %_high2845 = alloca i64
  %_mid2843 = alloca i64
  %_i2850 = alloca i64
  %_j2851 = alloca i64
  %_k2852 = alloca i64
  %_c2855 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2848, { i64, [0 x i64] }** %_a2849
  store i64 %_low2846, i64* %_low2847
  store i64 %_high2844, i64* %_high2845
  store i64 %_mid2842, i64* %_mid2843
  store i64 0, i64* %_i2850
  store i64 0, i64* %_j2851
  store i64 0, i64* %_k2852
  %_raw_array2853 = call i64* @oat_alloc_array(i64 50)
  %_array2854 = bitcast i64* %_raw_array2853 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2854, { i64, [0 x i64] }** %_c2855
  %_low2856 = load i64, i64* %_low2847
  store i64 %_low2856, i64* %_i2850
  %_mid2857 = load i64, i64* %_mid2843
  %_bop2858 = add i64 %_mid2857, 1
  store i64 %_bop2858, i64* %_j2851
  %_low2859 = load i64, i64* %_low2847
  store i64 %_low2859, i64* %_k2852
  br label %_cond2869
_cond2869:
  %_i2860 = load i64, i64* %_i2850
  %_mid2861 = load i64, i64* %_mid2843
  %_bop2862 = icmp sle i64 %_i2860, %_mid2861
  %_j2863 = load i64, i64* %_j2851
  %_high2864 = load i64, i64* %_high2845
  %_bop2865 = icmp sle i64 %_j2863, %_high2864
  %_bop2866 = and i1 %_bop2862, %_bop2865
  br i1 %_bop2866, label %_body2868, label %_post2867
_body2868:
  %_a2870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_i2871 = load i64, i64* %_i2850
  %_index_ptr2873 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2870, i32 0, i32 1, i64 %_i2871
  %_index2874 = load i64, i64* %_index_ptr2873
  %_a2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_j2876 = load i64, i64* %_j2851
  %_index_ptr2878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2875, i32 0, i32 1, i64 %_j2876
  %_index2879 = load i64, i64* %_index_ptr2878
  %_bop2880 = icmp slt i64 %_index2874, %_index2879
  br i1 %_bop2880, label %_then2909, label %_else2908
_then2909:
  %_c2881 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2855
  %_k2882 = load i64, i64* %_k2852
  %_index_ptr2884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2881, i32 0, i32 1, i64 %_k2882
  %_a2885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_i2886 = load i64, i64* %_i2850
  %_index_ptr2888 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2885, i32 0, i32 1, i64 %_i2886
  %_index2889 = load i64, i64* %_index_ptr2888
  store i64 %_index2889, i64* %_index_ptr2884
  %_k2890 = load i64, i64* %_k2852
  %_bop2891 = add i64 %_k2890, 1
  store i64 %_bop2891, i64* %_k2852
  %_i2892 = load i64, i64* %_i2850
  %_bop2893 = add i64 %_i2892, 1
  store i64 %_bop2893, i64* %_i2850
  br label %_merge2907
_else2908:
  %_c2894 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2855
  %_k2895 = load i64, i64* %_k2852
  %_index_ptr2897 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2894, i32 0, i32 1, i64 %_k2895
  %_a2898 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_j2899 = load i64, i64* %_j2851
  %_index_ptr2901 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2898, i32 0, i32 1, i64 %_j2899
  %_index2902 = load i64, i64* %_index_ptr2901
  store i64 %_index2902, i64* %_index_ptr2897
  %_k2903 = load i64, i64* %_k2852
  %_bop2904 = add i64 %_k2903, 1
  store i64 %_bop2904, i64* %_k2852
  %_j2905 = load i64, i64* %_j2851
  %_bop2906 = add i64 %_j2905, 1
  store i64 %_bop2906, i64* %_j2851
  br label %_merge2907
_merge2907:
  br label %_cond2869
_post2867:
  br label %_cond2915
_cond2915:
  %_i2910 = load i64, i64* %_i2850
  %_mid2911 = load i64, i64* %_mid2843
  %_bop2912 = icmp sle i64 %_i2910, %_mid2911
  br i1 %_bop2912, label %_body2914, label %_post2913
_body2914:
  %_c2916 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2855
  %_k2917 = load i64, i64* %_k2852
  %_index_ptr2919 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2916, i32 0, i32 1, i64 %_k2917
  %_a2920 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_i2921 = load i64, i64* %_i2850
  %_index_ptr2923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2920, i32 0, i32 1, i64 %_i2921
  %_index2924 = load i64, i64* %_index_ptr2923
  store i64 %_index2924, i64* %_index_ptr2919
  %_k2925 = load i64, i64* %_k2852
  %_bop2926 = add i64 %_k2925, 1
  store i64 %_bop2926, i64* %_k2852
  %_i2927 = load i64, i64* %_i2850
  %_bop2928 = add i64 %_i2927, 1
  store i64 %_bop2928, i64* %_i2850
  br label %_cond2915
_post2913:
  br label %_cond2934
_cond2934:
  %_j2929 = load i64, i64* %_j2851
  %_high2930 = load i64, i64* %_high2845
  %_bop2931 = icmp sle i64 %_j2929, %_high2930
  br i1 %_bop2931, label %_body2933, label %_post2932
_body2933:
  %_c2935 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2855
  %_k2936 = load i64, i64* %_k2852
  %_index_ptr2938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2935, i32 0, i32 1, i64 %_k2936
  %_a2939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_j2940 = load i64, i64* %_j2851
  %_index_ptr2942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2939, i32 0, i32 1, i64 %_j2940
  %_index2943 = load i64, i64* %_index_ptr2942
  store i64 %_index2943, i64* %_index_ptr2938
  %_k2944 = load i64, i64* %_k2852
  %_bop2945 = add i64 %_k2944, 1
  store i64 %_bop2945, i64* %_k2852
  %_j2946 = load i64, i64* %_j2851
  %_bop2947 = add i64 %_j2946, 1
  store i64 %_bop2947, i64* %_j2851
  br label %_cond2934
_post2932:
  %_low2948 = load i64, i64* %_low2847
  store i64 %_low2948, i64* %_i2850
  br label %_cond2954
_cond2954:
  %_i2949 = load i64, i64* %_i2850
  %_k2950 = load i64, i64* %_k2852
  %_bop2951 = icmp slt i64 %_i2949, %_k2950
  br i1 %_bop2951, label %_body2953, label %_post2952
_body2953:
  %_a2955 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2849
  %_i2956 = load i64, i64* %_i2850
  %_index_ptr2958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2955, i32 0, i32 1, i64 %_i2956
  %_c2959 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c2855
  %_i2960 = load i64, i64* %_i2850
  %_index_ptr2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c2959, i32 0, i32 1, i64 %_i2960
  %_index2963 = load i64, i64* %_index_ptr2962
  store i64 %_index2963, i64* %_index_ptr2958
  %_i2964 = load i64, i64* %_i2850
  %_bop2965 = add i64 %_i2964, 1
  store i64 %_bop2965, i64* %_i2850
  br label %_cond2954
_post2952:
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
