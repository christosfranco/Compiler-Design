; generated from: oatprograms/binary_gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @binary_gcd(i64 %_x4524, i64 %_y4522) {
  %_x4525 = alloca i64
  %_y4523 = alloca i64
  store i64 %_x4524, i64* %_x4525
  store i64 %_y4522, i64* %_y4523
  %_x4526 = load i64, i64* %_x4525
  %_y4527 = load i64, i64* %_y4523
  %_bop4528 = icmp eq i64 %_x4526, %_y4527
  br i1 %_bop4528, label %_then4532, label %_else4531
_then4532:
  %_x4529 = load i64, i64* %_x4525
  ret i64 %_x4529
_else4531:
  br label %_merge4530
_merge4530:
  %_x4533 = load i64, i64* %_x4525
  %_bop4534 = icmp eq i64 %_x4533, 0
  br i1 %_bop4534, label %_then4538, label %_else4537
_then4538:
  %_y4535 = load i64, i64* %_y4523
  ret i64 %_y4535
_else4537:
  br label %_merge4536
_merge4536:
  %_y4539 = load i64, i64* %_y4523
  %_bop4540 = icmp eq i64 %_y4539, 0
  br i1 %_bop4540, label %_then4544, label %_else4543
_then4544:
  %_x4541 = load i64, i64* %_x4525
  ret i64 %_x4541
_else4543:
  br label %_merge4542
_merge4542:
  %_x4545 = load i64, i64* %_x4525
  %_unop4546 = xor i64 %_x4545, -1
  %_bop4547 = and i64 %_unop4546, 1
  %_bop4548 = icmp eq i64 %_bop4547, 1
  br i1 %_bop4548, label %_then4567, label %_else4566
_then4567:
  %_y4549 = load i64, i64* %_y4523
  %_bop4550 = and i64 %_y4549, 1
  %_bop4551 = icmp eq i64 %_bop4550, 1
  br i1 %_bop4551, label %_then4564, label %_else4563
_then4564:
  %_y4552 = load i64, i64* %_y4523
  %_x4553 = load i64, i64* %_x4525
  %_bop4554 = lshr i64 %_x4553, 1
  %_result4555 = call i64 @binary_gcd(i64 %_bop4554, i64 %_y4552)
  ret i64 %_result4555
_else4563:
  %_y4556 = load i64, i64* %_y4523
  %_bop4557 = lshr i64 %_y4556, 1
  %_x4558 = load i64, i64* %_x4525
  %_bop4559 = lshr i64 %_x4558, 1
  %_result4560 = call i64 @binary_gcd(i64 %_bop4559, i64 %_bop4557)
  %_bop4561 = shl i64 %_result4560, 1
  ret i64 %_bop4561
_merge4562:
  br label %_merge4565
_else4566:
  br label %_merge4565
_merge4565:
  %_y4568 = load i64, i64* %_y4523
  %_unop4569 = xor i64 %_y4568, -1
  %_bop4570 = and i64 %_unop4569, 1
  %_bop4571 = icmp eq i64 %_bop4570, 1
  br i1 %_bop4571, label %_then4578, label %_else4577
_then4578:
  %_y4572 = load i64, i64* %_y4523
  %_bop4573 = lshr i64 %_y4572, 1
  %_x4574 = load i64, i64* %_x4525
  %_result4575 = call i64 @binary_gcd(i64 %_x4574, i64 %_bop4573)
  ret i64 %_result4575
_else4577:
  br label %_merge4576
_merge4576:
  %_x4579 = load i64, i64* %_x4525
  %_y4580 = load i64, i64* %_y4523
  %_bop4581 = icmp sgt i64 %_x4579, %_y4580
  br i1 %_bop4581, label %_then4590, label %_else4589
_then4590:
  %_y4582 = load i64, i64* %_y4523
  %_x4583 = load i64, i64* %_x4525
  %_y4584 = load i64, i64* %_y4523
  %_bop4585 = sub i64 %_x4583, %_y4584
  %_bop4586 = lshr i64 %_bop4585, 1
  %_result4587 = call i64 @binary_gcd(i64 %_bop4586, i64 %_y4582)
  ret i64 %_result4587
_else4589:
  br label %_merge4588
_merge4588:
  %_x4591 = load i64, i64* %_x4525
  %_y4592 = load i64, i64* %_y4523
  %_x4593 = load i64, i64* %_x4525
  %_bop4594 = sub i64 %_y4592, %_x4593
  %_bop4595 = lshr i64 %_bop4594, 1
  %_result4596 = call i64 @binary_gcd(i64 %_bop4595, i64 %_x4591)
  ret i64 %_result4596
}

define i64 @program(i64 %_argc4515, { i64, [0 x i8*] }* %_argv4513) {
  %_argc4516 = alloca i64
  %_argv4514 = alloca { i64, [0 x i8*] }*
  %_x4517 = alloca i64
  %_y4518 = alloca i64
  store i64 %_argc4515, i64* %_argc4516
  store { i64, [0 x i8*] }* %_argv4513, { i64, [0 x i8*] }** %_argv4514
  store i64 21, i64* %_x4517
  store i64 15, i64* %_y4518
  %_y4519 = load i64, i64* %_y4518
  %_x4520 = load i64, i64* %_x4517
  %_result4521 = call i64 @binary_gcd(i64 %_x4520, i64 %_y4519)
  ret i64 %_result4521
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
