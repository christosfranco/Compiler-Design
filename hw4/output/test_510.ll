; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %_x4521, i64 %_y4519) {
  %_x4522 = alloca i64
  %_y4520 = alloca i64
  store i64 %_x4521, i64* %_x4522
  store i64 %_y4519, i64* %_y4520
  %_x4523 = load i64, i64* %_x4522
  %_y4524 = load i64, i64* %_y4520
  %_bop4525 = icmp eq i64 %_x4523, %_y4524
  br i1 %_bop4525, label %_then4529, label %_else4528
_then4529:
  %_x4526 = load i64, i64* %_x4522
  ret i64 %_x4526
_else4528:
  br label %_merge4527
_merge4527:
  %_x4530 = load i64, i64* %_x4522
  %_bop4531 = icmp eq i64 %_x4530, 0
  br i1 %_bop4531, label %_then4535, label %_else4534
_then4535:
  %_y4532 = load i64, i64* %_y4520
  ret i64 %_y4532
_else4534:
  br label %_merge4533
_merge4533:
  %_y4536 = load i64, i64* %_y4520
  %_bop4537 = icmp eq i64 %_y4536, 0
  br i1 %_bop4537, label %_then4541, label %_else4540
_then4541:
  %_x4538 = load i64, i64* %_x4522
  ret i64 %_x4538
_else4540:
  br label %_merge4539
_merge4539:
  %_x4542 = load i64, i64* %_x4522
  %_unop4543 = xor i64 %_x4542, -1
  %_bop4544 = and i64 %_unop4543, 1
  %_bop4545 = icmp eq i64 %_bop4544, 1
  br i1 %_bop4545, label %_then4564, label %_else4563
_then4564:
  %_y4546 = load i64, i64* %_y4520
  %_bop4547 = and i64 %_y4546, 1
  %_bop4548 = icmp eq i64 %_bop4547, 1
  br i1 %_bop4548, label %_then4561, label %_else4560
_then4561:
  %_y4549 = load i64, i64* %_y4520
  %_x4550 = load i64, i64* %_x4522
  %_bop4551 = lshr i64 %_x4550, 1
  %_result4552 = call i64 @binary_gcd(i64 %_bop4551, i64 %_y4549)
  ret i64 %_result4552
_else4560:
  %_y4553 = load i64, i64* %_y4520
  %_bop4554 = lshr i64 %_y4553, 1
  %_x4555 = load i64, i64* %_x4522
  %_bop4556 = lshr i64 %_x4555, 1
  %_result4557 = call i64 @binary_gcd(i64 %_bop4556, i64 %_bop4554)
  %_bop4558 = shl i64 %_result4557, 1
  ret i64 %_bop4558
_merge4559:
  br label %_merge4562
_else4563:
  br label %_merge4562
_merge4562:
  %_y4565 = load i64, i64* %_y4520
  %_unop4566 = xor i64 %_y4565, -1
  %_bop4567 = and i64 %_unop4566, 1
  %_bop4568 = icmp eq i64 %_bop4567, 1
  br i1 %_bop4568, label %_then4575, label %_else4574
_then4575:
  %_y4569 = load i64, i64* %_y4520
  %_bop4570 = lshr i64 %_y4569, 1
  %_x4571 = load i64, i64* %_x4522
  %_result4572 = call i64 @binary_gcd(i64 %_x4571, i64 %_bop4570)
  ret i64 %_result4572
_else4574:
  br label %_merge4573
_merge4573:
  %_x4576 = load i64, i64* %_x4522
  %_y4577 = load i64, i64* %_y4520
  %_bop4578 = icmp sgt i64 %_x4576, %_y4577
  br i1 %_bop4578, label %_then4587, label %_else4586
_then4587:
  %_y4579 = load i64, i64* %_y4520
  %_x4580 = load i64, i64* %_x4522
  %_y4581 = load i64, i64* %_y4520
  %_bop4582 = sub i64 %_x4580, %_y4581
  %_bop4583 = lshr i64 %_bop4582, 1
  %_result4584 = call i64 @binary_gcd(i64 %_bop4583, i64 %_y4579)
  ret i64 %_result4584
_else4586:
  br label %_merge4585
_merge4585:
  %_x4588 = load i64, i64* %_x4522
  %_y4589 = load i64, i64* %_y4520
  %_x4590 = load i64, i64* %_x4522
  %_bop4591 = sub i64 %_y4589, %_x4590
  %_bop4592 = lshr i64 %_bop4591, 1
  %_result4593 = call i64 @binary_gcd(i64 %_bop4592, i64 %_x4588)
  ret i64 %_result4593
}

define i64 @program(i64 %_argc4512, { i64, [0 x i8*] }* %_argv4510) {
  %_argc4513 = alloca i64
  %_argv4511 = alloca { i64, [0 x i8*] }*
  %_x4514 = alloca i64
  %_y4515 = alloca i64
  store i64 %_argc4512, i64* %_argc4513
  store { i64, [0 x i8*] }* %_argv4510, { i64, [0 x i8*] }** %_argv4511
  store i64 21, i64* %_x4514
  store i64 15, i64* %_y4515
  %_y4516 = load i64, i64* %_y4515
  %_x4517 = load i64, i64* %_x4514
  %_result4518 = call i64 @binary_gcd(i64 %_x4517, i64 %_y4516)
  ret i64 %_result4518
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
