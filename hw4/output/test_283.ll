; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_i2764) {
  %_i2765 = alloca i64
  %_r2766 = alloca i64
  store i64 %_i2764, i64* %_i2765
  store i64 0, i64* %_r2766
  %_i2767 = load i64, i64* %_i2765
  %_bop2768 = icmp eq i64 %_i2767, 0
  br i1 %_bop2768, label %_then2776, label %_else2775
_then2776:
  store i64 1, i64* %_r2766
  br label %_merge2774
_else2775:
  %_i2769 = load i64, i64* %_i2765
  %_i2770 = load i64, i64* %_i2765
  %_bop2771 = sub i64 %_i2770, 1
  %_result2772 = call i64 @f(i64 %_bop2771)
  %_bop2773 = mul i64 %_i2769, %_result2772
  store i64 %_bop2773, i64* %_r2766
  br label %_merge2774
_merge2774:
  %_r2777 = load i64, i64* %_r2766
  ret i64 %_r2777
}

define i64 @program(i64 %_argc2761, { i64, [0 x i8*] }* %_argv2759) {
  %_argc2762 = alloca i64
  %_argv2760 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2761, i64* %_argc2762
  store { i64, [0 x i8*] }* %_argv2759, { i64, [0 x i8*] }** %_argv2760
  %_result2763 = call i64 @f(i64 5)
  ret i64 %_result2763
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
