; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str_arr3209 = global [2 x i8] c" \00"
@_str_arr3215 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3187, { i64, [0 x i8*] }* %_argv3185) {
  %_argc3188 = alloca i64
  %_argv3186 = alloca { i64, [0 x i8*] }*
  %_a3201 = alloca { i64, [0 x i64] }*
  %_i3202 = alloca i64
  store i64 %_argc3187, i64* %_argc3188
  store { i64, [0 x i8*] }* %_argv3185, { i64, [0 x i8*] }** %_argv3186
  %_raw_array3189 = call i64* @oat_alloc_array(i64 10)
  %_array3190 = bitcast i64* %_raw_array3189 to { i64, [0 x i64] }*
  %_ind3191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3191
  %_ind3192 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3192
  %_ind3193 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3193
  %_ind3194 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3194
  %_ind3195 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3195
  %_ind3196 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3196
  %_ind3197 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3197
  %_ind3198 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3198
  %_ind3199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3199
  %_ind3200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3190, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3200
  store { i64, [0 x i64] }* %_array3190, { i64, [0 x i64] }** %_a3201
  store i64 0, i64* %_i3202
  %_a3203 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3201
  %_result3204 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3203)
  call void @print_string(i8* %_result3204)
  %_a3206 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3201
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3206, i64 0, i64 9)
  %_str3208 = getelementptr [2 x i8], [2 x i8]* @_str_arr3209, i32 0, i32 0
  call void @print_string(i8* %_str3208)
  %_a3211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3201
  %_result3212 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3211)
  call void @print_string(i8* %_result3212)
  %_str3214 = getelementptr [2 x i8], [2 x i8]* @_str_arr3215, i32 0, i32 0
  call void @print_string(i8* %_str3214)
  %_i3217 = load i64, i64* %_i3202
  ret i64 %_i3217
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3158, i64 %_low3156, i64 %_high3154) {
  %_a3159 = alloca { i64, [0 x i64] }*
  %_low3157 = alloca i64
  %_high3155 = alloca i64
  %_mid3160 = alloca i64
  store { i64, [0 x i64] }* %_a3158, { i64, [0 x i64] }** %_a3159
  store i64 %_low3156, i64* %_low3157
  store i64 %_high3154, i64* %_high3155
  store i64 0, i64* %_mid3160
  %_low3161 = load i64, i64* %_low3157
  %_high3162 = load i64, i64* %_high3155
  %_bop3163 = icmp slt i64 %_low3161, %_high3162
  br i1 %_bop3163, label %_then3184, label %_else3183
_then3184:
  %_low3164 = load i64, i64* %_low3157
  %_high3165 = load i64, i64* %_high3155
  %_bop3166 = add i64 %_low3164, %_high3165
  %_bop3167 = lshr i64 %_bop3166, 1
  store i64 %_bop3167, i64* %_mid3160
  %_mid3168 = load i64, i64* %_mid3160
  %_low3169 = load i64, i64* %_low3157
  %_a3170 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3159
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3170, i64 %_low3169, i64 %_mid3168)
  %_high3172 = load i64, i64* %_high3155
  %_mid3173 = load i64, i64* %_mid3160
  %_bop3174 = add i64 %_mid3173, 1
  %_a3175 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3159
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3175, i64 %_bop3174, i64 %_high3172)
  %_mid3177 = load i64, i64* %_mid3160
  %_high3178 = load i64, i64* %_high3155
  %_low3179 = load i64, i64* %_low3157
  %_a3180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3159
  call void @merge({ i64, [0 x i64] }* %_a3180, i64 %_low3179, i64 %_high3178, i64 %_mid3177)
  br label %_merge3182
_else3183:
  br label %_merge3182
_merge3182:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a3036, i64 %_low3034, i64 %_high3032, i64 %_mid3030) {
  %_a3037 = alloca { i64, [0 x i64] }*
  %_low3035 = alloca i64
  %_high3033 = alloca i64
  %_mid3031 = alloca i64
  %_i3038 = alloca i64
  %_j3039 = alloca i64
  %_k3040 = alloca i64
  %_c3043 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3036, { i64, [0 x i64] }** %_a3037
  store i64 %_low3034, i64* %_low3035
  store i64 %_high3032, i64* %_high3033
  store i64 %_mid3030, i64* %_mid3031
  store i64 0, i64* %_i3038
  store i64 0, i64* %_j3039
  store i64 0, i64* %_k3040
  %_raw_array3041 = call i64* @oat_alloc_array(i64 50)
  %_array3042 = bitcast i64* %_raw_array3041 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3042, { i64, [0 x i64] }** %_c3043
  %_low3044 = load i64, i64* %_low3035
  store i64 %_low3044, i64* %_i3038
  %_mid3045 = load i64, i64* %_mid3031
  %_bop3046 = add i64 %_mid3045, 1
  store i64 %_bop3046, i64* %_j3039
  %_low3047 = load i64, i64* %_low3035
  store i64 %_low3047, i64* %_k3040
  br label %_cond3057
_cond3057:
  %_i3048 = load i64, i64* %_i3038
  %_mid3049 = load i64, i64* %_mid3031
  %_bop3050 = icmp sle i64 %_i3048, %_mid3049
  %_j3051 = load i64, i64* %_j3039
  %_high3052 = load i64, i64* %_high3033
  %_bop3053 = icmp sle i64 %_j3051, %_high3052
  %_bop3054 = and i1 %_bop3050, %_bop3053
  br i1 %_bop3054, label %_body3056, label %_post3055
_body3056:
  %_a3058 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_i3059 = load i64, i64* %_i3038
  %_index_ptr3061 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3058, i32 0, i32 1, i64 %_i3059
  %_index3062 = load i64, i64* %_index_ptr3061
  %_a3063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_j3064 = load i64, i64* %_j3039
  %_index_ptr3066 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3063, i32 0, i32 1, i64 %_j3064
  %_index3067 = load i64, i64* %_index_ptr3066
  %_bop3068 = icmp slt i64 %_index3062, %_index3067
  br i1 %_bop3068, label %_then3097, label %_else3096
_then3097:
  %_c3069 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3043
  %_k3070 = load i64, i64* %_k3040
  %_index_ptr3072 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3069, i32 0, i32 1, i64 %_k3070
  %_a3073 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_i3074 = load i64, i64* %_i3038
  %_index_ptr3076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3073, i32 0, i32 1, i64 %_i3074
  %_index3077 = load i64, i64* %_index_ptr3076
  store i64 %_index3077, i64* %_index_ptr3072
  %_k3078 = load i64, i64* %_k3040
  %_bop3079 = add i64 %_k3078, 1
  store i64 %_bop3079, i64* %_k3040
  %_i3080 = load i64, i64* %_i3038
  %_bop3081 = add i64 %_i3080, 1
  store i64 %_bop3081, i64* %_i3038
  br label %_merge3095
_else3096:
  %_c3082 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3043
  %_k3083 = load i64, i64* %_k3040
  %_index_ptr3085 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3082, i32 0, i32 1, i64 %_k3083
  %_a3086 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_j3087 = load i64, i64* %_j3039
  %_index_ptr3089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3086, i32 0, i32 1, i64 %_j3087
  %_index3090 = load i64, i64* %_index_ptr3089
  store i64 %_index3090, i64* %_index_ptr3085
  %_k3091 = load i64, i64* %_k3040
  %_bop3092 = add i64 %_k3091, 1
  store i64 %_bop3092, i64* %_k3040
  %_j3093 = load i64, i64* %_j3039
  %_bop3094 = add i64 %_j3093, 1
  store i64 %_bop3094, i64* %_j3039
  br label %_merge3095
_merge3095:
  br label %_cond3057
_post3055:
  br label %_cond3103
_cond3103:
  %_i3098 = load i64, i64* %_i3038
  %_mid3099 = load i64, i64* %_mid3031
  %_bop3100 = icmp sle i64 %_i3098, %_mid3099
  br i1 %_bop3100, label %_body3102, label %_post3101
_body3102:
  %_c3104 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3043
  %_k3105 = load i64, i64* %_k3040
  %_index_ptr3107 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3104, i32 0, i32 1, i64 %_k3105
  %_a3108 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_i3109 = load i64, i64* %_i3038
  %_index_ptr3111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3108, i32 0, i32 1, i64 %_i3109
  %_index3112 = load i64, i64* %_index_ptr3111
  store i64 %_index3112, i64* %_index_ptr3107
  %_k3113 = load i64, i64* %_k3040
  %_bop3114 = add i64 %_k3113, 1
  store i64 %_bop3114, i64* %_k3040
  %_i3115 = load i64, i64* %_i3038
  %_bop3116 = add i64 %_i3115, 1
  store i64 %_bop3116, i64* %_i3038
  br label %_cond3103
_post3101:
  br label %_cond3122
_cond3122:
  %_j3117 = load i64, i64* %_j3039
  %_high3118 = load i64, i64* %_high3033
  %_bop3119 = icmp sle i64 %_j3117, %_high3118
  br i1 %_bop3119, label %_body3121, label %_post3120
_body3121:
  %_c3123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3043
  %_k3124 = load i64, i64* %_k3040
  %_index_ptr3126 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3123, i32 0, i32 1, i64 %_k3124
  %_a3127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_j3128 = load i64, i64* %_j3039
  %_index_ptr3130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3127, i32 0, i32 1, i64 %_j3128
  %_index3131 = load i64, i64* %_index_ptr3130
  store i64 %_index3131, i64* %_index_ptr3126
  %_k3132 = load i64, i64* %_k3040
  %_bop3133 = add i64 %_k3132, 1
  store i64 %_bop3133, i64* %_k3040
  %_j3134 = load i64, i64* %_j3039
  %_bop3135 = add i64 %_j3134, 1
  store i64 %_bop3135, i64* %_j3039
  br label %_cond3122
_post3120:
  %_low3136 = load i64, i64* %_low3035
  store i64 %_low3136, i64* %_i3038
  br label %_cond3142
_cond3142:
  %_i3137 = load i64, i64* %_i3038
  %_k3138 = load i64, i64* %_k3040
  %_bop3139 = icmp slt i64 %_i3137, %_k3138
  br i1 %_bop3139, label %_body3141, label %_post3140
_body3141:
  %_a3143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3037
  %_i3144 = load i64, i64* %_i3038
  %_index_ptr3146 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3143, i32 0, i32 1, i64 %_i3144
  %_c3147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3043
  %_i3148 = load i64, i64* %_i3038
  %_index_ptr3150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3147, i32 0, i32 1, i64 %_i3148
  %_index3151 = load i64, i64* %_index_ptr3150
  store i64 %_index3151, i64* %_index_ptr3146
  %_i3152 = load i64, i64* %_i3038
  %_bop3153 = add i64 %_i3152, 1
  store i64 %_bop3153, i64* %_i3038
  br label %_cond3142
_post3140:
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
