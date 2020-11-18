; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_result538 = call i64 @f2()
  ret i64 %_result538
}

define i64 @f2() {
  %_result537 = call i64 @f3()
  ret i64 %_result537
}

define i64 @f3() {
  %_result536 = call i64 @f4()
  ret i64 %_result536
}

define i64 @f4() {
  %_result535 = call i64 @f5()
  ret i64 %_result535
}

define i64 @f5() {
  %_result534 = call i64 @f6()
  ret i64 %_result534
}

define i64 @f6() {
  %_result533 = call i64 @f7()
  ret i64 %_result533
}

define i64 @f7() {
  %_result532 = call i64 @f8()
  ret i64 %_result532
}

define i64 @f8() {
  %_result531 = call i64 @f9()
  ret i64 %_result531
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %_argc528, { i64, [0 x i8*] }* %_argv526) {
  %_argc529 = alloca i64
  %_argv527 = alloca { i64, [0 x i8*] }*
  store i64 %_argc528, i64* %_argc529
  store { i64, [0 x i8*] }* %_argv526, { i64, [0 x i8*] }** %_argv527
  %_result530 = call i64 @f1()
  ret i64 %_result530
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
