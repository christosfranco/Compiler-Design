; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2967 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %_numbers2977, i64 %_array_size2975) {
  %_numbers2978 = alloca { i64, [0 x i64] }*
  %_array_size2976 = alloca i64
  %_temp2979 = alloca i64
  %_i2982 = alloca i64
  %_j2988 = alloca i64
  store { i64, [0 x i64] }* %_numbers2977, { i64, [0 x i64] }** %_numbers2978
  store i64 %_array_size2975, i64* %_array_size2976
  store i64 0, i64* %_temp2979
  %_array_size2980 = load i64, i64* %_array_size2976
  %_bop2981 = sub i64 %_array_size2980, 1
  store i64 %_bop2981, i64* %_i2982
  br label %_cond2987
_cond2987:
  %_i2983 = load i64, i64* %_i2982
  %_bop2984 = icmp sgt i64 %_i2983, 0
  br i1 %_bop2984, label %_body2986, label %_post2985
_body2986:
  store i64 1, i64* %_j2988
  br label %_cond2994
_cond2994:
  %_j2989 = load i64, i64* %_j2988
  %_i2990 = load i64, i64* %_i2982
  %_bop2991 = icmp sle i64 %_j2989, %_i2990
  br i1 %_bop2991, label %_body2993, label %_post2992
_body2993:
  %_numbers2995 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2978
  %_j2996 = load i64, i64* %_j2988
  %_bop2997 = sub i64 %_j2996, 1
  %_index_ptr2999 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2995, i32 0, i32 1, i64 %_bop2997
  %_index3000 = load i64, i64* %_index_ptr2999
  %_numbers3001 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2978
  %_i3002 = load i64, i64* %_i2982
  %_index_ptr3004 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3001, i32 0, i32 1, i64 %_i3002
  %_index3005 = load i64, i64* %_index_ptr3004
  %_bop3006 = icmp sgt i64 %_index3000, %_index3005
  br i1 %_bop3006, label %_then3030, label %_else3029
_then3030:
  %_numbers3007 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2978
  %_j3008 = load i64, i64* %_j2988
  %_bop3009 = sub i64 %_j3008, 1
  %_index_ptr3011 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3007, i32 0, i32 1, i64 %_bop3009
  %_index3012 = load i64, i64* %_index_ptr3011
  store i64 %_index3012, i64* %_temp2979
  %_numbers3013 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2978
  %_j3014 = load i64, i64* %_j2988
  %_bop3015 = sub i64 %_j3014, 1
  %_index_ptr3017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3013, i32 0, i32 1, i64 %_bop3015
  %_numbers3018 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2978
  %_i3019 = load i64, i64* %_i2982
  %_index_ptr3021 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3018, i32 0, i32 1, i64 %_i3019
  %_index3022 = load i64, i64* %_index_ptr3021
  store i64 %_index3022, i64* %_index_ptr3017
  %_numbers3023 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2978
  %_i3024 = load i64, i64* %_i2982
  %_index_ptr3026 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3023, i32 0, i32 1, i64 %_i3024
  %_temp3027 = load i64, i64* %_temp2979
  store i64 %_temp3027, i64* %_index_ptr3026
  br label %_merge3028
_else3029:
  br label %_merge3028
_merge3028:
  %_j3031 = load i64, i64* %_j2988
  %_bop3032 = add i64 %_j3031, 1
  store i64 %_bop3032, i64* %_j2988
  br label %_cond2994
_post2992:
  %_i3033 = load i64, i64* %_i2982
  %_bop3034 = sub i64 %_i3033, 1
  store i64 %_bop3034, i64* %_i2982
  br label %_cond2987
_post2985:
  ret void
}

define i64 @program(i64 %_argc2934, { i64, [0 x i8*] }* %_argv2932) {
  %_argc2935 = alloca i64
  %_argv2933 = alloca { i64, [0 x i8*] }*
  %_a2938 = alloca { i64, [0 x i64] }*
  store i64 %_argc2934, i64* %_argc2935
  store { i64, [0 x i8*] }* %_argv2932, { i64, [0 x i8*] }** %_argv2933
  %_raw_array2936 = call i64* @oat_alloc_array(i64 8)
  %_array2937 = bitcast i64* %_raw_array2936 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2937, { i64, [0 x i64] }** %_a2938
  %_a2939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2939, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2941
  %_a2942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2942, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2944
  %_a2945 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2945, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2947
  %_a2948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2948, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2950
  %_a2951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2951, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2953
  %_a2954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2954, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2956
  %_a2957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2957, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2959
  %_a2960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_index_ptr2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2960, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2962
  %_a2963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_result2964 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2963)
  call void @print_string(i8* %_result2964)
  %_str2966 = getelementptr [2 x i8], [2 x i8]* @_str_arr2967, i32 0, i32 0
  call void @print_string(i8* %_str2966)
  %_a2969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  call void @bubble_sort({ i64, [0 x i64] }* %_a2969, i64 8)
  %_a2971 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2938
  %_result2972 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2971)
  call void @print_string(i8* %_result2972)
  %_unop2974 = sub i64 0, 1
  ret i64 %_unop2974
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
