; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %_a4909, i64 %_b4907) {
  %_a4910 = alloca i64
  %_b4908 = alloca i64
  %_t4917 = alloca i64
  store i64 %_a4909, i64* %_a4910
  store i64 %_b4907, i64* %_b4908
  br label %_cond4915
_cond4915:
  %_b4911 = load i64, i64* %_b4908
  %_bop4912 = icmp ne i64 %_b4911, 0
  br i1 %_bop4912, label %_body4914, label %_post4913
_body4914:
  %_b4916 = load i64, i64* %_b4908
  store i64 %_b4916, i64* %_t4917
  %_b4918 = load i64, i64* %_b4908
  %_a4919 = load i64, i64* %_a4910
  %_result4920 = call i64 @mod(i64 %_a4919, i64 %_b4918)
  store i64 %_result4920, i64* %_b4908
  %_t4921 = load i64, i64* %_t4917
  store i64 %_t4921, i64* %_a4910
  br label %_cond4915
_post4913:
  %_a4922 = load i64, i64* %_a4910
  ret i64 %_a4922
}

define i64 @mod(i64 %_a4892, i64 %_b4890) {
  %_a4893 = alloca i64
  %_b4891 = alloca i64
  %_t4895 = alloca i64
  store i64 %_a4892, i64* %_a4893
  store i64 %_b4890, i64* %_b4891
  %_a4894 = load i64, i64* %_a4893
  store i64 %_a4894, i64* %_t4895
  br label %_cond4902
_cond4902:
  %_t4896 = load i64, i64* %_t4895
  %_b4897 = load i64, i64* %_b4891
  %_bop4898 = sub i64 %_t4896, %_b4897
  %_bop4899 = icmp sge i64 %_bop4898, 0
  br i1 %_bop4899, label %_body4901, label %_post4900
_body4901:
  %_t4903 = load i64, i64* %_t4895
  %_b4904 = load i64, i64* %_b4891
  %_bop4905 = sub i64 %_t4903, %_b4904
  store i64 %_bop4905, i64* %_t4895
  br label %_cond4902
_post4900:
  %_t4906 = load i64, i64* %_t4895
  ret i64 %_t4906
}

define i64 @program(i64 %_argc4883, { i64, [0 x i8*] }* %_argv4881) {
  %_argc4884 = alloca i64
  %_argv4882 = alloca { i64, [0 x i8*] }*
  %_a4885 = alloca i64
  %_b4886 = alloca i64
  store i64 %_argc4883, i64* %_argc4884
  store { i64, [0 x i8*] }* %_argv4881, { i64, [0 x i8*] }** %_argv4882
  store i64 64, i64* %_a4885
  store i64 48, i64* %_b4886
  %_b4887 = load i64, i64* %_b4886
  %_a4888 = load i64, i64* %_a4885
  %_result4889 = call i64 @gcd(i64 %_a4888, i64 %_b4887)
  ret i64 %_result4889
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
