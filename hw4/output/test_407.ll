; generated from: oatprograms/gcd.oat
target triple = "x86_64-unknown-linux"
define i64 @gcd(i64 %_a4912, i64 %_b4910) {
  %_a4913 = alloca i64
  %_b4911 = alloca i64
  %_t4920 = alloca i64
  store i64 %_a4912, i64* %_a4913
  store i64 %_b4910, i64* %_b4911
  br label %_cond4918
_cond4918:
  %_b4914 = load i64, i64* %_b4911
  %_bop4915 = icmp ne i64 %_b4914, 0
  br i1 %_bop4915, label %_body4917, label %_post4916
_body4917:
  %_b4919 = load i64, i64* %_b4911
  store i64 %_b4919, i64* %_t4920
  %_b4921 = load i64, i64* %_b4911
  %_a4922 = load i64, i64* %_a4913
  %_result4923 = call i64 @mod(i64 %_a4922, i64 %_b4921)
  store i64 %_result4923, i64* %_b4911
  %_t4924 = load i64, i64* %_t4920
  store i64 %_t4924, i64* %_a4913
  br label %_cond4918
_post4916:
  %_a4925 = load i64, i64* %_a4913
  ret i64 %_a4925
}

define i64 @mod(i64 %_a4895, i64 %_b4893) {
  %_a4896 = alloca i64
  %_b4894 = alloca i64
  %_t4898 = alloca i64
  store i64 %_a4895, i64* %_a4896
  store i64 %_b4893, i64* %_b4894
  %_a4897 = load i64, i64* %_a4896
  store i64 %_a4897, i64* %_t4898
  br label %_cond4905
_cond4905:
  %_t4899 = load i64, i64* %_t4898
  %_b4900 = load i64, i64* %_b4894
  %_bop4901 = sub i64 %_t4899, %_b4900
  %_bop4902 = icmp sge i64 %_bop4901, 0
  br i1 %_bop4902, label %_body4904, label %_post4903
_body4904:
  %_t4906 = load i64, i64* %_t4898
  %_b4907 = load i64, i64* %_b4894
  %_bop4908 = sub i64 %_t4906, %_b4907
  store i64 %_bop4908, i64* %_t4898
  br label %_cond4905
_post4903:
  %_t4909 = load i64, i64* %_t4898
  ret i64 %_t4909
}

define i64 @program(i64 %_argc4886, { i64, [0 x i8*] }* %_argv4884) {
  %_argc4887 = alloca i64
  %_argv4885 = alloca { i64, [0 x i8*] }*
  %_a4888 = alloca i64
  %_b4889 = alloca i64
  store i64 %_argc4886, i64* %_argc4887
  store { i64, [0 x i8*] }* %_argv4884, { i64, [0 x i8*] }** %_argv4885
  store i64 64, i64* %_a4888
  store i64 48, i64* %_b4889
  %_b4890 = load i64, i64* %_b4889
  %_a4891 = load i64, i64* %_a4888
  %_result4892 = call i64 @gcd(i64 %_a4891, i64 %_b4890)
  ret i64 %_result4892
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
