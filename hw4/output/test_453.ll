; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x1807, i64 %_x2805, i64 %_x3803, i64 %_x4801, i64 %_x5799, i64 %_x6797, i64 %_x7795, i64 %_x8793) {
  %_x1808 = alloca i64
  %_x2806 = alloca i64
  %_x3804 = alloca i64
  %_x4802 = alloca i64
  %_x5800 = alloca i64
  %_x6798 = alloca i64
  %_x7796 = alloca i64
  %_x8794 = alloca i64
  store i64 %_x1807, i64* %_x1808
  store i64 %_x2805, i64* %_x2806
  store i64 %_x3803, i64* %_x3804
  store i64 %_x4801, i64* %_x4802
  store i64 %_x5799, i64* %_x5800
  store i64 %_x6797, i64* %_x6798
  store i64 %_x7795, i64* %_x7796
  store i64 %_x8793, i64* %_x8794
  %_x1809 = load i64, i64* %_x1808
  %_x2810 = load i64, i64* %_x2806
  %_bop811 = add i64 %_x1809, %_x2810
  %_x3812 = load i64, i64* %_x3804
  %_bop813 = add i64 %_bop811, %_x3812
  %_x4814 = load i64, i64* %_x4802
  %_bop815 = add i64 %_bop813, %_x4814
  %_x5816 = load i64, i64* %_x5800
  %_bop817 = add i64 %_bop815, %_x5816
  %_x6818 = load i64, i64* %_x6798
  %_bop819 = add i64 %_bop817, %_x6818
  %_x7820 = load i64, i64* %_x7796
  %_bop821 = add i64 %_bop819, %_x7820
  %_x8822 = load i64, i64* %_x8794
  %_bop823 = add i64 %_bop821, %_x8822
  ret i64 %_bop823
}

define i64 @program(i64 %_argc787, { i64, [0 x i8*] }* %_argv785) {
  %_argc788 = alloca i64
  %_argv786 = alloca { i64, [0 x i8*] }*
  store i64 %_argc787, i64* %_argc788
  store { i64, [0 x i8*] }* %_argv785, { i64, [0 x i8*] }** %_argv786
  %_unop789 = sub i64 0, 3
  %_unop790 = sub i64 0, 4
  %_unop791 = sub i64 0, 5
  %_result792 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop791, i64 %_unop790, i64 %_unop789)
  ret i64 %_result792
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
