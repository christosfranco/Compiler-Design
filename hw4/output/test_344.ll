; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %_i772) {
  %_i773 = alloca i64
  store i64 %_i772, i64* %_i773
  %_i774 = load i64, i64* %_i773
  %_result775 = call i64 @f2(i64 %_i774)
  ret i64 %_result775
}

define i64 @f2(i64 %_i768) {
  %_i769 = alloca i64
  store i64 %_i768, i64* %_i769
  %_i770 = load i64, i64* %_i769
  %_result771 = call i64 @f3(i64 %_i770)
  ret i64 %_result771
}

define i64 @f3(i64 %_i764) {
  %_i765 = alloca i64
  store i64 %_i764, i64* %_i765
  %_i766 = load i64, i64* %_i765
  %_result767 = call i64 @f4(i64 %_i766)
  ret i64 %_result767
}

define i64 @f4(i64 %_i760) {
  %_i761 = alloca i64
  store i64 %_i760, i64* %_i761
  %_i762 = load i64, i64* %_i761
  %_result763 = call i64 @f5(i64 %_i762)
  ret i64 %_result763
}

define i64 @f5(i64 %_i756) {
  %_i757 = alloca i64
  store i64 %_i756, i64* %_i757
  %_i758 = load i64, i64* %_i757
  %_result759 = call i64 @f6(i64 %_i758)
  ret i64 %_result759
}

define i64 @f6(i64 %_i752) {
  %_i753 = alloca i64
  store i64 %_i752, i64* %_i753
  %_i754 = load i64, i64* %_i753
  %_result755 = call i64 @f7(i64 %_i754)
  ret i64 %_result755
}

define i64 @f7(i64 %_i748) {
  %_i749 = alloca i64
  store i64 %_i748, i64* %_i749
  %_i750 = load i64, i64* %_i749
  %_result751 = call i64 @f8(i64 %_i750)
  ret i64 %_result751
}

define i64 @f8(i64 %_i744) {
  %_i745 = alloca i64
  store i64 %_i744, i64* %_i745
  %_i746 = load i64, i64* %_i745
  %_result747 = call i64 @f9(i64 %_i746)
  ret i64 %_result747
}

define i64 @f9(i64 %_i741) {
  %_i742 = alloca i64
  store i64 %_i741, i64* %_i742
  %_i743 = load i64, i64* %_i742
  ret i64 %_i743
}

define i64 @program(i64 %_argc737, { i64, [0 x i8*] }* %_argv735) {
  %_argc738 = alloca i64
  %_argv736 = alloca { i64, [0 x i8*] }*
  store i64 %_argc737, i64* %_argc738
  store { i64, [0 x i8*] }* %_argv735, { i64, [0 x i8*] }** %_argv736
  %_argc739 = load i64, i64* %_argc738
  %_result740 = call i64 @f1(i64 %_argc739)
  ret i64 %_result740
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
