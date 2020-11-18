; generated from: oatprograms/bsort.oat
target triple = "x86_64-unknown-linux"
@_str_arr2970 = global [2 x i8] c" \00"

define void @bubble_sort({ i64, [0 x i64] }* %_numbers2980, i64 %_array_size2978) {
  %_numbers2981 = alloca { i64, [0 x i64] }*
  %_array_size2979 = alloca i64
  %_temp2982 = alloca i64
  %_i2985 = alloca i64
  %_j2991 = alloca i64
  store { i64, [0 x i64] }* %_numbers2980, { i64, [0 x i64] }** %_numbers2981
  store i64 %_array_size2978, i64* %_array_size2979
  store i64 0, i64* %_temp2982
  %_array_size2983 = load i64, i64* %_array_size2979
  %_bop2984 = sub i64 %_array_size2983, 1
  store i64 %_bop2984, i64* %_i2985
  br label %_cond2990
_cond2990:
  %_i2986 = load i64, i64* %_i2985
  %_bop2987 = icmp sgt i64 %_i2986, 0
  br i1 %_bop2987, label %_body2989, label %_post2988
_body2989:
  store i64 1, i64* %_j2991
  br label %_cond2997
_cond2997:
  %_j2992 = load i64, i64* %_j2991
  %_i2993 = load i64, i64* %_i2985
  %_bop2994 = icmp sle i64 %_j2992, %_i2993
  br i1 %_bop2994, label %_body2996, label %_post2995
_body2996:
  %_numbers2998 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2981
  %_j2999 = load i64, i64* %_j2991
  %_bop3000 = sub i64 %_j2999, 1
  %_index_ptr3002 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers2998, i32 0, i32 1, i64 %_bop3000
  %_index3003 = load i64, i64* %_index_ptr3002
  %_numbers3004 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2981
  %_i3005 = load i64, i64* %_i2985
  %_index_ptr3007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3004, i32 0, i32 1, i64 %_i3005
  %_index3008 = load i64, i64* %_index_ptr3007
  %_bop3009 = icmp sgt i64 %_index3003, %_index3008
  br i1 %_bop3009, label %_then3033, label %_else3032
_then3033:
  %_numbers3010 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2981
  %_j3011 = load i64, i64* %_j2991
  %_bop3012 = sub i64 %_j3011, 1
  %_index_ptr3014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3010, i32 0, i32 1, i64 %_bop3012
  %_index3015 = load i64, i64* %_index_ptr3014
  store i64 %_index3015, i64* %_temp2982
  %_numbers3016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2981
  %_j3017 = load i64, i64* %_j2991
  %_bop3018 = sub i64 %_j3017, 1
  %_index_ptr3020 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3016, i32 0, i32 1, i64 %_bop3018
  %_numbers3021 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2981
  %_i3022 = load i64, i64* %_i2985
  %_index_ptr3024 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3021, i32 0, i32 1, i64 %_i3022
  %_index3025 = load i64, i64* %_index_ptr3024
  store i64 %_index3025, i64* %_index_ptr3020
  %_numbers3026 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_numbers2981
  %_i3027 = load i64, i64* %_i2985
  %_index_ptr3029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_numbers3026, i32 0, i32 1, i64 %_i3027
  %_temp3030 = load i64, i64* %_temp2982
  store i64 %_temp3030, i64* %_index_ptr3029
  br label %_merge3031
_else3032:
  br label %_merge3031
_merge3031:
  %_j3034 = load i64, i64* %_j2991
  %_bop3035 = add i64 %_j3034, 1
  store i64 %_bop3035, i64* %_j2991
  br label %_cond2997
_post2995:
  %_i3036 = load i64, i64* %_i2985
  %_bop3037 = sub i64 %_i3036, 1
  store i64 %_bop3037, i64* %_i2985
  br label %_cond2990
_post2988:
  ret void
}

define i64 @program(i64 %_argc2937, { i64, [0 x i8*] }* %_argv2935) {
  %_argc2938 = alloca i64
  %_argv2936 = alloca { i64, [0 x i8*] }*
  %_a2941 = alloca { i64, [0 x i64] }*
  store i64 %_argc2937, i64* %_argc2938
  store { i64, [0 x i8*] }* %_argv2935, { i64, [0 x i8*] }** %_argv2936
  %_raw_array2939 = call i64* @oat_alloc_array(i64 8)
  %_array2940 = bitcast i64* %_raw_array2939 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2940, { i64, [0 x i64] }** %_a2941
  %_a2942 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2942, i32 0, i32 1, i32 0
  store i64 121, i64* %_index_ptr2944
  %_a2945 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2945, i32 0, i32 1, i32 1
  store i64 125, i64* %_index_ptr2947
  %_a2948 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2948, i32 0, i32 1, i32 2
  store i64 120, i64* %_index_ptr2950
  %_a2951 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2951, i32 0, i32 1, i32 3
  store i64 111, i64* %_index_ptr2953
  %_a2954 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2954, i32 0, i32 1, i32 4
  store i64 116, i64* %_index_ptr2956
  %_a2957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2957, i32 0, i32 1, i32 5
  store i64 110, i64* %_index_ptr2959
  %_a2960 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2960, i32 0, i32 1, i32 6
  store i64 117, i64* %_index_ptr2962
  %_a2963 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_index_ptr2965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2963, i32 0, i32 1, i32 7
  store i64 119, i64* %_index_ptr2965
  %_a2966 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_result2967 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2966)
  call void @print_string(i8* %_result2967)
  %_str2969 = getelementptr [2 x i8], [2 x i8]* @_str_arr2970, i32 0, i32 0
  call void @print_string(i8* %_str2969)
  %_a2972 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  call void @bubble_sort({ i64, [0 x i64] }* %_a2972, i64 8)
  %_a2974 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2941
  %_result2975 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2974)
  call void @print_string(i8* %_result2975)
  %_unop2977 = sub i64 0, 1
  ret i64 %_unop2977
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
