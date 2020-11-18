; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x1612, i64 %_x2610, i64 %_x3608, i64 %_x4606, i64 %_x5604, i64 %_x6602, i64 %_x7600, i64 %_x8598) {
  %_x1613 = alloca i64
  %_x2611 = alloca i64
  %_x3609 = alloca i64
  %_x4607 = alloca i64
  %_x5605 = alloca i64
  %_x6603 = alloca i64
  %_x7601 = alloca i64
  %_x8599 = alloca i64
  store i64 %_x1612, i64* %_x1613
  store i64 %_x2610, i64* %_x2611
  store i64 %_x3608, i64* %_x3609
  store i64 %_x4606, i64* %_x4607
  store i64 %_x5604, i64* %_x5605
  store i64 %_x6602, i64* %_x6603
  store i64 %_x7600, i64* %_x7601
  store i64 %_x8598, i64* %_x8599
  %_x1614 = load i64, i64* %_x1613
  %_x2615 = load i64, i64* %_x2611
  %_bop616 = add i64 %_x1614, %_x2615
  %_x3617 = load i64, i64* %_x3609
  %_bop618 = add i64 %_bop616, %_x3617
  %_x4619 = load i64, i64* %_x4607
  %_bop620 = add i64 %_bop618, %_x4619
  %_x5621 = load i64, i64* %_x5605
  %_bop622 = add i64 %_bop620, %_x5621
  %_x6623 = load i64, i64* %_x6603
  %_bop624 = add i64 %_bop622, %_x6623
  %_x7625 = load i64, i64* %_x7601
  %_bop626 = add i64 %_bop624, %_x7625
  %_x8627 = load i64, i64* %_x8599
  %_bop628 = add i64 %_bop626, %_x8627
  ret i64 %_bop628
}

define i64 @program(i64 %_argc592, { i64, [0 x i8*] }* %_argv590) {
  %_argc593 = alloca i64
  %_argv591 = alloca { i64, [0 x i8*] }*
  store i64 %_argc592, i64* %_argc593
  store { i64, [0 x i8*] }* %_argv590, { i64, [0 x i8*] }** %_argv591
  %_unop594 = sub i64 0, 3
  %_unop595 = sub i64 0, 4
  %_unop596 = sub i64 0, 5
  %_result597 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop596, i64 %_unop595, i64 %_unop594)
  ret i64 %_result597
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
