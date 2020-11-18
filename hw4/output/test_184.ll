; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %_a3291, i64 %_s3289, i64 %_b3287) {
  %_a3292 = alloca { i64, [0 x i64] }*
  %_s3290 = alloca i64
  %_b3288 = alloca i64
  %_i3294 = alloca i64
  %_min3300 = alloca i64
  %_mi3302 = alloca i64
  store { i64, [0 x i64] }* %_a3291, { i64, [0 x i64] }** %_a3292
  store i64 %_s3289, i64* %_s3290
  store i64 %_b3287, i64* %_b3288
  %_s3293 = load i64, i64* %_s3290
  store i64 %_s3293, i64* %_i3294
  %_a3295 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_s3296 = load i64, i64* %_s3290
  %_index_ptr3298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3295, i32 0, i32 1, i64 %_s3296
  %_index3299 = load i64, i64* %_index_ptr3298
  store i64 %_index3299, i64* %_min3300
  %_s3301 = load i64, i64* %_s3290
  store i64 %_s3301, i64* %_mi3302
  br label %_cond3308
_cond3308:
  %_i3303 = load i64, i64* %_i3294
  %_b3304 = load i64, i64* %_b3288
  %_bop3305 = icmp slt i64 %_i3303, %_b3304
  br i1 %_bop3305, label %_body3307, label %_post3306
_body3307:
  %_a3309 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_i3310 = load i64, i64* %_i3294
  %_index_ptr3312 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3309, i32 0, i32 1, i64 %_i3310
  %_index3313 = load i64, i64* %_index_ptr3312
  %_min3314 = load i64, i64* %_min3300
  %_bop3315 = icmp slt i64 %_index3313, %_min3314
  br i1 %_bop3315, label %_then3324, label %_else3323
_then3324:
  %_a3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3292
  %_i3317 = load i64, i64* %_i3294
  %_index_ptr3319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3316, i32 0, i32 1, i64 %_i3317
  %_index3320 = load i64, i64* %_index_ptr3319
  store i64 %_index3320, i64* %_min3300
  %_i3321 = load i64, i64* %_i3294
  store i64 %_i3321, i64* %_mi3302
  br label %_merge3322
_else3323:
  br label %_merge3322
_merge3322:
  %_i3325 = load i64, i64* %_i3294
  %_bop3326 = add i64 %_i3325, 1
  store i64 %_bop3326, i64* %_i3294
  br label %_cond3308
_post3306:
  %_mi3327 = load i64, i64* %_mi3302
  ret i64 %_mi3327
}

define void @selectionsort({ i64, [0 x i64] }* %_a3251, i64 %_s3249) {
  %_a3252 = alloca { i64, [0 x i64] }*
  %_s3250 = alloca i64
  %_t3253 = alloca i64
  %_mi3254 = alloca i64
  %_i3255 = alloca i64
  store { i64, [0 x i64] }* %_a3251, { i64, [0 x i64] }** %_a3252
  store i64 %_s3249, i64* %_s3250
  store i64 0, i64* %_t3253
  store i64 0, i64* %_mi3254
  store i64 0, i64* %_i3255
  br label %_cond3261
_cond3261:
  %_i3256 = load i64, i64* %_i3255
  %_s3257 = load i64, i64* %_s3250
  %_bop3258 = icmp slt i64 %_i3256, %_s3257
  br i1 %_bop3258, label %_body3260, label %_post3259
_body3260:
  %_s3262 = load i64, i64* %_s3250
  %_i3263 = load i64, i64* %_i3255
  %_a3264 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3252
  %_result3265 = call i64 @getminindex({ i64, [0 x i64] }* %_a3264, i64 %_i3263, i64 %_s3262)
  store i64 %_result3265, i64* %_mi3254
  %_a3266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3252
  %_i3267 = load i64, i64* %_i3255
  %_index_ptr3269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3266, i32 0, i32 1, i64 %_i3267
  %_index3270 = load i64, i64* %_index_ptr3269
  store i64 %_index3270, i64* %_t3253
  %_a3271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3252
  %_i3272 = load i64, i64* %_i3255
  %_index_ptr3274 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3271, i32 0, i32 1, i64 %_i3272
  %_a3275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3252
  %_mi3276 = load i64, i64* %_mi3254
  %_index_ptr3278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3275, i32 0, i32 1, i64 %_mi3276
  %_index3279 = load i64, i64* %_index_ptr3278
  store i64 %_index3279, i64* %_index_ptr3274
  %_a3280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3252
  %_mi3281 = load i64, i64* %_mi3254
  %_index_ptr3283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3280, i32 0, i32 1, i64 %_mi3281
  %_t3284 = load i64, i64* %_t3253
  store i64 %_t3284, i64* %_index_ptr3283
  %_i3285 = load i64, i64* %_i3255
  %_bop3286 = add i64 %_i3285, 1
  store i64 %_bop3286, i64* %_i3255
  br label %_cond3261
_post3259:
  ret void
}

define i64 @program(i64 %_argc3220, { i64, [0 x i8*] }* %_argv3218) {
  %_argc3221 = alloca i64
  %_argv3219 = alloca { i64, [0 x i8*] }*
  %_ar3232 = alloca { i64, [0 x i64] }*
  %_i3235 = alloca i64
  store i64 %_argc3220, i64* %_argc3221
  store { i64, [0 x i8*] }* %_argv3218, { i64, [0 x i8*] }** %_argv3219
  %_raw_array3222 = call i64* @oat_alloc_array(i64 8)
  %_array3223 = bitcast i64* %_raw_array3222 to { i64, [0 x i64] }*
  %_ind3224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3224
  %_ind3225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3225
  %_ind3226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3226
  %_ind3227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3227
  %_ind3228 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3228
  %_ind3229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3229
  %_ind3230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3230
  %_ind3231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3223, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3231
  store { i64, [0 x i64] }* %_array3223, { i64, [0 x i64] }** %_ar3232
  %_ar3233 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3232
  call void @selectionsort({ i64, [0 x i64] }* %_ar3233, i64 8)
  store i64 0, i64* %_i3235
  br label %_cond3240
_cond3240:
  %_i3236 = load i64, i64* %_i3235
  %_bop3237 = icmp slt i64 %_i3236, 8
  br i1 %_bop3237, label %_body3239, label %_post3238
_body3239:
  %_ar3241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3232
  %_i3242 = load i64, i64* %_i3235
  %_index_ptr3244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3241, i32 0, i32 1, i64 %_i3242
  %_index3245 = load i64, i64* %_index_ptr3244
  call void @print_int(i64 %_index3245)
  %_i3247 = load i64, i64* %_i3235
  %_bop3248 = add i64 %_i3247, 1
  store i64 %_bop3248, i64* %_i3235
  br label %_cond3240
_post3238:
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
