; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %_a4583, i64 %_b4581) {
  %_a4584 = alloca i64
  %_b4582 = alloca i64
  %_t4591 = alloca i64
  store i64 %_a4583, i64* %_a4584
  store i64 %_b4581, i64* %_b4582
  br label %_cond4589
_cond4589:
  %_b4585 = load i64, i64* %_b4582
  %_bop4586 = icmp ne i64 %_b4585, 0
  br i1 %_bop4586, label %_body4588, label %_post4587
_body4588:
  %_b4590 = load i64, i64* %_b4582
  store i64 %_b4590, i64* %_t4591
  %_b4592 = load i64, i64* %_b4582
  %_a4593 = load i64, i64* %_a4584
  %_result4594 = call i64 @mod(i64 %_a4593, i64 %_b4592)
  store i64 %_result4594, i64* %_b4582
  %_t4595 = load i64, i64* %_t4591
  store i64 %_t4595, i64* %_a4584
  br label %_cond4589
_post4587:
  %_a4596 = load i64, i64* %_a4584
  ret i64 %_a4596
}

define i64 @mod(i64 %_a4566, i64 %_b4564) {
  %_a4567 = alloca i64
  %_b4565 = alloca i64
  %_t4569 = alloca i64
  store i64 %_a4566, i64* %_a4567
  store i64 %_b4564, i64* %_b4565
  %_a4568 = load i64, i64* %_a4567
  store i64 %_a4568, i64* %_t4569
  br label %_cond4576
_cond4576:
  %_t4570 = load i64, i64* %_t4569
  %_b4571 = load i64, i64* %_b4565
  %_bop4572 = sub i64 %_t4570, %_b4571
  %_bop4573 = icmp sge i64 %_bop4572, 0
  br i1 %_bop4573, label %_body4575, label %_post4574
_body4575:
  %_t4577 = load i64, i64* %_t4569
  %_b4578 = load i64, i64* %_b4565
  %_bop4579 = sub i64 %_t4577, %_b4578
  store i64 %_bop4579, i64* %_t4569
  br label %_cond4576
_post4574:
  %_t4580 = load i64, i64* %_t4569
  ret i64 %_t4580
}

define i64 @program(i64 %_argc4557, { i64, [0 x i8*] }* %_argv4555) {
  %_argc4558 = alloca i64
  %_argv4556 = alloca { i64, [0 x i8*] }*
  %_a4559 = alloca i64
  %_b4560 = alloca i64
  store i64 %_argc4557, i64* %_argc4558
  store { i64, [0 x i8*] }* %_argv4555, { i64, [0 x i8*] }** %_argv4556
  store i64 64, i64* %_a4559
  store i64 48, i64* %_b4560
  %_b4561 = load i64, i64* %_b4560
  %_a4562 = load i64, i64* %_a4559
  %_result4563 = call i64 @gcd(i64 %_a4562, i64 %_b4561)
  ret i64 %_result4563
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
