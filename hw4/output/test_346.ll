; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x1808, i64 %_x2806, i64 %_x3804, i64 %_x4802, i64 %_x5800, i64 %_x6798, i64 %_x7796, i64 %_x8794) {
  %_x1809 = alloca i64
  %_x2807 = alloca i64
  %_x3805 = alloca i64
  %_x4803 = alloca i64
  %_x5801 = alloca i64
  %_x6799 = alloca i64
  %_x7797 = alloca i64
  %_x8795 = alloca i64
  store i64 %_x1808, i64* %_x1809
  store i64 %_x2806, i64* %_x2807
  store i64 %_x3804, i64* %_x3805
  store i64 %_x4802, i64* %_x4803
  store i64 %_x5800, i64* %_x5801
  store i64 %_x6798, i64* %_x6799
  store i64 %_x7796, i64* %_x7797
  store i64 %_x8794, i64* %_x8795
  %_x1810 = load i64, i64* %_x1809
  %_x2811 = load i64, i64* %_x2807
  %_bop812 = add i64 %_x1810, %_x2811
  %_x3813 = load i64, i64* %_x3805
  %_bop814 = add i64 %_bop812, %_x3813
  %_x4815 = load i64, i64* %_x4803
  %_bop816 = add i64 %_bop814, %_x4815
  %_x5817 = load i64, i64* %_x5801
  %_bop818 = add i64 %_bop816, %_x5817
  %_x6819 = load i64, i64* %_x6799
  %_bop820 = add i64 %_bop818, %_x6819
  %_x7821 = load i64, i64* %_x7797
  %_bop822 = add i64 %_bop820, %_x7821
  %_x8823 = load i64, i64* %_x8795
  %_bop824 = add i64 %_bop822, %_x8823
  ret i64 %_bop824
}

define i64 @program(i64 %_argc788, { i64, [0 x i8*] }* %_argv786) {
  %_argc789 = alloca i64
  %_argv787 = alloca { i64, [0 x i8*] }*
  store i64 %_argc788, i64* %_argc789
  store { i64, [0 x i8*] }* %_argv786, { i64, [0 x i8*] }** %_argv787
  %_unop790 = sub i64 0, 3
  %_unop791 = sub i64 0, 4
  %_unop792 = sub i64 0, 5
  %_result793 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop792, i64 %_unop791, i64 %_unop790)
  ret i64 %_result793
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
