; generated from: oatprograms/selectionsort.oat
target triple = "x86_64-unknown-linux"
define i64 @getminindex({ i64, [0 x i64] }* %_a3487, i64 %_s3485, i64 %_b3483) {
  %_a3488 = alloca { i64, [0 x i64] }*
  %_s3486 = alloca i64
  %_b3484 = alloca i64
  %_i3490 = alloca i64
  %_min3496 = alloca i64
  %_mi3498 = alloca i64
  store { i64, [0 x i64] }* %_a3487, { i64, [0 x i64] }** %_a3488
  store i64 %_s3485, i64* %_s3486
  store i64 %_b3483, i64* %_b3484
  %_s3489 = load i64, i64* %_s3486
  store i64 %_s3489, i64* %_i3490
  %_a3491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3488
  %_s3492 = load i64, i64* %_s3486
  %_index_ptr3494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3491, i32 0, i32 1, i64 %_s3492
  %_index3495 = load i64, i64* %_index_ptr3494
  store i64 %_index3495, i64* %_min3496
  %_s3497 = load i64, i64* %_s3486
  store i64 %_s3497, i64* %_mi3498
  br label %_cond3504
_cond3504:
  %_i3499 = load i64, i64* %_i3490
  %_b3500 = load i64, i64* %_b3484
  %_bop3501 = icmp slt i64 %_i3499, %_b3500
  br i1 %_bop3501, label %_body3503, label %_post3502
_body3503:
  %_a3505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3488
  %_i3506 = load i64, i64* %_i3490
  %_index_ptr3508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3505, i32 0, i32 1, i64 %_i3506
  %_index3509 = load i64, i64* %_index_ptr3508
  %_min3510 = load i64, i64* %_min3496
  %_bop3511 = icmp slt i64 %_index3509, %_min3510
  br i1 %_bop3511, label %_then3520, label %_else3519
_then3520:
  %_a3512 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3488
  %_i3513 = load i64, i64* %_i3490
  %_index_ptr3515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3512, i32 0, i32 1, i64 %_i3513
  %_index3516 = load i64, i64* %_index_ptr3515
  store i64 %_index3516, i64* %_min3496
  %_i3517 = load i64, i64* %_i3490
  store i64 %_i3517, i64* %_mi3498
  br label %_merge3518
_else3519:
  br label %_merge3518
_merge3518:
  %_i3521 = load i64, i64* %_i3490
  %_bop3522 = add i64 %_i3521, 1
  store i64 %_bop3522, i64* %_i3490
  br label %_cond3504
_post3502:
  %_mi3523 = load i64, i64* %_mi3498
  ret i64 %_mi3523
}

define void @selectionsort({ i64, [0 x i64] }* %_a3447, i64 %_s3445) {
  %_a3448 = alloca { i64, [0 x i64] }*
  %_s3446 = alloca i64
  %_t3449 = alloca i64
  %_mi3450 = alloca i64
  %_i3451 = alloca i64
  store { i64, [0 x i64] }* %_a3447, { i64, [0 x i64] }** %_a3448
  store i64 %_s3445, i64* %_s3446
  store i64 0, i64* %_t3449
  store i64 0, i64* %_mi3450
  store i64 0, i64* %_i3451
  br label %_cond3457
_cond3457:
  %_i3452 = load i64, i64* %_i3451
  %_s3453 = load i64, i64* %_s3446
  %_bop3454 = icmp slt i64 %_i3452, %_s3453
  br i1 %_bop3454, label %_body3456, label %_post3455
_body3456:
  %_s3458 = load i64, i64* %_s3446
  %_i3459 = load i64, i64* %_i3451
  %_a3460 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3448
  %_result3461 = call i64 @getminindex({ i64, [0 x i64] }* %_a3460, i64 %_i3459, i64 %_s3458)
  store i64 %_result3461, i64* %_mi3450
  %_a3462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3448
  %_i3463 = load i64, i64* %_i3451
  %_index_ptr3465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3462, i32 0, i32 1, i64 %_i3463
  %_index3466 = load i64, i64* %_index_ptr3465
  store i64 %_index3466, i64* %_t3449
  %_a3467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3448
  %_i3468 = load i64, i64* %_i3451
  %_index_ptr3470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3467, i32 0, i32 1, i64 %_i3468
  %_a3471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3448
  %_mi3472 = load i64, i64* %_mi3450
  %_index_ptr3474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3471, i32 0, i32 1, i64 %_mi3472
  %_index3475 = load i64, i64* %_index_ptr3474
  store i64 %_index3475, i64* %_index_ptr3470
  %_a3476 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a3448
  %_mi3477 = load i64, i64* %_mi3450
  %_index_ptr3479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a3476, i32 0, i32 1, i64 %_mi3477
  %_t3480 = load i64, i64* %_t3449
  store i64 %_t3480, i64* %_index_ptr3479
  %_i3481 = load i64, i64* %_i3451
  %_bop3482 = add i64 %_i3481, 1
  store i64 %_bop3482, i64* %_i3451
  br label %_cond3457
_post3455:
  ret void
}

define i64 @program(i64 %_argc3416, { i64, [0 x i8*] }* %_argv3414) {
  %_argc3417 = alloca i64
  %_argv3415 = alloca { i64, [0 x i8*] }*
  %_ar3428 = alloca { i64, [0 x i64] }*
  %_i3431 = alloca i64
  store i64 %_argc3416, i64* %_argc3417
  store { i64, [0 x i8*] }* %_argv3414, { i64, [0 x i8*] }** %_argv3415
  %_raw_array3418 = call i64* @oat_alloc_array(i64 8)
  %_array3419 = bitcast i64* %_raw_array3418 to { i64, [0 x i64] }*
  %_ind3420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind3420
  %_ind3421 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 1
  store i64 200, i64* %_ind3421
  %_ind3422 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind3422
  %_ind3423 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 3
  store i64 65, i64* %_ind3423
  %_ind3424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 4
  store i64 30, i64* %_ind3424
  %_ind3425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 5
  store i64 99, i64* %_ind3425
  %_ind3426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 6
  store i64 2, i64* %_ind3426
  %_ind3427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array3419, i32 0, i32 1, i32 7
  store i64 0, i64* %_ind3427
  store { i64, [0 x i64] }* %_array3419, { i64, [0 x i64] }** %_ar3428
  %_ar3429 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3428
  call void @selectionsort({ i64, [0 x i64] }* %_ar3429, i64 8)
  store i64 0, i64* %_i3431
  br label %_cond3436
_cond3436:
  %_i3432 = load i64, i64* %_i3431
  %_bop3433 = icmp slt i64 %_i3432, 8
  br i1 %_bop3433, label %_body3435, label %_post3434
_body3435:
  %_ar3437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar3428
  %_i3438 = load i64, i64* %_i3431
  %_index_ptr3440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar3437, i32 0, i32 1, i64 %_i3438
  %_index3441 = load i64, i64* %_index_ptr3440
  call void @print_int(i64 %_index3441)
  %_i3443 = load i64, i64* %_i3431
  %_bop3444 = add i64 %_i3443, 1
  store i64 %_bop3444, i64* %_i3431
  br label %_cond3436
_post3434:
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
