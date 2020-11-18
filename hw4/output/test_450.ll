; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_result733 = call i64 @f2()
  ret i64 %_result733
}

define i64 @f2() {
  %_result732 = call i64 @f3()
  ret i64 %_result732
}

define i64 @f3() {
  %_result731 = call i64 @f4()
  ret i64 %_result731
}

define i64 @f4() {
  %_result730 = call i64 @f5()
  ret i64 %_result730
}

define i64 @f5() {
  %_result729 = call i64 @f6()
  ret i64 %_result729
}

define i64 @f6() {
  %_result728 = call i64 @f7()
  ret i64 %_result728
}

define i64 @f7() {
  %_result727 = call i64 @f8()
  ret i64 %_result727
}

define i64 @f8() {
  %_result726 = call i64 @f9()
  ret i64 %_result726
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %_argc723, { i64, [0 x i8*] }* %_argv721) {
  %_argc724 = alloca i64
  %_argv722 = alloca { i64, [0 x i8*] }*
  store i64 %_argc723, i64* %_argc724
  store { i64, [0 x i8*] }* %_argv721, { i64, [0 x i8*] }** %_argv722
  %_result725 = call i64 @f1()
  ret i64 %_result725
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
