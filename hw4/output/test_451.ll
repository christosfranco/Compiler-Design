; generated from: oatprograms/run39.oat
target triple = "x86_64-unknown-linux"
define i64 @f1(i64 %_i771) {
  %_i772 = alloca i64
  store i64 %_i771, i64* %_i772
  %_i773 = load i64, i64* %_i772
  %_result774 = call i64 @f2(i64 %_i773)
  ret i64 %_result774
}

define i64 @f2(i64 %_i767) {
  %_i768 = alloca i64
  store i64 %_i767, i64* %_i768
  %_i769 = load i64, i64* %_i768
  %_result770 = call i64 @f3(i64 %_i769)
  ret i64 %_result770
}

define i64 @f3(i64 %_i763) {
  %_i764 = alloca i64
  store i64 %_i763, i64* %_i764
  %_i765 = load i64, i64* %_i764
  %_result766 = call i64 @f4(i64 %_i765)
  ret i64 %_result766
}

define i64 @f4(i64 %_i759) {
  %_i760 = alloca i64
  store i64 %_i759, i64* %_i760
  %_i761 = load i64, i64* %_i760
  %_result762 = call i64 @f5(i64 %_i761)
  ret i64 %_result762
}

define i64 @f5(i64 %_i755) {
  %_i756 = alloca i64
  store i64 %_i755, i64* %_i756
  %_i757 = load i64, i64* %_i756
  %_result758 = call i64 @f6(i64 %_i757)
  ret i64 %_result758
}

define i64 @f6(i64 %_i751) {
  %_i752 = alloca i64
  store i64 %_i751, i64* %_i752
  %_i753 = load i64, i64* %_i752
  %_result754 = call i64 @f7(i64 %_i753)
  ret i64 %_result754
}

define i64 @f7(i64 %_i747) {
  %_i748 = alloca i64
  store i64 %_i747, i64* %_i748
  %_i749 = load i64, i64* %_i748
  %_result750 = call i64 @f8(i64 %_i749)
  ret i64 %_result750
}

define i64 @f8(i64 %_i743) {
  %_i744 = alloca i64
  store i64 %_i743, i64* %_i744
  %_i745 = load i64, i64* %_i744
  %_result746 = call i64 @f9(i64 %_i745)
  ret i64 %_result746
}

define i64 @f9(i64 %_i740) {
  %_i741 = alloca i64
  store i64 %_i740, i64* %_i741
  %_i742 = load i64, i64* %_i741
  ret i64 %_i742
}

define i64 @program(i64 %_argc736, { i64, [0 x i8*] }* %_argv734) {
  %_argc737 = alloca i64
  %_argv735 = alloca { i64, [0 x i8*] }*
  store i64 %_argc736, i64* %_argc737
  store { i64, [0 x i8*] }* %_argv734, { i64, [0 x i8*] }** %_argv735
  %_argc738 = load i64, i64* %_argc737
  %_result739 = call i64 @f1(i64 %_argc738)
  ret i64 %_result739
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
