; generated from: oatprograms/run41.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x1780, i64 %_x2778, i64 %_x3776, i64 %_x4774, i64 %_x5772, i64 %_x6770, i64 %_x7768, i64 %_x8766) {
  %_x1781 = alloca i64
  %_x2779 = alloca i64
  %_x3777 = alloca i64
  %_x4775 = alloca i64
  %_x5773 = alloca i64
  %_x6771 = alloca i64
  %_x7769 = alloca i64
  %_x8767 = alloca i64
  store i64 %_x1780, i64* %_x1781
  store i64 %_x2778, i64* %_x2779
  store i64 %_x3776, i64* %_x3777
  store i64 %_x4774, i64* %_x4775
  store i64 %_x5772, i64* %_x5773
  store i64 %_x6770, i64* %_x6771
  store i64 %_x7768, i64* %_x7769
  store i64 %_x8766, i64* %_x8767
  %_x1782 = load i64, i64* %_x1781
  %_x2783 = load i64, i64* %_x2779
  %_bop784 = add i64 %_x1782, %_x2783
  %_x3785 = load i64, i64* %_x3777
  %_bop786 = add i64 %_bop784, %_x3785
  %_x4787 = load i64, i64* %_x4775
  %_bop788 = add i64 %_bop786, %_x4787
  %_x5789 = load i64, i64* %_x5773
  %_bop790 = add i64 %_bop788, %_x5789
  %_x6791 = load i64, i64* %_x6771
  %_bop792 = add i64 %_bop790, %_x6791
  %_x7793 = load i64, i64* %_x7769
  %_bop794 = add i64 %_bop792, %_x7793
  %_x8795 = load i64, i64* %_x8767
  %_bop796 = add i64 %_bop794, %_x8795
  ret i64 %_bop796
}

define i64 @program(i64 %_argc760, { i64, [0 x i8*] }* %_argv758) {
  %_argc761 = alloca i64
  %_argv759 = alloca { i64, [0 x i8*] }*
  store i64 %_argc760, i64* %_argc761
  store { i64, [0 x i8*] }* %_argv758, { i64, [0 x i8*] }** %_argv759
  %_unop762 = sub i64 0, 3
  %_unop763 = sub i64 0, 4
  %_unop764 = sub i64 0, 5
  %_result765 = call i64 @f(i64 1, i64 2, i64 3, i64 4, i64 5, i64 %_unop764, i64 %_unop763, i64 %_unop762)
  ret i64 %_result765
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
