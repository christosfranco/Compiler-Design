; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %_i576) {
  %_i577 = alloca i64
  store i64 %_i576, i64* %_i577
  %_i578 = load i64, i64* %_i577
  %_result579 = call i64 @f2(i64 %_i578)
  ret i64 %_result579
}

define i64 @f2(i64 %_i572) {
  %_i573 = alloca i64
  store i64 %_i572, i64* %_i573
  %_i574 = load i64, i64* %_i573
  %_result575 = call i64 @f3(i64 %_i574)
  ret i64 %_result575
}

define i64 @f3(i64 %_i568) {
  %_i569 = alloca i64
  store i64 %_i568, i64* %_i569
  %_i570 = load i64, i64* %_i569
  %_result571 = call i64 @f4(i64 %_i570)
  ret i64 %_result571
}

define i64 @f4(i64 %_i564) {
  %_i565 = alloca i64
  store i64 %_i564, i64* %_i565
  %_i566 = load i64, i64* %_i565
  %_result567 = call i64 @f5(i64 %_i566)
  ret i64 %_result567
}

define i64 @f5(i64 %_i560) {
  %_i561 = alloca i64
  store i64 %_i560, i64* %_i561
  %_i562 = load i64, i64* %_i561
  %_result563 = call i64 @f6(i64 %_i562)
  ret i64 %_result563
}

define i64 @f6(i64 %_i556) {
  %_i557 = alloca i64
  store i64 %_i556, i64* %_i557
  %_i558 = load i64, i64* %_i557
  %_result559 = call i64 @f7(i64 %_i558)
  ret i64 %_result559
}

define i64 @f7(i64 %_i552) {
  %_i553 = alloca i64
  store i64 %_i552, i64* %_i553
  %_i554 = load i64, i64* %_i553
  %_result555 = call i64 @f8(i64 %_i554)
  ret i64 %_result555
}

define i64 @f8(i64 %_i548) {
  %_i549 = alloca i64
  store i64 %_i548, i64* %_i549
  %_i550 = load i64, i64* %_i549
  %_result551 = call i64 @f9(i64 %_i550)
  ret i64 %_result551
}

define i64 @f9(i64 %_i545) {
  %_i546 = alloca i64
  store i64 %_i545, i64* %_i546
  %_i547 = load i64, i64* %_i546
  ret i64 %_i547
}

define i64 @program(i64 %_argc541, { i64, [0 x i8*] }* %_argv539) {
  %_argc542 = alloca i64
  %_argv540 = alloca { i64, [0 x i8*] }*
  store i64 %_argc541, i64* %_argc542
  store { i64, [0 x i8*] }* %_argv539, { i64, [0 x i8*] }** %_argv540
  %_argc543 = load i64, i64* %_argc542
  %_result544 = call i64 @f1(i64 %_argc543)
  ret i64 %_result544
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
