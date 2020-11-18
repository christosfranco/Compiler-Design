; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %_a3232, i64 %_s3230, i64 %_b3228) {
  %_a3233 = alloca { i64, [0 x i64] }*
  %_s3231 = alloca i64
  %_b3229 = alloca i64
  %_i3235 = alloca i64
  %_min3240 = alloca i64
  %_mi3242 = alloca i64
  store { i64, [0 x i64] }* %_a3232, { i64, [0 x i64] }** %_a3233
  store i64 %_s3230, i64* %_s3231
  store i64 %_b3228, i64* %_b3229
  %_s3234 = load i64, i64* %_s3231
  store i64 %_s3234, i64* %_i3235
  %_a3236 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_s3237 = load i64, i64* %_s3231
  %_index_ptr3238 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3236, i32 0, i32 1, i64 %_s3237
  %_index3239 = load i64, i64* %_index_ptr3238
  store i64 %_index3239, i64* %_min3240
  %_s3241 = load i64, i64* %_s3231
  store i64 %_s3241, i64* %_mi3242
  br label %_cond3248
_cond3248:
  %_i3243 = load i64, i64* %_i3235
  %_b3244 = load i64, i64* %_b3229
  %_bop3245 = icmp slt i64 %_i3243, %_b3244
  br i1 %_bop3245, label %_body3247, label %_post3246
_body3247:
  %_a3249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_i3250 = load i64, i64* %_i3235
  %_index_ptr3251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3249, i32 0, i32 1, i64 %_i3250
  %_index3252 = load i64, i64* %_index_ptr3251
  %_min3253 = load i64, i64* %_min3240
  %_bop3254 = icmp slt i64 %_index3252, %_min3253
  br i1 %_bop3254, label %_then3262, label %_else3261
_then3262:
  %_a3255 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_i3256 = load i64, i64* %_i3235
  %_index_ptr3257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3255, i32 0, i32 1, i64 %_i3256
  %_index3258 = load i64, i64* %_index_ptr3257
  store i64 %_index3258, i64* %_min3240
  %_i3259 = load i64, i64* %_i3235
  store i64 %_i3259, i64* %_mi3242
  br label %_merge3260
_else3261:
  br label %_merge3260
_merge3260:
  %_i3263 = load i64, i64* %_i3235
  %_bop3264 = add i64 %_i3263, 1
  store i64 %_bop3264, i64* %_i3235
  br label %_cond3248
_post3246:
  %_mi3265 = load i64, i64* %_mi3242
  ret i64 %_mi3265
}

define void @selectionsort({ i64, [0 x i64] }* %_a3196, i64 %_s3194) {
  %_a3197 = alloca { i64, [0 x i64] }*
  %_s3195 = alloca i64
  %_t3198 = alloca i64
  %_mi3199 = alloca i64
  %_i3200 = alloca i64
  store { i64, [0 x i64] }* %_a3196, { i64, [0 x i64] }** %_a3197
  store i64 %_s3194, i64* %_s3195
  store i64 0, i64* %_t3198
  store i64 0, i64* %_mi3199
  store i64 0, i64* %_i3200
  br label %_cond3206
_cond3206:
  %_i3201 = load i64, i64* %_i3200
  %_s3202 = load i64, i64* %_s3195
  %_bop3203 = icmp slt i64 %_i3201, %_s3202
  br i1 %_bop3203, label %_body3205, label %_post3204
_body3205:
  %_s3207 = load i64, i64* %_s3195
  %_i3208 = load i64, i64* %_i3200
  %_a3209 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3197
  %_result3210 = call i64 @getminindex({ i64, [0 x i64] }* %_a3209, i64 %_i3208, i64 %_s3207)
  store i64 %_result3210, i64* %_mi3199
  %_a3211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3197
  %_i3212 = load i64, i64* %_i3200
  %_index_ptr3213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3211, i32 0, i32 1, i64 %_i3212
  %_index3214 = load i64, i64* %_index_ptr3213
  store i64 %_index3214, i64* %_t3198
  %_a3215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3197
  %_i3216 = load i64, i64* %_i3200
  %_index_ptr3217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3215, i32 0, i32 1, i64 %_i3216
  %_a3218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3197
  %_mi3219 = load i64, i64* %_mi3199
  %_index_ptr3220 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3218, i32 0, i32 1, i64 %_mi3219
  %_index3221 = load i64, i64* %_index_ptr3220
  store i64 %_index3221, i64* %_index_ptr3217
  %_a3222 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3197
  %_mi3223 = load i64, i64* %_mi3199
  %_index_ptr3224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3222, i32 0, i32 1, i64 %_mi3223
  %_t3225 = load i64, i64* %_t3198
  store i64 %_t3225, i64* %_index_ptr3224
  %_i3226 = load i64, i64* %_i3200
  %_bop3227 = add i64 %_i3226, 1
  store i64 %_bop3227, i64* %_i3200
  br label %_cond3206
_post3204:
  ret void
}

define i64 @program(i64 %_argc3166, { i64, [0 x i8*] }* %_argv3164) {
  %_argc3167 = alloca i64
  %_argv3165 = alloca { i64, [0 x i8*] }*
  %_ar3178 = alloca { i64, [0 x i64] }*
  %_i3181 = alloca i64
  store i64 %_argc3166, i64* %_argc3167
  store { i64, [0 x i8*] }* %_argv3164, { i64, [0 x i8*] }** %_argv3165
  %_raw_array3168 = call i64* @oat_alloc_array(i64 8)
  %_array3169 = bitcast i64* %_raw_array3168 to { i64, [0 x i64] }*
  %_ind3170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3170
  %_ind3171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3171
  %_ind3172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3172
  %_ind3173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3173
  %_ind3174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3174
  %_ind3175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3175
  %_ind3176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3176
  %_ind3177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3169, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3177
  store { i64, [0 x i64] }* %_array3169, { i64, [0 x i64] }** %_ar3178
  %_ar3179 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3178
  call void @selectionsort({ i64, [0 x i64] }* %_ar3179, i64 8)
  store i64 0, i64* %_i3181
  br label %_cond3186
_cond3186:
  %_i3182 = load i64, i64* %_i3181
  %_bop3183 = icmp slt i64 %_i3182, 8
  br i1 %_bop3183, label %_body3185, label %_post3184
_body3185:
  %_ar3187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3178
  %_i3188 = load i64, i64* %_i3181
  %_index_ptr3189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3187, i32 0, i32 1, i64 %_i3188
  %_index3190 = load i64, i64* %_index_ptr3189
  call void @print_int(i64 %_index3190)
  %_i3192 = load i64, i64* %_i3181
  %_bop3193 = add i64 %_i3192, 1
  store i64 %_bop3193, i64* %_i3181
  br label %_cond3186
_post3184:
  ret i64 0
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
