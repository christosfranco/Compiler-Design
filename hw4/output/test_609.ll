; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %_a3484, i64 %_s3482, i64 %_b3480) {
  %_a3485 = alloca { i64, [0 x i64] }*
  %_s3483 = alloca i64
  %_b3481 = alloca i64
  %_i3487 = alloca i64
  %_min3493 = alloca i64
  %_mi3495 = alloca i64
  store { i64, [0 x i64] }* %_a3484, { i64, [0 x i64] }** %_a3485
  store i64 %_s3482, i64* %_s3483
  store i64 %_b3480, i64* %_b3481
  %_s3486 = load i64, i64* %_s3483
  store i64 %_s3486, i64* %_i3487
  %_a3488 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_s3489 = load i64, i64* %_s3483
  %_index_ptr3491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3488, i32 0, i32 1, i64 %_s3489
  %_index3492 = load i64, i64* %_index_ptr3491
  store i64 %_index3492, i64* %_min3493
  %_s3494 = load i64, i64* %_s3483
  store i64 %_s3494, i64* %_mi3495
  br label %_cond3501
_cond3501:
  %_i3496 = load i64, i64* %_i3487
  %_b3497 = load i64, i64* %_b3481
  %_bop3498 = icmp slt i64 %_i3496, %_b3497
  br i1 %_bop3498, label %_body3500, label %_post3499
_body3500:
  %_a3502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_i3503 = load i64, i64* %_i3487
  %_index_ptr3505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3502, i32 0, i32 1, i64 %_i3503
  %_index3506 = load i64, i64* %_index_ptr3505
  %_min3507 = load i64, i64* %_min3493
  %_bop3508 = icmp slt i64 %_index3506, %_min3507
  br i1 %_bop3508, label %_then3517, label %_else3516
_then3517:
  %_a3509 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3485
  %_i3510 = load i64, i64* %_i3487
  %_index_ptr3512 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3509, i32 0, i32 1, i64 %_i3510
  %_index3513 = load i64, i64* %_index_ptr3512
  store i64 %_index3513, i64* %_min3493
  %_i3514 = load i64, i64* %_i3487
  store i64 %_i3514, i64* %_mi3495
  br label %_merge3515
_else3516:
  br label %_merge3515
_merge3515:
  %_i3518 = load i64, i64* %_i3487
  %_bop3519 = add i64 %_i3518, 1
  store i64 %_bop3519, i64* %_i3487
  br label %_cond3501
_post3499:
  %_mi3520 = load i64, i64* %_mi3495
  ret i64 %_mi3520
}

define void @selectionsort({ i64, [0 x i64] }* %_a3444, i64 %_s3442) {
  %_a3445 = alloca { i64, [0 x i64] }*
  %_s3443 = alloca i64
  %_t3446 = alloca i64
  %_mi3447 = alloca i64
  %_i3448 = alloca i64
  store { i64, [0 x i64] }* %_a3444, { i64, [0 x i64] }** %_a3445
  store i64 %_s3442, i64* %_s3443
  store i64 0, i64* %_t3446
  store i64 0, i64* %_mi3447
  store i64 0, i64* %_i3448
  br label %_cond3454
_cond3454:
  %_i3449 = load i64, i64* %_i3448
  %_s3450 = load i64, i64* %_s3443
  %_bop3451 = icmp slt i64 %_i3449, %_s3450
  br i1 %_bop3451, label %_body3453, label %_post3452
_body3453:
  %_s3455 = load i64, i64* %_s3443
  %_i3456 = load i64, i64* %_i3448
  %_a3457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3445
  %_result3458 = call i64 @getminindex({ i64, [0 x i64] }* %_a3457, i64 %_i3456, i64 %_s3455)
  store i64 %_result3458, i64* %_mi3447
  %_a3459 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3445
  %_i3460 = load i64, i64* %_i3448
  %_index_ptr3462 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3459, i32 0, i32 1, i64 %_i3460
  %_index3463 = load i64, i64* %_index_ptr3462
  store i64 %_index3463, i64* %_t3446
  %_a3464 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3445
  %_i3465 = load i64, i64* %_i3448
  %_index_ptr3467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3464, i32 0, i32 1, i64 %_i3465
  %_a3468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3445
  %_mi3469 = load i64, i64* %_mi3447
  %_index_ptr3471 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3468, i32 0, i32 1, i64 %_mi3469
  %_index3472 = load i64, i64* %_index_ptr3471
  store i64 %_index3472, i64* %_index_ptr3467
  %_a3473 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3445
  %_mi3474 = load i64, i64* %_mi3447
  %_index_ptr3476 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3473, i32 0, i32 1, i64 %_mi3474
  %_t3477 = load i64, i64* %_t3446
  store i64 %_t3477, i64* %_index_ptr3476
  %_i3478 = load i64, i64* %_i3448
  %_bop3479 = add i64 %_i3478, 1
  store i64 %_bop3479, i64* %_i3448
  br label %_cond3454
_post3452:
  ret void
}

define i64 @program(i64 %_argc3413, { i64, [0 x i8*] }* %_argv3411) {
  %_argc3414 = alloca i64
  %_argv3412 = alloca { i64, [0 x i8*] }*
  %_ar3425 = alloca { i64, [0 x i64] }*
  %_i3428 = alloca i64
  store i64 %_argc3413, i64* %_argc3414
  store { i64, [0 x i8*] }* %_argv3411, { i64, [0 x i8*] }** %_argv3412
  %_raw_array3415 = call i64* @oat_alloc_array(i64 8)
  %_array3416 = bitcast i64* %_raw_array3415 to { i64, [0 x i64] }*
  %_ind3417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3417
  %_ind3418 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3418
  %_ind3419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3419
  %_ind3420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3420
  %_ind3421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3421
  %_ind3422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3422
  %_ind3423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3423
  %_ind3424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3416, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3424
  store { i64, [0 x i64] }* %_array3416, { i64, [0 x i64] }** %_ar3425
  %_ar3426 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3425
  call void @selectionsort({ i64, [0 x i64] }* %_ar3426, i64 8)
  store i64 0, i64* %_i3428
  br label %_cond3433
_cond3433:
  %_i3429 = load i64, i64* %_i3428
  %_bop3430 = icmp slt i64 %_i3429, 8
  br i1 %_bop3430, label %_body3432, label %_post3431
_body3432:
  %_ar3434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3425
  %_i3435 = load i64, i64* %_i3428
  %_index_ptr3437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3434, i32 0, i32 1, i64 %_i3435
  %_index3438 = load i64, i64* %_index_ptr3437
  call void @print_int(i64 %_index3438)
  %_i3440 = load i64, i64* %_i3428
  %_bop3441 = add i64 %_i3440, 1
  store i64 %_bop3441, i64* %_i3428
  br label %_cond3433
_post3431:
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
