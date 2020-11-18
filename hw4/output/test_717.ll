; generated from: oatprograms/matrixmult.oat
target triple = "x86_64-unknown-linux"
@_str_arr3292 = global [2 x i8] c" \00"
@_str_arr3297 = global [2 x i8] c"	\00"

define i64 @program(i64 %_argc3430, { i64, [0 x i8*] }* %_argv3428) {
  %_argc3431 = alloca i64
  %_argv3429 = alloca { i64, [0 x i8*] }*
  %_a3446 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b3470 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_c3487 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc3430, i64* %_argc3431
  store { i64, [0 x i8*] }* %_argv3428, { i64, [0 x i8*] }** %_argv3429
  %_raw_array3432 = call i64* @oat_alloc_array(i64 2)
  %_array3433 = bitcast i64* %_raw_array3432 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3434 = call i64* @oat_alloc_array(i64 3)
  %_array3435 = bitcast i64* %_raw_array3434 to { i64, [0 x i64] }*
  %_ind3436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3435, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3436
  %_ind3437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3435, i32 0, i32 1, i32 1
  store i64 3, i64* %_ind3437
  %_ind3438 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3435, i32 0, i32 1, i32 2
  store i64 4, i64* %_ind3438
  %_ind3439 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3433, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3435, { i64, [0 x i64] }** %_ind3439
  %_raw_array3440 = call i64* @oat_alloc_array(i64 3)
  %_array3441 = bitcast i64* %_raw_array3440 to { i64, [0 x i64] }*
  %_ind3442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3441, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3442
  %_ind3443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3441, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3443
  %_ind3444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3441, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3444
  %_ind3445 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3433, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3441, { i64, [0 x i64] }** %_ind3445
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3433, { i64, [0 x { i64, [0 x i64] }*] }** %_a3446
  %_raw_array3447 = call i64* @oat_alloc_array(i64 3)
  %_array3448 = bitcast i64* %_raw_array3447 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3449 = call i64* @oat_alloc_array(i64 4)
  %_array3450 = bitcast i64* %_raw_array3449 to { i64, [0 x i64] }*
  %_ind3451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3450, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind3451
  %_ind3452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3450, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3452
  %_ind3453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3450, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind3453
  %_ind3454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3450, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind3454
  %_ind3455 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3448, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3450, { i64, [0 x i64] }** %_ind3455
  %_raw_array3456 = call i64* @oat_alloc_array(i64 4)
  %_array3457 = bitcast i64* %_raw_array3456 to { i64, [0 x i64] }*
  %_ind3458 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3457, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind3458
  %_ind3459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3457, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3459
  %_ind3460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3457, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind3460
  %_ind3461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3457, i32 0, i32 1, i32 3
  store i64 2, i64* %_ind3461
  %_ind3462 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3448, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3457, { i64, [0 x i64] }** %_ind3462
  %_raw_array3463 = call i64* @oat_alloc_array(i64 4)
  %_array3464 = bitcast i64* %_raw_array3463 to { i64, [0 x i64] }*
  %_ind3465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3464, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind3465
  %_ind3466 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3464, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind3466
  %_ind3467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3464, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3467
  %_ind3468 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3464, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind3468
  %_ind3469 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3448, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array3464, { i64, [0 x i64] }** %_ind3469
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3448, { i64, [0 x { i64, [0 x i64] }*] }** %_b3470
  %_raw_array3471 = call i64* @oat_alloc_array(i64 2)
  %_array3472 = bitcast i64* %_raw_array3471 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array3473 = call i64* @oat_alloc_array(i64 4)
  %_array3474 = bitcast i64* %_raw_array3473 to { i64, [0 x i64] }*
  %_ind3475 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3474, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3475
  %_ind3476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3474, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3476
  %_ind3477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3474, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3477
  %_ind3478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3474, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3478
  %_ind3479 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3472, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array3474, { i64, [0 x i64] }** %_ind3479
  %_raw_array3480 = call i64* @oat_alloc_array(i64 4)
  %_array3481 = bitcast i64* %_raw_array3480 to { i64, [0 x i64] }*
  %_ind3482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3481, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind3482
  %_ind3483 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3481, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind3483
  %_ind3484 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3481, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind3484
  %_ind3485 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3481, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind3485
  %_ind3486 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array3472, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array3481, { i64, [0 x i64] }** %_ind3486
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array3472, { i64, [0 x { i64, [0 x i64] }*] }** %_c3487
  %_c3488 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3487
  %_b3489 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3470
  %_a3490 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3446
  call void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a3490, { i64, [0 x { i64, [0 x i64] }*] }* %_b3489, { i64, [0 x { i64, [0 x i64] }*] }* %_c3488)
  %_c3492 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3487
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3492, i64 2)
  %_c3494 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3487
  %_b3495 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b3470
  %_a3496 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3446
  call void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a3496, { i64, [0 x { i64, [0 x i64] }*] }* %_b3495, { i64, [0 x { i64, [0 x i64] }*] }* %_c3494)
  %_c3498 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_c3487
  call void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_c3498, i64 2)
  ret i64 0
}

define void @matrix_Mult({ i64, [0 x { i64, [0 x i64] }*] }* %_a13373, { i64, [0 x { i64, [0 x i64] }*] }* %_a23371, { i64, [0 x { i64, [0 x i64] }*] }* %_a33369) {
  %_a13374 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23372 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33370 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3375 = alloca i64
  %_j3381 = alloca i64
  %_k3387 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13373, { i64, [0 x { i64, [0 x i64] }*] }** %_a13374
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23371, { i64, [0 x { i64, [0 x i64] }*] }** %_a23372
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33369, { i64, [0 x { i64, [0 x i64] }*] }** %_a33370
  store i64 0, i64* %_i3375
  br label %_cond3380
_cond3380:
  %_i3376 = load i64, i64* %_i3375
  %_bop3377 = icmp slt i64 %_i3376, 2
  br i1 %_bop3377, label %_body3379, label %_post3378
_body3379:
  store i64 0, i64* %_j3381
  br label %_cond3386
_cond3386:
  %_j3382 = load i64, i64* %_j3381
  %_bop3383 = icmp slt i64 %_j3382, 4
  br i1 %_bop3383, label %_body3385, label %_post3384
_body3385:
  store i64 0, i64* %_k3387
  br label %_cond3392
_cond3392:
  %_k3388 = load i64, i64* %_k3387
  %_bop3389 = icmp slt i64 %_k3388, 3
  br i1 %_bop3389, label %_body3391, label %_post3390
_body3391:
  %_a33393 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33370
  %_i3394 = load i64, i64* %_i3375
  %_index_ptr3395 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33393, i32 0, i32 1, i64 %_i3394
  %_index3396 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3395
  %_j3397 = load i64, i64* %_j3381
  %_index_ptr3398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3396, i32 0, i32 1, i64 %_j3397
  %_a33399 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33370
  %_i3400 = load i64, i64* %_i3375
  %_index_ptr3401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33399, i32 0, i32 1, i64 %_i3400
  %_index3402 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3401
  %_j3403 = load i64, i64* %_j3381
  %_index_ptr3404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3402, i32 0, i32 1, i64 %_j3403
  %_index3405 = load i64, i64* %_index_ptr3404
  %_a13406 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13374
  %_i3407 = load i64, i64* %_i3375
  %_index_ptr3408 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13406, i32 0, i32 1, i64 %_i3407
  %_index3409 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3408
  %_k3410 = load i64, i64* %_k3387
  %_index_ptr3411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3409, i32 0, i32 1, i64 %_k3410
  %_index3412 = load i64, i64* %_index_ptr3411
  %_a23413 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23372
  %_k3414 = load i64, i64* %_k3387
  %_index_ptr3415 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23413, i32 0, i32 1, i64 %_k3414
  %_index3416 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3415
  %_j3417 = load i64, i64* %_j3381
  %_index_ptr3418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3416, i32 0, i32 1, i64 %_j3417
  %_index3419 = load i64, i64* %_index_ptr3418
  %_bop3420 = mul i64 %_index3412, %_index3419
  %_bop3421 = add i64 %_index3405, %_bop3420
  store i64 %_bop3421, i64* %_index_ptr3398
  %_k3422 = load i64, i64* %_k3387
  %_bop3423 = add i64 %_k3422, 1
  store i64 %_bop3423, i64* %_k3387
  br label %_cond3392
_post3390:
  %_j3424 = load i64, i64* %_j3381
  %_bop3425 = add i64 %_j3424, 1
  store i64 %_bop3425, i64* %_j3381
  br label %_cond3386
_post3384:
  %_i3426 = load i64, i64* %_i3375
  %_bop3427 = add i64 %_i3426, 1
  store i64 %_bop3427, i64* %_i3375
  br label %_cond3380
_post3378:
  ret void
}

define void @matrix_MultAlt({ i64, [0 x { i64, [0 x i64] }*] }* %_a13340, { i64, [0 x { i64, [0 x i64] }*] }* %_a23338, { i64, [0 x { i64, [0 x i64] }*] }* %_a33336) {
  %_a13341 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23339 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a33337 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i3342 = alloca i64
  %_j3348 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13340, { i64, [0 x { i64, [0 x i64] }*] }** %_a13341
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23338, { i64, [0 x { i64, [0 x i64] }*] }** %_a23339
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a33336, { i64, [0 x { i64, [0 x i64] }*] }** %_a33337
  store i64 0, i64* %_i3342
  br label %_cond3347
_cond3347:
  %_i3343 = load i64, i64* %_i3342
  %_bop3344 = icmp slt i64 %_i3343, 2
  br i1 %_bop3344, label %_body3346, label %_post3345
_body3346:
  store i64 0, i64* %_j3348
  br label %_cond3353
_cond3353:
  %_j3349 = load i64, i64* %_j3348
  %_bop3350 = icmp slt i64 %_j3349, 4
  br i1 %_bop3350, label %_body3352, label %_post3351
_body3352:
  %_a33354 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a33337
  %_i3355 = load i64, i64* %_i3342
  %_index_ptr3356 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a33354, i32 0, i32 1, i64 %_i3355
  %_index3357 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3356
  %_j3358 = load i64, i64* %_j3348
  %_index_ptr3359 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3357, i32 0, i32 1, i64 %_j3358
  %_j3360 = load i64, i64* %_j3348
  %_i3361 = load i64, i64* %_i3342
  %_a23362 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23339
  %_a13363 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13341
  %_result3364 = call i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13363, { i64, [0 x { i64, [0 x i64] }*] }* %_a23362, i64 %_i3361, i64 %_j3360)
  store i64 %_result3364, i64* %_index_ptr3359
  %_j3365 = load i64, i64* %_j3348
  %_bop3366 = add i64 %_j3365, 1
  store i64 %_bop3366, i64* %_j3348
  br label %_cond3353
_post3351:
  %_i3367 = load i64, i64* %_i3342
  %_bop3368 = add i64 %_i3367, 1
  store i64 %_bop3368, i64* %_i3342
  br label %_cond3347
_post3345:
  ret void
}

define i64 @dot3({ i64, [0 x { i64, [0 x i64] }*] }* %_a13307, { i64, [0 x { i64, [0 x i64] }*] }* %_a23305, i64 %_row3303, i64 %_col3301) {
  %_a13308 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a23306 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_row3304 = alloca i64
  %_col3302 = alloca i64
  %_sum3309 = alloca i64
  %_k3310 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a13307, { i64, [0 x { i64, [0 x i64] }*] }** %_a13308
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a23305, { i64, [0 x { i64, [0 x i64] }*] }** %_a23306
  store i64 %_row3303, i64* %_row3304
  store i64 %_col3301, i64* %_col3302
  store i64 0, i64* %_sum3309
  store i64 0, i64* %_k3310
  br label %_cond3315
_cond3315:
  %_k3311 = load i64, i64* %_k3310
  %_bop3312 = icmp slt i64 %_k3311, 3
  br i1 %_bop3312, label %_body3314, label %_post3313
_body3314:
  %_sum3316 = load i64, i64* %_sum3309
  %_a13317 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a13308
  %_row3318 = load i64, i64* %_row3304
  %_index_ptr3319 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a13317, i32 0, i32 1, i64 %_row3318
  %_index3320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3319
  %_k3321 = load i64, i64* %_k3310
  %_index_ptr3322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3320, i32 0, i32 1, i64 %_k3321
  %_index3323 = load i64, i64* %_index_ptr3322
  %_a23324 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a23306
  %_k3325 = load i64, i64* %_k3310
  %_index_ptr3326 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a23324, i32 0, i32 1, i64 %_k3325
  %_index3327 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3326
  %_col3328 = load i64, i64* %_col3302
  %_index_ptr3329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3327, i32 0, i32 1, i64 %_col3328
  %_index3330 = load i64, i64* %_index_ptr3329
  %_bop3331 = mul i64 %_index3323, %_index3330
  %_bop3332 = add i64 %_sum3316, %_bop3331
  store i64 %_bop3332, i64* %_sum3309
  %_k3333 = load i64, i64* %_k3310
  %_bop3334 = add i64 %_k3333, 1
  store i64 %_bop3334, i64* %_k3310
  br label %_cond3315
_post3313:
  %_sum3335 = load i64, i64* %_sum3309
  ret i64 %_sum3335
}

define void @prnNx4({ i64, [0 x { i64, [0 x i64] }*] }* %_ar3268, i64 %_n3266) {
  %_ar3269 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_n3267 = alloca i64
  %_i3270 = alloca i64
  %_j3277 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_ar3268, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3269
  store i64 %_n3266, i64* %_n3267
  store i64 0, i64* %_i3270
  br label %_cond3276
_cond3276:
  %_i3271 = load i64, i64* %_i3270
  %_n3272 = load i64, i64* %_n3267
  %_bop3273 = icmp slt i64 %_i3271, %_n3272
  br i1 %_bop3273, label %_body3275, label %_post3274
_body3275:
  store i64 0, i64* %_j3277
  br label %_cond3282
_cond3282:
  %_j3278 = load i64, i64* %_j3277
  %_bop3279 = icmp slt i64 %_j3278, 4
  br i1 %_bop3279, label %_body3281, label %_post3280
_body3281:
  %_ar3283 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_ar3269
  %_i3284 = load i64, i64* %_i3270
  %_index_ptr3285 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_ar3283, i32 0, i32 1, i64 %_i3284
  %_index3286 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr3285
  %_j3287 = load i64, i64* %_j3277
  %_index_ptr3288 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index3286, i32 0, i32 1, i64 %_j3287
  %_index3289 = load i64, i64* %_index_ptr3288
  call void @print_int(i64 %_index3289)
  %_str3291 = getelementptr [2 x i8], [2 x i8]* @_str_arr3292, i32 0, i32 0
  call void @print_string(i8* %_str3291)
  %_j3294 = load i64, i64* %_j3277
  %_bop3295 = add i64 %_j3294, 1
  store i64 %_bop3295, i64* %_j3277
  br label %_cond3282
_post3280:
  %_str3296 = getelementptr [2 x i8], [2 x i8]* @_str_arr3297, i32 0, i32 0
  call void @print_string(i8* %_str3296)
  %_i3299 = load i64, i64* %_i3270
  %_bop3300 = add i64 %_i3299, 1
  store i64 %_bop3300, i64* %_i3270
  br label %_cond3276
_post3274:
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
