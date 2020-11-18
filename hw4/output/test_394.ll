; generated from: oatprograms/msort2.oat
target triple = "x86_64-unknown-linux"
@_str_arr3405 = global [2 x i8] c" \00"
@_str_arr3411 = global [2 x i8] c" \00"

define i64 @program(i64 %_argc3383, { i64, [0 x i8*] }* %_argv3381) {
  %_argc3384 = alloca i64
  %_argv3382 = alloca { i64, [0 x i8*] }*
  %_a3397 = alloca { i64, [0 x i64] }*
  %_i3398 = alloca i64
  store i64 %_argc3383, i64* %_argc3384
  store { i64, [0 x i8*] }* %_argv3381, { i64, [0 x i8*] }** %_argv3382
  %_raw_array3385 = call i64* @oat_alloc_array(i64 10)
  %_array3386 = bitcast i64* %_raw_array3385 to { i64, [0 x i64] }*
  %_ind3387 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind3387
  %_ind3388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind3388
  %_ind3389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind3389
  %_ind3390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind3390
  %_ind3391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind3391
  %_ind3392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind3392
  %_ind3393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind3393
  %_ind3394 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind3394
  %_ind3395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind3395
  %_ind3396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3386, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind3396
  store { i64, [0 x i64] }* %_array3386, { i64, [0 x i64] }** %_a3397
  store i64 0, i64* %_i3398
  %_a3399 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3397
  %_result3400 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3399)
  call void @print_string(i8* %_result3400)
  %_a3402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3397
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3402, i64 0, i64 9)
  %_str3404 = getelementptr [2 x i8], [2 x i8]* @_str_arr3405, i32 0, i32 0
  call void @print_string(i8* %_str3404)
  %_a3407 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3397
  %_result3408 = call i8* @string_of_array({ i64, [0 x i64] }* %_a3407)
  call void @print_string(i8* %_result3408)
  %_str3410 = getelementptr [2 x i8], [2 x i8]* @_str_arr3411, i32 0, i32 0
  call void @print_string(i8* %_str3410)
  %_i3413 = load i64, i64* %_i3398
  ret i64 %_i3413
}

define void @oat_mergesort({ i64, [0 x i64] }* %_a3354, i64 %_low3352, i64 %_high3350) {
  %_a3355 = alloca { i64, [0 x i64] }*
  %_low3353 = alloca i64
  %_high3351 = alloca i64
  %_mid3356 = alloca i64
  store { i64, [0 x i64] }* %_a3354, { i64, [0 x i64] }** %_a3355
  store i64 %_low3352, i64* %_low3353
  store i64 %_high3350, i64* %_high3351
  store i64 0, i64* %_mid3356
  %_low3357 = load i64, i64* %_low3353
  %_high3358 = load i64, i64* %_high3351
  %_bop3359 = icmp slt i64 %_low3357, %_high3358
  br i1 %_bop3359, label %_then3380, label %_else3379
_then3380:
  %_low3360 = load i64, i64* %_low3353
  %_high3361 = load i64, i64* %_high3351
  %_bop3362 = add i64 %_low3360, %_high3361
  %_bop3363 = lshr i64 %_bop3362, 1
  store i64 %_bop3363, i64* %_mid3356
  %_mid3364 = load i64, i64* %_mid3356
  %_low3365 = load i64, i64* %_low3353
  %_a3366 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3355
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3366, i64 %_low3365, i64 %_mid3364)
  %_high3368 = load i64, i64* %_high3351
  %_mid3369 = load i64, i64* %_mid3356
  %_bop3370 = add i64 %_mid3369, 1
  %_a3371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3355
  call void @oat_mergesort({ i64, [0 x i64] }* %_a3371, i64 %_bop3370, i64 %_high3368)
  %_mid3373 = load i64, i64* %_mid3356
  %_high3374 = load i64, i64* %_high3351
  %_low3375 = load i64, i64* %_low3353
  %_a3376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3355
  call void @merge({ i64, [0 x i64] }* %_a3376, i64 %_low3375, i64 %_high3374, i64 %_mid3373)
  br label %_merge3378
_else3379:
  br label %_merge3378
_merge3378:
  ret void
}

define void @merge({ i64, [0 x i64] }* %_a3232, i64 %_low3230, i64 %_high3228, i64 %_mid3226) {
  %_a3233 = alloca { i64, [0 x i64] }*
  %_low3231 = alloca i64
  %_high3229 = alloca i64
  %_mid3227 = alloca i64
  %_i3234 = alloca i64
  %_j3235 = alloca i64
  %_k3236 = alloca i64
  %_c3239 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_a3232, { i64, [0 x i64] }** %_a3233
  store i64 %_low3230, i64* %_low3231
  store i64 %_high3228, i64* %_high3229
  store i64 %_mid3226, i64* %_mid3227
  store i64 0, i64* %_i3234
  store i64 0, i64* %_j3235
  store i64 0, i64* %_k3236
  %_raw_array3237 = call i64* @oat_alloc_array(i64 50)
  %_array3238 = bitcast i64* %_raw_array3237 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array3238, { i64, [0 x i64] }** %_c3239
  %_low3240 = load i64, i64* %_low3231
  store i64 %_low3240, i64* %_i3234
  %_mid3241 = load i64, i64* %_mid3227
  %_bop3242 = add i64 %_mid3241, 1
  store i64 %_bop3242, i64* %_j3235
  %_low3243 = load i64, i64* %_low3231
  store i64 %_low3243, i64* %_k3236
  br label %_cond3253
_cond3253:
  %_i3244 = load i64, i64* %_i3234
  %_mid3245 = load i64, i64* %_mid3227
  %_bop3246 = icmp sle i64 %_i3244, %_mid3245
  %_j3247 = load i64, i64* %_j3235
  %_high3248 = load i64, i64* %_high3229
  %_bop3249 = icmp sle i64 %_j3247, %_high3248
  %_bop3250 = and i1 %_bop3246, %_bop3249
  br i1 %_bop3250, label %_body3252, label %_post3251
_body3252:
  %_a3254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_i3255 = load i64, i64* %_i3234
  %_index_ptr3257 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3254, i32 0, i32 1, i64 %_i3255
  %_index3258 = load i64, i64* %_index_ptr3257
  %_a3259 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_j3260 = load i64, i64* %_j3235
  %_index_ptr3262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3259, i32 0, i32 1, i64 %_j3260
  %_index3263 = load i64, i64* %_index_ptr3262
  %_bop3264 = icmp slt i64 %_index3258, %_index3263
  br i1 %_bop3264, label %_then3293, label %_else3292
_then3293:
  %_c3265 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3239
  %_k3266 = load i64, i64* %_k3236
  %_index_ptr3268 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3265, i32 0, i32 1, i64 %_k3266
  %_a3269 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_i3270 = load i64, i64* %_i3234
  %_index_ptr3272 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3269, i32 0, i32 1, i64 %_i3270
  %_index3273 = load i64, i64* %_index_ptr3272
  store i64 %_index3273, i64* %_index_ptr3268
  %_k3274 = load i64, i64* %_k3236
  %_bop3275 = add i64 %_k3274, 1
  store i64 %_bop3275, i64* %_k3236
  %_i3276 = load i64, i64* %_i3234
  %_bop3277 = add i64 %_i3276, 1
  store i64 %_bop3277, i64* %_i3234
  br label %_merge3291
_else3292:
  %_c3278 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3239
  %_k3279 = load i64, i64* %_k3236
  %_index_ptr3281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3278, i32 0, i32 1, i64 %_k3279
  %_a3282 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_j3283 = load i64, i64* %_j3235
  %_index_ptr3285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3282, i32 0, i32 1, i64 %_j3283
  %_index3286 = load i64, i64* %_index_ptr3285
  store i64 %_index3286, i64* %_index_ptr3281
  %_k3287 = load i64, i64* %_k3236
  %_bop3288 = add i64 %_k3287, 1
  store i64 %_bop3288, i64* %_k3236
  %_j3289 = load i64, i64* %_j3235
  %_bop3290 = add i64 %_j3289, 1
  store i64 %_bop3290, i64* %_j3235
  br label %_merge3291
_merge3291:
  br label %_cond3253
_post3251:
  br label %_cond3299
_cond3299:
  %_i3294 = load i64, i64* %_i3234
  %_mid3295 = load i64, i64* %_mid3227
  %_bop3296 = icmp sle i64 %_i3294, %_mid3295
  br i1 %_bop3296, label %_body3298, label %_post3297
_body3298:
  %_c3300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3239
  %_k3301 = load i64, i64* %_k3236
  %_index_ptr3303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3300, i32 0, i32 1, i64 %_k3301
  %_a3304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_i3305 = load i64, i64* %_i3234
  %_index_ptr3307 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3304, i32 0, i32 1, i64 %_i3305
  %_index3308 = load i64, i64* %_index_ptr3307
  store i64 %_index3308, i64* %_index_ptr3303
  %_k3309 = load i64, i64* %_k3236
  %_bop3310 = add i64 %_k3309, 1
  store i64 %_bop3310, i64* %_k3236
  %_i3311 = load i64, i64* %_i3234
  %_bop3312 = add i64 %_i3311, 1
  store i64 %_bop3312, i64* %_i3234
  br label %_cond3299
_post3297:
  br label %_cond3318
_cond3318:
  %_j3313 = load i64, i64* %_j3235
  %_high3314 = load i64, i64* %_high3229
  %_bop3315 = icmp sle i64 %_j3313, %_high3314
  br i1 %_bop3315, label %_body3317, label %_post3316
_body3317:
  %_c3319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3239
  %_k3320 = load i64, i64* %_k3236
  %_index_ptr3322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3319, i32 0, i32 1, i64 %_k3320
  %_a3323 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_j3324 = load i64, i64* %_j3235
  %_index_ptr3326 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3323, i32 0, i32 1, i64 %_j3324
  %_index3327 = load i64, i64* %_index_ptr3326
  store i64 %_index3327, i64* %_index_ptr3322
  %_k3328 = load i64, i64* %_k3236
  %_bop3329 = add i64 %_k3328, 1
  store i64 %_bop3329, i64* %_k3236
  %_j3330 = load i64, i64* %_j3235
  %_bop3331 = add i64 %_j3330, 1
  store i64 %_bop3331, i64* %_j3235
  br label %_cond3318
_post3316:
  %_low3332 = load i64, i64* %_low3231
  store i64 %_low3332, i64* %_i3234
  br label %_cond3338
_cond3338:
  %_i3333 = load i64, i64* %_i3234
  %_k3334 = load i64, i64* %_k3236
  %_bop3335 = icmp slt i64 %_i3333, %_k3334
  br i1 %_bop3335, label %_body3337, label %_post3336
_body3337:
  %_a3339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3233
  %_i3340 = load i64, i64* %_i3234
  %_index_ptr3342 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3339, i32 0, i32 1, i64 %_i3340
  %_c3343 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_c3239
  %_i3344 = load i64, i64* %_i3234
  %_index_ptr3346 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_c3343, i32 0, i32 1, i64 %_i3344
  %_index3347 = load i64, i64* %_index_ptr3346
  store i64 %_index3347, i64* %_index_ptr3342
  %_i3348 = load i64, i64* %_i3234
  %_bop3349 = add i64 %_i3348, 1
  store i64 %_bop3349, i64* %_i3234
  br label %_cond3338
_post3336:
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
