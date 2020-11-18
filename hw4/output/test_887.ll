; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %_x908) {
  %_x909 = alloca i64
  %_acc910 = alloca i64
  store i64 %_x908, i64* %_x909
  store i64 1, i64* %_acc910
  br label %_cond915
_cond915:
  %_x911 = load i64, i64* %_x909
  %_bop912 = icmp sgt i64 %_x911, 0
  br i1 %_bop912, label %_body914, label %_post913
_body914:
  %_acc916 = load i64, i64* %_acc910
  %_x917 = load i64, i64* %_x909
  %_bop918 = mul i64 %_acc916, %_x917
  store i64 %_bop918, i64* %_acc910
  %_x919 = load i64, i64* %_x909
  %_bop920 = sub i64 %_x919, 1
  store i64 %_bop920, i64* %_x909
  br label %_cond915
_post913:
  %_acc921 = load i64, i64* %_acc910
  ret i64 %_acc921
}

define i64 @program(i64 %_argc903, { i64, [0 x i8*] }* %_argv901) {
  %_argc904 = alloca i64
  %_argv902 = alloca { i64, [0 x i8*] }*
  store i64 %_argc903, i64* %_argc904
  store { i64, [0 x i8*] }* %_argv901, { i64, [0 x i8*] }** %_argv902
  %_result905 = call i64 @fact(i64 5)
  %_result906 = call i8* @string_of_int(i64 %_result905)
  call void @print_string(i8* %_result906)
  ret i64 0
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
