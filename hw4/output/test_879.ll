; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %_i744) {
  %_i745 = alloca i64
  store i64 %_i744, i64* %_i745
  %_i746 = load i64, i64* %_i745
  %_result747 = call i64 @f2(i64 %_i746)
  ret i64 %_result747
}

define i64 @f2(i64 %_i740) {
  %_i741 = alloca i64
  store i64 %_i740, i64* %_i741
  %_i742 = load i64, i64* %_i741
  %_result743 = call i64 @f3(i64 %_i742)
  ret i64 %_result743
}

define i64 @f3(i64 %_i736) {
  %_i737 = alloca i64
  store i64 %_i736, i64* %_i737
  %_i738 = load i64, i64* %_i737
  %_result739 = call i64 @f4(i64 %_i738)
  ret i64 %_result739
}

define i64 @f4(i64 %_i732) {
  %_i733 = alloca i64
  store i64 %_i732, i64* %_i733
  %_i734 = load i64, i64* %_i733
  %_result735 = call i64 @f5(i64 %_i734)
  ret i64 %_result735
}

define i64 @f5(i64 %_i728) {
  %_i729 = alloca i64
  store i64 %_i728, i64* %_i729
  %_i730 = load i64, i64* %_i729
  %_result731 = call i64 @f6(i64 %_i730)
  ret i64 %_result731
}

define i64 @f6(i64 %_i724) {
  %_i725 = alloca i64
  store i64 %_i724, i64* %_i725
  %_i726 = load i64, i64* %_i725
  %_result727 = call i64 @f7(i64 %_i726)
  ret i64 %_result727
}

define i64 @f7(i64 %_i720) {
  %_i721 = alloca i64
  store i64 %_i720, i64* %_i721
  %_i722 = load i64, i64* %_i721
  %_result723 = call i64 @f8(i64 %_i722)
  ret i64 %_result723
}

define i64 @f8(i64 %_i716) {
  %_i717 = alloca i64
  store i64 %_i716, i64* %_i717
  %_i718 = load i64, i64* %_i717
  %_result719 = call i64 @f9(i64 %_i718)
  ret i64 %_result719
}

define i64 @f9(i64 %_i713) {
  %_i714 = alloca i64
  store i64 %_i713, i64* %_i714
  %_i715 = load i64, i64* %_i714
  ret i64 %_i715
}

define i64 @program(i64 %_argc709, { i64, [0 x i8*] }* %_argv707) {
  %_argc710 = alloca i64
  %_argv708 = alloca { i64, [0 x i8*] }*
  store i64 %_argc709, i64* %_argc710
  store { i64, [0 x i8*] }* %_argv707, { i64, [0 x i8*] }** %_argv708
  %_argc711 = load i64, i64* %_argc710
  %_result712 = call i64 @f1(i64 %_argc711)
  ret i64 %_result712
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
