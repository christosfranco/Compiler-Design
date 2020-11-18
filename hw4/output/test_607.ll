; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3214 = global [2 x i8] c" \00"
@_str_arr3220 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3192, { i64, [0 x i8*] }* %_argv3190) {
  %_argc3193 = alloca i64
  %_argv3191 = alloca { i64, [0 x i8*] }*
  %_i3194 = alloca i64
  %_a3207 = alloca { i64, [0 x i64] }*
  store i64 %_argc3192, i64* %_argc3193
  store { i64, [0 x i8*] }* %_argv3190, { i64, [0 x i8*] }** %_argv3191
  store i64 0, i64* %_i3194
  %_raw_array3195 = call i64* @oat_alloc_array(i64 10)
  %_array3196 = bitcast i64* %_raw_array3195 to { i64, [0 x i64] }*
  %_ind3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3197
  %_ind3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3198
  %_ind3199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3199
  %_ind3200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3200
  %_ind3201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3201
  %_ind3202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3202
  %_ind3203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3203
  %_ind3204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3204
  %_ind3205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3205
  %_ind3206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3196, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3206
  store { i64, [0 x i64] }* %_array3196, { i64, [0 x i64] }** %_a3207
  %_a3208 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3207
  %_result3209 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3208)
  call void @print_string(i8* %_result3209)
  %_a3211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3207
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3211, i64 0, i64 9)
  %_str3213 = getelementptr [2 x i8], [2 x i8]* @_str_arr3214, i32 0, i32 0
  call void @print_string(i8* %_str3213)
  %_a3216 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3207
  %_result3217 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3216)
  call void @print_string(i8* %_result3217)
  %_str3219 = getelementptr [2 x i8], [2 x i8]* @_str_arr3220, i32 0, i32 0
  call void @print_string(i8* %_str3219)
  %_i3222 = load i64, i64* %_i3194
  ret i64 %_i3222
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3163, i64 %_low3161, i64 %_high3159) {
  %_a3164 = alloca { i64, [0 x i64] }*
  %_low3162 = alloca i64
  %_high3160 = alloca i64
  %_mid3165 = alloca i64
  store { i64, [0 x i64] }* %_a3163, { i64, [0 x i64] }** %_a3164
  store i64 %_low3161, i64* %_low3162
  store i64 %_high3159, i64* %_high3160
  store i64 0, i64* %_mid3165
  %_low3166 = load i64, i64* %_low3162
  %_high3167 = load i64, i64* %_high3160
  %_bop3168 = icmp slt i64 %_low3166, %_high3167
  br i1 %_bop3168, label %_then3189, label %_else3188
_then3189:
  %_low3169 = load i64, i64* %_low3162
  %_high3170 = load i64, i64* %_high3160
  %_bop3171 = add i64 %_low3169, %_high3170
  %_bop3172 = lshr i64 %_bop3171, 1
  store i64 %_bop3172, i64* %_mid3165
  %_mid3173 = load i64, i64* %_mid3165
  %_low3174 = load i64, i64* %_low3162
  %_a3175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3164
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3175, i64 %_low3174, i64 %_mid3173)
  %_high3177 = load i64, i64* %_high3160
  %_mid3178 = load i64, i64* %_mid3165
  %_bop3179 = add i64 %_mid3178, 1
  %_a3180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3164
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3180, i64 %_bop3179, i64 %_high3177)
  %_mid3182 = load i64, i64* %_mid3165
  %_high3183 = load i64, i64* %_high3160
  %_low3184 = load i64, i64* %_low3162
  %_a3185 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3164
  call void @merge({ i64, [0 x i64] }* %_a3185, i64 %_low3184, i64 %_high3183, i64 %_mid3182)
  br label %_merge3187
_else3188:
  br label %_merge3187
_merge3187:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a3041, i64 %_low3039, i64 %_high3037, i64 %_mid3035) {
  %_a3042 = alloca { i64, [0 x i64] }*
  %_low3040 = alloca i64
  %_high3038 = alloca i64
  %_mid3036 = alloca i64
  %_i3043 = alloca i64
  %_j3044 = alloca i64
  %_k3045 = alloca i64
  %_c3048 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3041, { i64, [0 x i64] }** %_a3042
  store i64 %_low3039, i64* %_low3040
  store i64 %_high3037, i64* %_high3038
  store i64 %_mid3035, i64* %_mid3036
  store i64 0, i64* %_i3043
  store i64 0, i64* %_j3044
  store i64 0, i64* %_k3045
  %_raw_array3046 = call i64* @oat_alloc_array(i64 50)
  %_array3047 = bitcast i64* %_raw_array3046 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3047, { i64, [0 x i64] }** %_c3048
  %_low3049 = load i64, i64* %_low3040
  store i64 %_low3049, i64* %_i3043
  %_mid3050 = load i64, i64* %_mid3036
  %_bop3051 = add i64 %_mid3050, 1
  store i64 %_bop3051, i64* %_j3044
  %_low3052 = load i64, i64* %_low3040
  store i64 %_low3052, i64* %_k3045
  br label %_cond3062
_cond3062:
  %_i3053 = load i64, i64* %_i3043
  %_mid3054 = load i64, i64* %_mid3036
  %_bop3055 = icmp sle i64 %_i3053, %_mid3054
  %_j3056 = load i64, i64* %_j3044
  %_high3057 = load i64, i64* %_high3038
  %_bop3058 = icmp sle i64 %_j3056, %_high3057
  %_bop3059 = and i1 %_bop3055, %_bop3058
  br i1 %_bop3059, label %_body3061, label %_post3060
_body3061:
  %_a3063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_i3064 = load i64, i64* %_i3043
  %_index_ptr3066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3063, i32 0, i32 1, i64 %_i3064
  %_index3067 = load i64, i64* %_index_ptr3066
  %_a3068 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_j3069 = load i64, i64* %_j3044
  %_index_ptr3071 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3068, i32 0, i32 1, i64 %_j3069
  %_index3072 = load i64, i64* %_index_ptr3071
  %_bop3073 = icmp slt i64 %_index3067, %_index3072
  br i1 %_bop3073, label %_then3102, label %_else3101
_then3102:
  %_c3074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3048
  %_k3075 = load i64, i64* %_k3045
  %_index_ptr3077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3074, i32 0, i32 1, i64 %_k3075
  %_a3078 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_i3079 = load i64, i64* %_i3043
  %_index_ptr3081 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3078, i32 0, i32 1, i64 %_i3079
  %_index3082 = load i64, i64* %_index_ptr3081
  store i64 %_index3082, i64* %_index_ptr3077
  %_k3083 = load i64, i64* %_k3045
  %_bop3084 = add i64 %_k3083, 1
  store i64 %_bop3084, i64* %_k3045
  %_i3085 = load i64, i64* %_i3043
  %_bop3086 = add i64 %_i3085, 1
  store i64 %_bop3086, i64* %_i3043
  br label %_merge3100
_else3101:
  %_c3087 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3048
  %_k3088 = load i64, i64* %_k3045
  %_index_ptr3090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3087, i32 0, i32 1, i64 %_k3088
  %_a3091 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_j3092 = load i64, i64* %_j3044
  %_index_ptr3094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3091, i32 0, i32 1, i64 %_j3092
  %_index3095 = load i64, i64* %_index_ptr3094
  store i64 %_index3095, i64* %_index_ptr3090
  %_k3096 = load i64, i64* %_k3045
  %_bop3097 = add i64 %_k3096, 1
  store i64 %_bop3097, i64* %_k3045
  %_j3098 = load i64, i64* %_j3044
  %_bop3099 = add i64 %_j3098, 1
  store i64 %_bop3099, i64* %_j3044
  br label %_merge3100
_merge3100:
  br label %_cond3062
_post3060:
  br label %_cond3108
_cond3108:
  %_i3103 = load i64, i64* %_i3043
  %_mid3104 = load i64, i64* %_mid3036
  %_bop3105 = icmp sle i64 %_i3103, %_mid3104
  br i1 %_bop3105, label %_body3107, label %_post3106
_body3107:
  %_c3109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3048
  %_k3110 = load i64, i64* %_k3045
  %_index_ptr3112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3109, i32 0, i32 1, i64 %_k3110
  %_a3113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_i3114 = load i64, i64* %_i3043
  %_index_ptr3116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3113, i32 0, i32 1, i64 %_i3114
  %_index3117 = load i64, i64* %_index_ptr3116
  store i64 %_index3117, i64* %_index_ptr3112
  %_k3118 = load i64, i64* %_k3045
  %_bop3119 = add i64 %_k3118, 1
  store i64 %_bop3119, i64* %_k3045
  %_i3120 = load i64, i64* %_i3043
  %_bop3121 = add i64 %_i3120, 1
  store i64 %_bop3121, i64* %_i3043
  br label %_cond3108
_post3106:
  br label %_cond3127
_cond3127:
  %_j3122 = load i64, i64* %_j3044
  %_high3123 = load i64, i64* %_high3038
  %_bop3124 = icmp sle i64 %_j3122, %_high3123
  br i1 %_bop3124, label %_body3126, label %_post3125
_body3126:
  %_c3128 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3048
  %_k3129 = load i64, i64* %_k3045
  %_index_ptr3131 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3128, i32 0, i32 1, i64 %_k3129
  %_a3132 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_j3133 = load i64, i64* %_j3044
  %_index_ptr3135 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3132, i32 0, i32 1, i64 %_j3133
  %_index3136 = load i64, i64* %_index_ptr3135
  store i64 %_index3136, i64* %_index_ptr3131
  %_k3137 = load i64, i64* %_k3045
  %_bop3138 = add i64 %_k3137, 1
  store i64 %_bop3138, i64* %_k3045
  %_j3139 = load i64, i64* %_j3044
  %_bop3140 = add i64 %_j3139, 1
  store i64 %_bop3140, i64* %_j3044
  br label %_cond3127
_post3125:
  %_low3141 = load i64, i64* %_low3040
  store i64 %_low3141, i64* %_i3043
  br label %_cond3147
_cond3147:
  %_i3142 = load i64, i64* %_i3043
  %_k3143 = load i64, i64* %_k3045
  %_bop3144 = icmp slt i64 %_i3142, %_k3143
  br i1 %_bop3144, label %_body3146, label %_post3145
_body3146:
  %_a3148 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3042
  %_i3149 = load i64, i64* %_i3043
  %_index_ptr3151 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3148, i32 0, i32 1, i64 %_i3149
  %_c3152 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3048
  %_i3153 = load i64, i64* %_i3043
  %_index_ptr3155 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3152, i32 0, i32 1, i64 %_i3153
  %_index3156 = load i64, i64* %_index_ptr3155
  store i64 %_index3156, i64* %_index_ptr3151
  %_i3157 = load i64, i64* %_i3043
  %_bop3158 = add i64 %_i3157, 1
  store i64 %_bop3158, i64* %_i3043
  br label %_cond3147
_post3145:
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
