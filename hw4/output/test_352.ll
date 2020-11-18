; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %_x942) {
  %_x943 = alloca i64
  %_acc944 = alloca i64
  store i64 %_x942, i64* %_x943
  store i64 1, i64* %_acc944
  br label %_cond949
_cond949:
  %_x945 = load i64, i64* %_x943
  %_bop946 = icmp sgt i64 %_x945, 0
  br i1 %_bop946, label %_body948, label %_post947
_body948:
  %_acc950 = load i64, i64* %_acc944
  %_x951 = load i64, i64* %_x943
  %_bop952 = mul i64 %_acc950, %_x951
  store i64 %_bop952, i64* %_acc944
  %_x953 = load i64, i64* %_x943
  %_bop954 = sub i64 %_x953, 1
  store i64 %_bop954, i64* %_x943
  br label %_cond949
_post947:
  %_acc955 = load i64, i64* %_acc944
  ret i64 %_acc955
}

define i64 @program(i64 %_argc937, { i64, [0 x i8*] }* %_argv935) {
  %_argc938 = alloca i64
  %_argv936 = alloca { i64, [0 x i8*] }*
  store i64 %_argc937, i64* %_argc938
  store { i64, [0 x i8*] }* %_argv935, { i64, [0 x i8*] }** %_argv936
  %_result939 = call i64 @fact(i64 5)
  %_result940 = call i8* @string_of_int(i64 %_result939)
  call void @print_string(i8* %_result940)
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
