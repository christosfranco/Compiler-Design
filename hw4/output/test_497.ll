; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_i2761) {
  %_i2762 = alloca i64
  %_r2763 = alloca i64
  store i64 %_i2761, i64* %_i2762
  store i64 0, i64* %_r2763
  %_i2764 = load i64, i64* %_i2762
  %_bop2765 = icmp eq i64 %_i2764, 0
  br i1 %_bop2765, label %_then2773, label %_else2772
_then2773:
  store i64 1, i64* %_r2763
  br label %_merge2771
_else2772:
  %_i2766 = load i64, i64* %_i2762
  %_i2767 = load i64, i64* %_i2762
  %_bop2768 = sub i64 %_i2767, 1
  %_result2769 = call i64 @f(i64 %_bop2768)
  %_bop2770 = mul i64 %_i2766, %_result2769
  store i64 %_bop2770, i64* %_r2763
  br label %_merge2771
_merge2771:
  %_r2774 = load i64, i64* %_r2763
  ret i64 %_r2774
}

define i64 @program(i64 %_argc2758, { i64, [0 x i8*] }* %_argv2756) {
  %_argc2759 = alloca i64
  %_argv2757 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2758, i64* %_argc2759
  store { i64, [0 x i8*] }* %_argv2756, { i64, [0 x i8*] }** %_argv2757
  %_result2760 = call i64 @f(i64 5)
  ret i64 %_result2760
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
