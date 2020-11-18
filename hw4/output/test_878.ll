; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_result706 = call i64 @f2()
  ret i64 %_result706
}

define i64 @f2() {
  %_result705 = call i64 @f3()
  ret i64 %_result705
}

define i64 @f3() {
  %_result704 = call i64 @f4()
  ret i64 %_result704
}

define i64 @f4() {
  %_result703 = call i64 @f5()
  ret i64 %_result703
}

define i64 @f5() {
  %_result702 = call i64 @f6()
  ret i64 %_result702
}

define i64 @f6() {
  %_result701 = call i64 @f7()
  ret i64 %_result701
}

define i64 @f7() {
  %_result700 = call i64 @f8()
  ret i64 %_result700
}

define i64 @f8() {
  %_result699 = call i64 @f9()
  ret i64 %_result699
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %_argc696, { i64, [0 x i8*] }* %_argv694) {
  %_argc697 = alloca i64
  %_argv695 = alloca { i64, [0 x i8*] }*
  store i64 %_argc696, i64* %_argc697
  store { i64, [0 x i8*] }* %_argv694, { i64, [0 x i8*] }** %_argv695
  %_result698 = call i64 @f1()
  ret i64 %_result698
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
