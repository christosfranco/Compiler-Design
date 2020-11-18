; generated from: oatprograms/msort.oat
target triple = "x86_64-unknown-linux"
@_str_arr3217 = global [2 x i8] c" \00"
@_str_arr3223 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3195, { i64, [0 x i8*] }* %_argv3193) {
  %_argc3196 = alloca i64
  %_argv3194 = alloca { i64, [0 x i8*] }*
  %_i3197 = alloca i64
  %_a3210 = alloca { i64, [0 x i64] }*
  store i64 %_argc3195, i64* %_argc3196
  store { i64, [0 x i8*] }* %_argv3193, { i64, [0 x i8*] }** %_argv3194
  store i64 0, i64* %_i3197
  %_raw_array3198 = call i64* @oat_alloc_array(i64 10)
  %_array3199 = bitcast i64* %_raw_array3198 to { i64, [0 x i64] }*
  %_ind3200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3200
  %_ind3201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3201
  %_ind3202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3202
  %_ind3203 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3203
  %_ind3204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3204
  %_ind3205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3205
  %_ind3206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3206
  %_ind3207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3207
  %_ind3208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3208
  %_ind3209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3199, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3209
  store { i64, [0 x i64] }* %_array3199, { i64, [0 x i64] }** %_a3210
  %_a3211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3210
  %_result3212 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3211)
  call void @print_string(i8* %_result3212)
  %_a3214 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3210
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3214, i64 0, i64 9)
  %_str3216 = getelementptr [2 x i8], [2 x i8]* @_str_arr3217, i32 0, i32 0
  call void @print_string(i8* %_str3216)
  %_a3219 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3210
  %_result3220 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3219)
  call void @print_string(i8* %_result3220)
  %_str3222 = getelementptr [2 x i8], [2 x i8]* @_str_arr3223, i32 0, i32 0
  call void @print_string(i8* %_str3222)
  %_i3225 = load i64, i64* %_i3197
  ret i64 %_i3225
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3166, i64 %_low3164, i64 %_high3162) {
  %_a3167 = alloca { i64, [0 x i64] }*
  %_low3165 = alloca i64
  %_high3163 = alloca i64
  %_mid3168 = alloca i64
  store { i64, [0 x i64] }* %_a3166, { i64, [0 x i64] }** %_a3167
  store i64 %_low3164, i64* %_low3165
  store i64 %_high3162, i64* %_high3163
  store i64 0, i64* %_mid3168
  %_low3169 = load i64, i64* %_low3165
  %_high3170 = load i64, i64* %_high3163
  %_bop3171 = icmp slt i64 %_low3169, %_high3170
  br i1 %_bop3171, label %_then3192, label %_else3191
_then3192:
  %_low3172 = load i64, i64* %_low3165
  %_high3173 = load i64, i64* %_high3163
  %_bop3174 = add i64 %_low3172, %_high3173
  %_bop3175 = lshr i64 %_bop3174, 1
  store i64 %_bop3175, i64* %_mid3168
  %_mid3176 = load i64, i64* %_mid3168
  %_low3177 = load i64, i64* %_low3165
  %_a3178 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3167
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3178, i64 %_low3177, i64 %_mid3176)
  %_high3180 = load i64, i64* %_high3163
  %_mid3181 = load i64, i64* %_mid3168
  %_bop3182 = add i64 %_mid3181, 1
  %_a3183 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3167
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3183, i64 %_bop3182, i64 %_high3180)
  %_mid3185 = load i64, i64* %_mid3168
  %_high3186 = load i64, i64* %_high3163
  %_low3187 = load i64, i64* %_low3165
  %_a3188 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3167
  call void @merge({ i64, [0 x i64] }* %_a3188, i64 %_low3187, i64 %_high3186, i64 %_mid3185)
  br label %_merge3190
_else3191:
  br label %_merge3190
_merge3190:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a3044, i64 %_low3042, i64 %_high3040, i64 %_mid3038) {
  %_a3045 = alloca { i64, [0 x i64] }*
  %_low3043 = alloca i64
  %_high3041 = alloca i64
  %_mid3039 = alloca i64
  %_i3046 = alloca i64
  %_j3047 = alloca i64
  %_k3048 = alloca i64
  %_c3051 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3044, { i64, [0 x i64] }** %_a3045
  store i64 %_low3042, i64* %_low3043
  store i64 %_high3040, i64* %_high3041
  store i64 %_mid3038, i64* %_mid3039
  store i64 0, i64* %_i3046
  store i64 0, i64* %_j3047
  store i64 0, i64* %_k3048
  %_raw_array3049 = call i64* @oat_alloc_array(i64 50)
  %_array3050 = bitcast i64* %_raw_array3049 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3050, { i64, [0 x i64] }** %_c3051
  %_low3052 = load i64, i64* %_low3043
  store i64 %_low3052, i64* %_i3046
  %_mid3053 = load i64, i64* %_mid3039
  %_bop3054 = add i64 %_mid3053, 1
  store i64 %_bop3054, i64* %_j3047
  %_low3055 = load i64, i64* %_low3043
  store i64 %_low3055, i64* %_k3048
  br label %_cond3065
_cond3065:
  %_i3056 = load i64, i64* %_i3046
  %_mid3057 = load i64, i64* %_mid3039
  %_bop3058 = icmp sle i64 %_i3056, %_mid3057
  %_j3059 = load i64, i64* %_j3047
  %_high3060 = load i64, i64* %_high3041
  %_bop3061 = icmp sle i64 %_j3059, %_high3060
  %_bop3062 = and i1 %_bop3058, %_bop3061
  br i1 %_bop3062, label %_body3064, label %_post3063
_body3064:
  %_a3066 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_i3067 = load i64, i64* %_i3046
  %_index_ptr3069 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3066, i32 0, i32 1, i64 %_i3067
  %_index3070 = load i64, i64* %_index_ptr3069
  %_a3071 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_j3072 = load i64, i64* %_j3047
  %_index_ptr3074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3071, i32 0, i32 1, i64 %_j3072
  %_index3075 = load i64, i64* %_index_ptr3074
  %_bop3076 = icmp slt i64 %_index3070, %_index3075
  br i1 %_bop3076, label %_then3105, label %_else3104
_then3105:
  %_c3077 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3051
  %_k3078 = load i64, i64* %_k3048
  %_index_ptr3080 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3077, i32 0, i32 1, i64 %_k3078
  %_a3081 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_i3082 = load i64, i64* %_i3046
  %_index_ptr3084 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3081, i32 0, i32 1, i64 %_i3082
  %_index3085 = load i64, i64* %_index_ptr3084
  store i64 %_index3085, i64* %_index_ptr3080
  %_k3086 = load i64, i64* %_k3048
  %_bop3087 = add i64 %_k3086, 1
  store i64 %_bop3087, i64* %_k3048
  %_i3088 = load i64, i64* %_i3046
  %_bop3089 = add i64 %_i3088, 1
  store i64 %_bop3089, i64* %_i3046
  br label %_merge3103
_else3104:
  %_c3090 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3051
  %_k3091 = load i64, i64* %_k3048
  %_index_ptr3093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3090, i32 0, i32 1, i64 %_k3091
  %_a3094 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_j3095 = load i64, i64* %_j3047
  %_index_ptr3097 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3094, i32 0, i32 1, i64 %_j3095
  %_index3098 = load i64, i64* %_index_ptr3097
  store i64 %_index3098, i64* %_index_ptr3093
  %_k3099 = load i64, i64* %_k3048
  %_bop3100 = add i64 %_k3099, 1
  store i64 %_bop3100, i64* %_k3048
  %_j3101 = load i64, i64* %_j3047
  %_bop3102 = add i64 %_j3101, 1
  store i64 %_bop3102, i64* %_j3047
  br label %_merge3103
_merge3103:
  br label %_cond3065
_post3063:
  br label %_cond3111
_cond3111:
  %_i3106 = load i64, i64* %_i3046
  %_mid3107 = load i64, i64* %_mid3039
  %_bop3108 = icmp sle i64 %_i3106, %_mid3107
  br i1 %_bop3108, label %_body3110, label %_post3109
_body3110:
  %_c3112 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3051
  %_k3113 = load i64, i64* %_k3048
  %_index_ptr3115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3112, i32 0, i32 1, i64 %_k3113
  %_a3116 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_i3117 = load i64, i64* %_i3046
  %_index_ptr3119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3116, i32 0, i32 1, i64 %_i3117
  %_index3120 = load i64, i64* %_index_ptr3119
  store i64 %_index3120, i64* %_index_ptr3115
  %_k3121 = load i64, i64* %_k3048
  %_bop3122 = add i64 %_k3121, 1
  store i64 %_bop3122, i64* %_k3048
  %_i3123 = load i64, i64* %_i3046
  %_bop3124 = add i64 %_i3123, 1
  store i64 %_bop3124, i64* %_i3046
  br label %_cond3111
_post3109:
  br label %_cond3130
_cond3130:
  %_j3125 = load i64, i64* %_j3047
  %_high3126 = load i64, i64* %_high3041
  %_bop3127 = icmp sle i64 %_j3125, %_high3126
  br i1 %_bop3127, label %_body3129, label %_post3128
_body3129:
  %_c3131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3051
  %_k3132 = load i64, i64* %_k3048
  %_index_ptr3134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3131, i32 0, i32 1, i64 %_k3132
  %_a3135 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_j3136 = load i64, i64* %_j3047
  %_index_ptr3138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3135, i32 0, i32 1, i64 %_j3136
  %_index3139 = load i64, i64* %_index_ptr3138
  store i64 %_index3139, i64* %_index_ptr3134
  %_k3140 = load i64, i64* %_k3048
  %_bop3141 = add i64 %_k3140, 1
  store i64 %_bop3141, i64* %_k3048
  %_j3142 = load i64, i64* %_j3047
  %_bop3143 = add i64 %_j3142, 1
  store i64 %_bop3143, i64* %_j3047
  br label %_cond3130
_post3128:
  %_low3144 = load i64, i64* %_low3043
  store i64 %_low3144, i64* %_i3046
  br label %_cond3150
_cond3150:
  %_i3145 = load i64, i64* %_i3046
  %_k3146 = load i64, i64* %_k3048
  %_bop3147 = icmp slt i64 %_i3145, %_k3146
  br i1 %_bop3147, label %_body3149, label %_post3148
_body3149:
  %_a3151 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3045
  %_i3152 = load i64, i64* %_i3046
  %_index_ptr3154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3151, i32 0, i32 1, i64 %_i3152
  %_c3155 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3051
  %_i3156 = load i64, i64* %_i3046
  %_index_ptr3158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3155, i32 0, i32 1, i64 %_i3156
  %_index3159 = load i64, i64* %_index_ptr3158
  store i64 %_index3159, i64* %_index_ptr3154
  %_i3160 = load i64, i64* %_i3046
  %_bop3161 = add i64 %_i3160, 1
  store i64 %_bop3161, i64* %_i3046
  br label %_cond3150
_post3148:
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
