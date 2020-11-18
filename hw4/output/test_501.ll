; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str_arr3402 = global [2 x i8] c" \00"
@_str_arr3408 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3380, { i64, [0 x i8*] }* %_argv3378) {
  %_argc3381 = alloca i64
  %_argv3379 = alloca { i64, [0 x i8*] }*
  %_a3394 = alloca { i64, [0 x i64] }*
  %_i3395 = alloca i64
  store i64 %_argc3380, i64* %_argc3381
  store { i64, [0 x i8*] }* %_argv3378, { i64, [0 x i8*] }** %_argv3379
  %_raw_array3382 = call i64* @oat_alloc_array(i64 10)
  %_array3383 = bitcast i64* %_raw_array3382 to { i64, [0 x i64] }*
  %_ind3384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3384
  %_ind3385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3385
  %_ind3386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3386
  %_ind3387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3387
  %_ind3388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3388
  %_ind3389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3389
  %_ind3390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3390
  %_ind3391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3391
  %_ind3392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3392
  %_ind3393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3383, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3393
  store { i64, [0 x i64] }* %_array3383, { i64, [0 x i64] }** %_a3394
  store i64 0, i64* %_i3395
  %_a3396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3394
  %_result3397 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3396)
  call void @print_string(i8* %_result3397)
  %_a3399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3394
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3399, i64 0, i64 9)
  %_str3401 = getelementptr [2 x i8], [2 x i8]* @_str_arr3402, i32 0, i32 0
  call void @print_string(i8* %_str3401)
  %_a3404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3394
  %_result3405 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3404)
  call void @print_string(i8* %_result3405)
  %_str3407 = getelementptr [2 x i8], [2 x i8]* @_str_arr3408, i32 0, i32 0
  call void @print_string(i8* %_str3407)
  %_i3410 = load i64, i64* %_i3395
  ret i64 %_i3410
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3351, i64 %_low3349, i64 %_high3347) {
  %_a3352 = alloca { i64, [0 x i64] }*
  %_low3350 = alloca i64
  %_high3348 = alloca i64
  %_mid3353 = alloca i64
  store { i64, [0 x i64] }* %_a3351, { i64, [0 x i64] }** %_a3352
  store i64 %_low3349, i64* %_low3350
  store i64 %_high3347, i64* %_high3348
  store i64 0, i64* %_mid3353
  %_low3354 = load i64, i64* %_low3350
  %_high3355 = load i64, i64* %_high3348
  %_bop3356 = icmp slt i64 %_low3354, %_high3355
  br i1 %_bop3356, label %_then3377, label %_else3376
_then3377:
  %_low3357 = load i64, i64* %_low3350
  %_high3358 = load i64, i64* %_high3348
  %_bop3359 = add i64 %_low3357, %_high3358
  %_bop3360 = lshr i64 %_bop3359, 1
  store i64 %_bop3360, i64* %_mid3353
  %_mid3361 = load i64, i64* %_mid3353
  %_low3362 = load i64, i64* %_low3350
  %_a3363 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3352
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3363, i64 %_low3362, i64 %_mid3361)
  %_high3365 = load i64, i64* %_high3348
  %_mid3366 = load i64, i64* %_mid3353
  %_bop3367 = add i64 %_mid3366, 1
  %_a3368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3352
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3368, i64 %_bop3367, i64 %_high3365)
  %_mid3370 = load i64, i64* %_mid3353
  %_high3371 = load i64, i64* %_high3348
  %_low3372 = load i64, i64* %_low3350
  %_a3373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3352
  call void @merge({ i64, [0 x i64] }* %_a3373, i64 %_low3372, i64 %_high3371, i64 %_mid3370)
  br label %_merge3375
_else3376:
  br label %_merge3375
_merge3375:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a3229, i64 %_low3227, i64 %_high3225, i64 %_mid3223) {
  %_a3230 = alloca { i64, [0 x i64] }*
  %_low3228 = alloca i64
  %_high3226 = alloca i64
  %_mid3224 = alloca i64
  %_i3231 = alloca i64
  %_j3232 = alloca i64
  %_k3233 = alloca i64
  %_c3236 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3229, { i64, [0 x i64] }** %_a3230
  store i64 %_low3227, i64* %_low3228
  store i64 %_high3225, i64* %_high3226
  store i64 %_mid3223, i64* %_mid3224
  store i64 0, i64* %_i3231
  store i64 0, i64* %_j3232
  store i64 0, i64* %_k3233
  %_raw_array3234 = call i64* @oat_alloc_array(i64 50)
  %_array3235 = bitcast i64* %_raw_array3234 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3235, { i64, [0 x i64] }** %_c3236
  %_low3237 = load i64, i64* %_low3228
  store i64 %_low3237, i64* %_i3231
  %_mid3238 = load i64, i64* %_mid3224
  %_bop3239 = add i64 %_mid3238, 1
  store i64 %_bop3239, i64* %_j3232
  %_low3240 = load i64, i64* %_low3228
  store i64 %_low3240, i64* %_k3233
  br label %_cond3250
_cond3250:
  %_i3241 = load i64, i64* %_i3231
  %_mid3242 = load i64, i64* %_mid3224
  %_bop3243 = icmp sle i64 %_i3241, %_mid3242
  %_j3244 = load i64, i64* %_j3232
  %_high3245 = load i64, i64* %_high3226
  %_bop3246 = icmp sle i64 %_j3244, %_high3245
  %_bop3247 = and i1 %_bop3243, %_bop3246
  br i1 %_bop3247, label %_body3249, label %_post3248
_body3249:
  %_a3251 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_i3252 = load i64, i64* %_i3231
  %_index_ptr3254 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3251, i32 0, i32 1, i64 %_i3252
  %_index3255 = load i64, i64* %_index_ptr3254
  %_a3256 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_j3257 = load i64, i64* %_j3232
  %_index_ptr3259 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3256, i32 0, i32 1, i64 %_j3257
  %_index3260 = load i64, i64* %_index_ptr3259
  %_bop3261 = icmp slt i64 %_index3255, %_index3260
  br i1 %_bop3261, label %_then3290, label %_else3289
_then3290:
  %_c3262 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3236
  %_k3263 = load i64, i64* %_k3233
  %_index_ptr3265 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3262, i32 0, i32 1, i64 %_k3263
  %_a3266 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_i3267 = load i64, i64* %_i3231
  %_index_ptr3269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3266, i32 0, i32 1, i64 %_i3267
  %_index3270 = load i64, i64* %_index_ptr3269
  store i64 %_index3270, i64* %_index_ptr3265
  %_k3271 = load i64, i64* %_k3233
  %_bop3272 = add i64 %_k3271, 1
  store i64 %_bop3272, i64* %_k3233
  %_i3273 = load i64, i64* %_i3231
  %_bop3274 = add i64 %_i3273, 1
  store i64 %_bop3274, i64* %_i3231
  br label %_merge3288
_else3289:
  %_c3275 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3236
  %_k3276 = load i64, i64* %_k3233
  %_index_ptr3278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3275, i32 0, i32 1, i64 %_k3276
  %_a3279 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_j3280 = load i64, i64* %_j3232
  %_index_ptr3282 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3279, i32 0, i32 1, i64 %_j3280
  %_index3283 = load i64, i64* %_index_ptr3282
  store i64 %_index3283, i64* %_index_ptr3278
  %_k3284 = load i64, i64* %_k3233
  %_bop3285 = add i64 %_k3284, 1
  store i64 %_bop3285, i64* %_k3233
  %_j3286 = load i64, i64* %_j3232
  %_bop3287 = add i64 %_j3286, 1
  store i64 %_bop3287, i64* %_j3232
  br label %_merge3288
_merge3288:
  br label %_cond3250
_post3248:
  br label %_cond3296
_cond3296:
  %_i3291 = load i64, i64* %_i3231
  %_mid3292 = load i64, i64* %_mid3224
  %_bop3293 = icmp sle i64 %_i3291, %_mid3292
  br i1 %_bop3293, label %_body3295, label %_post3294
_body3295:
  %_c3297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3236
  %_k3298 = load i64, i64* %_k3233
  %_index_ptr3300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3297, i32 0, i32 1, i64 %_k3298
  %_a3301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_i3302 = load i64, i64* %_i3231
  %_index_ptr3304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3301, i32 0, i32 1, i64 %_i3302
  %_index3305 = load i64, i64* %_index_ptr3304
  store i64 %_index3305, i64* %_index_ptr3300
  %_k3306 = load i64, i64* %_k3233
  %_bop3307 = add i64 %_k3306, 1
  store i64 %_bop3307, i64* %_k3233
  %_i3308 = load i64, i64* %_i3231
  %_bop3309 = add i64 %_i3308, 1
  store i64 %_bop3309, i64* %_i3231
  br label %_cond3296
_post3294:
  br label %_cond3315
_cond3315:
  %_j3310 = load i64, i64* %_j3232
  %_high3311 = load i64, i64* %_high3226
  %_bop3312 = icmp sle i64 %_j3310, %_high3311
  br i1 %_bop3312, label %_body3314, label %_post3313
_body3314:
  %_c3316 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3236
  %_k3317 = load i64, i64* %_k3233
  %_index_ptr3319 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3316, i32 0, i32 1, i64 %_k3317
  %_a3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_j3321 = load i64, i64* %_j3232
  %_index_ptr3323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3320, i32 0, i32 1, i64 %_j3321
  %_index3324 = load i64, i64* %_index_ptr3323
  store i64 %_index3324, i64* %_index_ptr3319
  %_k3325 = load i64, i64* %_k3233
  %_bop3326 = add i64 %_k3325, 1
  store i64 %_bop3326, i64* %_k3233
  %_j3327 = load i64, i64* %_j3232
  %_bop3328 = add i64 %_j3327, 1
  store i64 %_bop3328, i64* %_j3232
  br label %_cond3315
_post3313:
  %_low3329 = load i64, i64* %_low3228
  store i64 %_low3329, i64* %_i3231
  br label %_cond3335
_cond3335:
  %_i3330 = load i64, i64* %_i3231
  %_k3331 = load i64, i64* %_k3233
  %_bop3332 = icmp slt i64 %_i3330, %_k3331
  br i1 %_bop3332, label %_body3334, label %_post3333
_body3334:
  %_a3336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3230
  %_i3337 = load i64, i64* %_i3231
  %_index_ptr3339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3336, i32 0, i32 1, i64 %_i3337
  %_c3340 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3236
  %_i3341 = load i64, i64* %_i3231
  %_index_ptr3343 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3340, i32 0, i32 1, i64 %_i3341
  %_index3344 = load i64, i64* %_index_ptr3343
  store i64 %_index3344, i64* %_index_ptr3339
  %_i3345 = load i64, i64* %_i3231
  %_bop3346 = add i64 %_i3345, 1
  store i64 %_bop3346, i64* %_i3231
  br label %_cond3335
_post3333:
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
