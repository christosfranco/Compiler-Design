; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %_arr5458, i64 %_size5456) {
  %_arr5459 = alloca { i64, [0 x i64] }*
  %_size5457 = alloca i64
  %_maxarr5463 = alloca { i64, [0 x i64] }*
  %_maxs5464 = alloca i64
  %_i5472 = alloca i64
  %_j5479 = alloca i64
  store { i64, [0 x i64] }* %_arr5458, { i64, [0 x i64] }** %_arr5459
  store i64 %_size5456, i64* %_size5457
  %_size5460 = load i64, i64* %_size5457
  %_raw_array5461 = call i64* @oat_alloc_array(i64 %_size5460)
  %_array5462 = bitcast i64* %_raw_array5461 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5462, { i64, [0 x i64] }** %_maxarr5463
  store i64 0, i64* %_maxs5464
  %_maxarr5465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_index_ptr5467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5465, i32 0, i32 1, i32 0
  %_arr5468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5459
  %_index_ptr5470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5468, i32 0, i32 1, i32 0
  %_index5471 = load i64, i64* %_index_ptr5470
  store i64 %_index5471, i64* %_index_ptr5467
  store i64 0, i64* %_i5472
  br label %_cond5478
_cond5478:
  %_i5473 = load i64, i64* %_i5472
  %_size5474 = load i64, i64* %_size5457
  %_bop5475 = icmp slt i64 %_i5473, %_size5474
  br i1 %_bop5475, label %_body5477, label %_post5476
_body5477:
  store i64 0, i64* %_j5479
  br label %_cond5485
_cond5485:
  %_j5480 = load i64, i64* %_j5479
  %_i5481 = load i64, i64* %_i5472
  %_bop5482 = icmp slt i64 %_j5480, %_i5481
  br i1 %_bop5482, label %_body5484, label %_post5483
_body5484:
  %_arr5486 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5459
  %_i5487 = load i64, i64* %_i5472
  %_index_ptr5489 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5486, i32 0, i32 1, i64 %_i5487
  %_index5490 = load i64, i64* %_index_ptr5489
  %_arr5491 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5459
  %_j5492 = load i64, i64* %_j5479
  %_index_ptr5494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5491, i32 0, i32 1, i64 %_j5492
  %_index5495 = load i64, i64* %_index_ptr5494
  %_bop5496 = icmp sgt i64 %_index5490, %_index5495
  %_maxarr5497 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_i5498 = load i64, i64* %_i5472
  %_index_ptr5500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5497, i32 0, i32 1, i64 %_i5498
  %_index5501 = load i64, i64* %_index_ptr5500
  %_maxarr5502 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_j5503 = load i64, i64* %_j5479
  %_index_ptr5505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5502, i32 0, i32 1, i64 %_j5503
  %_index5506 = load i64, i64* %_index_ptr5505
  %_arr5507 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5459
  %_i5508 = load i64, i64* %_i5472
  %_index_ptr5510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5507, i32 0, i32 1, i64 %_i5508
  %_index5511 = load i64, i64* %_index_ptr5510
  %_bop5512 = add i64 %_index5506, %_index5511
  %_bop5513 = icmp slt i64 %_index5501, %_bop5512
  %_bop5514 = and i1 %_bop5496, %_bop5513
  br i1 %_bop5514, label %_then5532, label %_else5531
_then5532:
  %_maxarr5515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_i5516 = load i64, i64* %_i5472
  %_index_ptr5518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5515, i32 0, i32 1, i64 %_i5516
  %_maxarr5519 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_j5520 = load i64, i64* %_j5479
  %_index_ptr5522 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5519, i32 0, i32 1, i64 %_j5520
  %_index5523 = load i64, i64* %_index_ptr5522
  %_arr5524 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5459
  %_i5525 = load i64, i64* %_i5472
  %_index_ptr5527 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5524, i32 0, i32 1, i64 %_i5525
  %_index5528 = load i64, i64* %_index_ptr5527
  %_bop5529 = add i64 %_index5523, %_index5528
  store i64 %_bop5529, i64* %_index_ptr5518
  br label %_merge5530
_else5531:
  br label %_merge5530
_merge5530:
  %_j5533 = load i64, i64* %_j5479
  %_bop5534 = add i64 %_j5533, 1
  store i64 %_bop5534, i64* %_j5479
  br label %_cond5485
_post5483:
  %_maxs5535 = load i64, i64* %_maxs5464
  %_maxarr5536 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_i5537 = load i64, i64* %_i5472
  %_index_ptr5539 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5536, i32 0, i32 1, i64 %_i5537
  %_index5540 = load i64, i64* %_index_ptr5539
  %_bop5541 = icmp slt i64 %_maxs5535, %_index5540
  br i1 %_bop5541, label %_then5549, label %_else5548
_then5549:
  %_maxarr5542 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5463
  %_i5543 = load i64, i64* %_i5472
  %_index_ptr5545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5542, i32 0, i32 1, i64 %_i5543
  %_index5546 = load i64, i64* %_index_ptr5545
  store i64 %_index5546, i64* %_maxs5464
  br label %_merge5547
_else5548:
  br label %_merge5547
_merge5547:
  %_i5550 = load i64, i64* %_i5472
  %_bop5551 = add i64 %_i5550, 1
  store i64 %_bop5551, i64* %_i5472
  br label %_cond5478
_post5476:
  %_maxs5552 = load i64, i64* %_maxs5464
  ret i64 %_maxs5552
}

define i64 @program(i64 %_argc5440, { i64, [0 x i8*] }* %_argv5438) {
  %_argc5441 = alloca i64
  %_argv5439 = alloca { i64, [0 x i8*] }*
  %_array5451 = alloca { i64, [0 x i64] }*
  %_max_ans5454 = alloca i64
  store i64 %_argc5440, i64* %_argc5441
  store { i64, [0 x i8*] }* %_argv5438, { i64, [0 x i8*] }** %_argv5439
  %_raw_array5442 = call i64* @oat_alloc_array(i64 7)
  %_array5443 = bitcast i64* %_raw_array5442 to { i64, [0 x i64] }*
  %_ind5444 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5444
  %_ind5445 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind5445
  %_ind5446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind5446
  %_ind5447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5447
  %_ind5448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind5448
  %_ind5449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind5449
  %_ind5450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5443, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind5450
  store { i64, [0 x i64] }* %_array5443, { i64, [0 x i64] }** %_array5451
  %_array5452 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5451
  %_result5453 = call i64 @maxsum({ i64, [0 x i64] }* %_array5452, i64 7)
  store i64 %_result5453, i64* %_max_ans5454
  %_max_ans5455 = load i64, i64* %_max_ans5454
  ret i64 %_max_ans5455
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
