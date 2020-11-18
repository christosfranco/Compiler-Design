; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %_arr5461, i64 %_size5459) {
  %_arr5462 = alloca { i64, [0 x i64] }*
  %_size5460 = alloca i64
  %_maxarr5466 = alloca { i64, [0 x i64] }*
  %_maxs5467 = alloca i64
  %_i5475 = alloca i64
  %_j5482 = alloca i64
  store { i64, [0 x i64] }* %_arr5461, { i64, [0 x i64] }** %_arr5462
  store i64 %_size5459, i64* %_size5460
  %_size5463 = load i64, i64* %_size5460
  %_raw_array5464 = call i64* @oat_alloc_array(i64 %_size5463)
  %_array5465 = bitcast i64* %_raw_array5464 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5465, { i64, [0 x i64] }** %_maxarr5466
  store i64 0, i64* %_maxs5467
  %_maxarr5468 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_index_ptr5470 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5468, i32 0, i32 1, i32 0
  %_arr5471 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5462
  %_index_ptr5473 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5471, i32 0, i32 1, i32 0
  %_index5474 = load i64, i64* %_index_ptr5473
  store i64 %_index5474, i64* %_index_ptr5470
  store i64 0, i64* %_i5475
  br label %_cond5481
_cond5481:
  %_i5476 = load i64, i64* %_i5475
  %_size5477 = load i64, i64* %_size5460
  %_bop5478 = icmp slt i64 %_i5476, %_size5477
  br i1 %_bop5478, label %_body5480, label %_post5479
_body5480:
  store i64 0, i64* %_j5482
  br label %_cond5488
_cond5488:
  %_j5483 = load i64, i64* %_j5482
  %_i5484 = load i64, i64* %_i5475
  %_bop5485 = icmp slt i64 %_j5483, %_i5484
  br i1 %_bop5485, label %_body5487, label %_post5486
_body5487:
  %_arr5489 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5462
  %_i5490 = load i64, i64* %_i5475
  %_index_ptr5492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5489, i32 0, i32 1, i64 %_i5490
  %_index5493 = load i64, i64* %_index_ptr5492
  %_arr5494 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5462
  %_j5495 = load i64, i64* %_j5482
  %_index_ptr5497 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5494, i32 0, i32 1, i64 %_j5495
  %_index5498 = load i64, i64* %_index_ptr5497
  %_bop5499 = icmp sgt i64 %_index5493, %_index5498
  %_maxarr5500 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_i5501 = load i64, i64* %_i5475
  %_index_ptr5503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5500, i32 0, i32 1, i64 %_i5501
  %_index5504 = load i64, i64* %_index_ptr5503
  %_maxarr5505 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_j5506 = load i64, i64* %_j5482
  %_index_ptr5508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5505, i32 0, i32 1, i64 %_j5506
  %_index5509 = load i64, i64* %_index_ptr5508
  %_arr5510 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5462
  %_i5511 = load i64, i64* %_i5475
  %_index_ptr5513 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5510, i32 0, i32 1, i64 %_i5511
  %_index5514 = load i64, i64* %_index_ptr5513
  %_bop5515 = add i64 %_index5509, %_index5514
  %_bop5516 = icmp slt i64 %_index5504, %_bop5515
  %_bop5517 = and i1 %_bop5499, %_bop5516
  br i1 %_bop5517, label %_then5535, label %_else5534
_then5535:
  %_maxarr5518 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_i5519 = load i64, i64* %_i5475
  %_index_ptr5521 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5518, i32 0, i32 1, i64 %_i5519
  %_maxarr5522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_j5523 = load i64, i64* %_j5482
  %_index_ptr5525 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5522, i32 0, i32 1, i64 %_j5523
  %_index5526 = load i64, i64* %_index_ptr5525
  %_arr5527 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5462
  %_i5528 = load i64, i64* %_i5475
  %_index_ptr5530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5527, i32 0, i32 1, i64 %_i5528
  %_index5531 = load i64, i64* %_index_ptr5530
  %_bop5532 = add i64 %_index5526, %_index5531
  store i64 %_bop5532, i64* %_index_ptr5521
  br label %_merge5533
_else5534:
  br label %_merge5533
_merge5533:
  %_j5536 = load i64, i64* %_j5482
  %_bop5537 = add i64 %_j5536, 1
  store i64 %_bop5537, i64* %_j5482
  br label %_cond5488
_post5486:
  %_maxs5538 = load i64, i64* %_maxs5467
  %_maxarr5539 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_i5540 = load i64, i64* %_i5475
  %_index_ptr5542 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5539, i32 0, i32 1, i64 %_i5540
  %_index5543 = load i64, i64* %_index_ptr5542
  %_bop5544 = icmp slt i64 %_maxs5538, %_index5543
  br i1 %_bop5544, label %_then5552, label %_else5551
_then5552:
  %_maxarr5545 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5466
  %_i5546 = load i64, i64* %_i5475
  %_index_ptr5548 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5545, i32 0, i32 1, i64 %_i5546
  %_index5549 = load i64, i64* %_index_ptr5548
  store i64 %_index5549, i64* %_maxs5467
  br label %_merge5550
_else5551:
  br label %_merge5550
_merge5550:
  %_i5553 = load i64, i64* %_i5475
  %_bop5554 = add i64 %_i5553, 1
  store i64 %_bop5554, i64* %_i5475
  br label %_cond5481
_post5479:
  %_maxs5555 = load i64, i64* %_maxs5467
  ret i64 %_maxs5555
}

define i64 @program(i64 %_argc5443, { i64, [0 x i8*] }* %_argv5441) {
  %_argc5444 = alloca i64
  %_argv5442 = alloca { i64, [0 x i8*] }*
  %_array5454 = alloca { i64, [0 x i64] }*
  %_max_ans5457 = alloca i64
  store i64 %_argc5443, i64* %_argc5444
  store { i64, [0 x i8*] }* %_argv5441, { i64, [0 x i8*] }** %_argv5442
  %_raw_array5445 = call i64* @oat_alloc_array(i64 7)
  %_array5446 = bitcast i64* %_raw_array5445 to { i64, [0 x i64] }*
  %_ind5447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5447
  %_ind5448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind5448
  %_ind5449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind5449
  %_ind5450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5450
  %_ind5451 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind5451
  %_ind5452 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind5452
  %_ind5453 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5446, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind5453
  store { i64, [0 x i64] }* %_array5446, { i64, [0 x i64] }** %_array5454
  %_array5455 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5454
  %_result5456 = call i64 @maxsum({ i64, [0 x i64] }* %_array5455, i64 7)
  store i64 %_result5456, i64* %_max_ans5457
  %_max_ans5458 = load i64, i64* %_max_ans5457
  ret i64 %_max_ans5458
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
