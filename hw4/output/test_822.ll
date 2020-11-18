; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str_arr3155 = global [2 x i8] c" \00"
@_str_arr3161 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3133, { i64, [0 x i8*] }* %_argv3131) {
  %_argc3134 = alloca i64
  %_argv3132 = alloca { i64, [0 x i8*] }*
  %_a3147 = alloca { i64, [0 x i64] }*
  %_i3148 = alloca i64
  store i64 %_argc3133, i64* %_argc3134
  store { i64, [0 x i8*] }* %_argv3131, { i64, [0 x i8*] }** %_argv3132
  %_raw_array3135 = call i64* @oat_alloc_array(i64 10)
  %_array3136 = bitcast i64* %_raw_array3135 to { i64, [0 x i64] }*
  %_ind3137 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3137
  %_ind3138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3138
  %_ind3139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3139
  %_ind3140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3140
  %_ind3141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3141
  %_ind3142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3142
  %_ind3143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3143
  %_ind3144 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3144
  %_ind3145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3145
  %_ind3146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3136, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3146
  store { i64, [0 x i64] }* %_array3136, { i64, [0 x i64] }** %_a3147
  store i64 0, i64* %_i3148
  %_a3149 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3147
  %_result3150 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3149)
  call void @print_string(i8* %_result3150)
  %_a3152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3147
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3152, i64 0, i64 9)
  %_str3154 = getelementptr [2 x i8], [2 x i8]* @_str_arr3155, i32 0, i32 0
  call void @print_string(i8* %_str3154)
  %_a3157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3147
  %_result3158 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3157)
  call void @print_string(i8* %_result3158)
  %_str3160 = getelementptr [2 x i8], [2 x i8]* @_str_arr3161, i32 0, i32 0
  call void @print_string(i8* %_str3160)
  %_i3163 = load i64, i64* %_i3148
  ret i64 %_i3163
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3104, i64 %_low3102, i64 %_high3100) {
  %_a3105 = alloca { i64, [0 x i64] }*
  %_low3103 = alloca i64
  %_high3101 = alloca i64
  %_mid3106 = alloca i64
  store { i64, [0 x i64] }* %_a3104, { i64, [0 x i64] }** %_a3105
  store i64 %_low3102, i64* %_low3103
  store i64 %_high3100, i64* %_high3101
  store i64 0, i64* %_mid3106
  %_low3107 = load i64, i64* %_low3103
  %_high3108 = load i64, i64* %_high3101
  %_bop3109 = icmp slt i64 %_low3107, %_high3108
  br i1 %_bop3109, label %_then3130, label %_else3129
_then3130:
  %_low3110 = load i64, i64* %_low3103
  %_high3111 = load i64, i64* %_high3101
  %_bop3112 = add i64 %_low3110, %_high3111
  %_bop3113 = lshr i64 %_bop3112, 1
  store i64 %_bop3113, i64* %_mid3106
  %_mid3114 = load i64, i64* %_mid3106
  %_low3115 = load i64, i64* %_low3103
  %_a3116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3116, i64 %_low3115, i64 %_mid3114)
  %_high3118 = load i64, i64* %_high3101
  %_mid3119 = load i64, i64* %_mid3106
  %_bop3120 = add i64 %_mid3119, 1
  %_a3121 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3121, i64 %_bop3120, i64 %_high3118)
  %_mid3123 = load i64, i64* %_mid3106
  %_high3124 = load i64, i64* %_high3101
  %_low3125 = load i64, i64* %_low3103
  %_a3126 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3105
  call void @merge({ i64, [0 x i64] }* %_a3126, i64 %_low3125, i64 %_high3124, i64 %_mid3123)
  br label %_merge3128
_else3129:
  br label %_merge3128
_merge3128:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a2994, i64 %_low2992, i64 %_high2990, i64 %_mid2988) {
  %_a2995 = alloca { i64, [0 x i64] }*
  %_low2993 = alloca i64
  %_high2991 = alloca i64
  %_mid2989 = alloca i64
  %_i2996 = alloca i64
  %_j2997 = alloca i64
  %_k2998 = alloca i64
  %_c3001 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a2994, { i64, [0 x i64] }** %_a2995
  store i64 %_low2992, i64* %_low2993
  store i64 %_high2990, i64* %_high2991
  store i64 %_mid2988, i64* %_mid2989
  store i64 0, i64* %_i2996
  store i64 0, i64* %_j2997
  store i64 0, i64* %_k2998
  %_raw_array2999 = call i64* @oat_alloc_array(i64 50)
  %_array3000 = bitcast i64* %_raw_array2999 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3000, { i64, [0 x i64] }** %_c3001
  %_low3002 = load i64, i64* %_low2993
  store i64 %_low3002, i64* %_i2996
  %_mid3003 = load i64, i64* %_mid2989
  %_bop3004 = add i64 %_mid3003, 1
  store i64 %_bop3004, i64* %_j2997
  %_low3005 = load i64, i64* %_low2993
  store i64 %_low3005, i64* %_k2998
  br label %_cond3015
_cond3015:
  %_i3006 = load i64, i64* %_i2996
  %_mid3007 = load i64, i64* %_mid2989
  %_bop3008 = icmp sle i64 %_i3006, %_mid3007
  %_j3009 = load i64, i64* %_j2997
  %_high3010 = load i64, i64* %_high2991
  %_bop3011 = icmp sle i64 %_j3009, %_high3010
  %_bop3012 = and i1 %_bop3008, %_bop3011
  br i1 %_bop3012, label %_body3014, label %_post3013
_body3014:
  %_a3016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_i3017 = load i64, i64* %_i2996
  %_index_ptr3018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3016, i32 0, i32 1, i64 %_i3017
  %_index3019 = load i64, i64* %_index_ptr3018
  %_a3020 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_j3021 = load i64, i64* %_j2997
  %_index_ptr3022 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3020, i32 0, i32 1, i64 %_j3021
  %_index3023 = load i64, i64* %_index_ptr3022
  %_bop3024 = icmp slt i64 %_index3019, %_index3023
  br i1 %_bop3024, label %_then3049, label %_else3048
_then3049:
  %_c3025 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3001
  %_k3026 = load i64, i64* %_k2998
  %_index_ptr3027 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3025, i32 0, i32 1, i64 %_k3026
  %_a3028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_i3029 = load i64, i64* %_i2996
  %_index_ptr3030 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3028, i32 0, i32 1, i64 %_i3029
  %_index3031 = load i64, i64* %_index_ptr3030
  store i64 %_index3031, i64* %_index_ptr3027
  %_k3032 = load i64, i64* %_k2998
  %_bop3033 = add i64 %_k3032, 1
  store i64 %_bop3033, i64* %_k2998
  %_i3034 = load i64, i64* %_i2996
  %_bop3035 = add i64 %_i3034, 1
  store i64 %_bop3035, i64* %_i2996
  br label %_merge3047
_else3048:
  %_c3036 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3001
  %_k3037 = load i64, i64* %_k2998
  %_index_ptr3038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3036, i32 0, i32 1, i64 %_k3037
  %_a3039 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_j3040 = load i64, i64* %_j2997
  %_index_ptr3041 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3039, i32 0, i32 1, i64 %_j3040
  %_index3042 = load i64, i64* %_index_ptr3041
  store i64 %_index3042, i64* %_index_ptr3038
  %_k3043 = load i64, i64* %_k2998
  %_bop3044 = add i64 %_k3043, 1
  store i64 %_bop3044, i64* %_k2998
  %_j3045 = load i64, i64* %_j2997
  %_bop3046 = add i64 %_j3045, 1
  store i64 %_bop3046, i64* %_j2997
  br label %_merge3047
_merge3047:
  br label %_cond3015
_post3013:
  br label %_cond3055
_cond3055:
  %_i3050 = load i64, i64* %_i2996
  %_mid3051 = load i64, i64* %_mid2989
  %_bop3052 = icmp sle i64 %_i3050, %_mid3051
  br i1 %_bop3052, label %_body3054, label %_post3053
_body3054:
  %_c3056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3001
  %_k3057 = load i64, i64* %_k2998
  %_index_ptr3058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3056, i32 0, i32 1, i64 %_k3057
  %_a3059 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_i3060 = load i64, i64* %_i2996
  %_index_ptr3061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3059, i32 0, i32 1, i64 %_i3060
  %_index3062 = load i64, i64* %_index_ptr3061
  store i64 %_index3062, i64* %_index_ptr3058
  %_k3063 = load i64, i64* %_k2998
  %_bop3064 = add i64 %_k3063, 1
  store i64 %_bop3064, i64* %_k2998
  %_i3065 = load i64, i64* %_i2996
  %_bop3066 = add i64 %_i3065, 1
  store i64 %_bop3066, i64* %_i2996
  br label %_cond3055
_post3053:
  br label %_cond3072
_cond3072:
  %_j3067 = load i64, i64* %_j2997
  %_high3068 = load i64, i64* %_high2991
  %_bop3069 = icmp sle i64 %_j3067, %_high3068
  br i1 %_bop3069, label %_body3071, label %_post3070
_body3071:
  %_c3073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3001
  %_k3074 = load i64, i64* %_k2998
  %_index_ptr3075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3073, i32 0, i32 1, i64 %_k3074
  %_a3076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_j3077 = load i64, i64* %_j2997
  %_index_ptr3078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3076, i32 0, i32 1, i64 %_j3077
  %_index3079 = load i64, i64* %_index_ptr3078
  store i64 %_index3079, i64* %_index_ptr3075
  %_k3080 = load i64, i64* %_k2998
  %_bop3081 = add i64 %_k3080, 1
  store i64 %_bop3081, i64* %_k2998
  %_j3082 = load i64, i64* %_j2997
  %_bop3083 = add i64 %_j3082, 1
  store i64 %_bop3083, i64* %_j2997
  br label %_cond3072
_post3070:
  %_low3084 = load i64, i64* %_low2993
  store i64 %_low3084, i64* %_i2996
  br label %_cond3090
_cond3090:
  %_i3085 = load i64, i64* %_i2996
  %_k3086 = load i64, i64* %_k2998
  %_bop3087 = icmp slt i64 %_i3085, %_k3086
  br i1 %_bop3087, label %_body3089, label %_post3088
_body3089:
  %_a3091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2995
  %_i3092 = load i64, i64* %_i2996
  %_index_ptr3093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3091, i32 0, i32 1, i64 %_i3092
  %_c3094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3001
  %_i3095 = load i64, i64* %_i2996
  %_index_ptr3096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3094, i32 0, i32 1, i64 %_i3095
  %_index3097 = load i64, i64* %_index_ptr3096
  store i64 %_index3097, i64* %_index_ptr3093
  %_i3098 = load i64, i64* %_i2996
  %_bop3099 = add i64 %_i3098, 1
  store i64 %_bop3099, i64* %_i2996
  br label %_cond3090
_post3088:
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
