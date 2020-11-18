; generated from: oatprograms/run38.oat
target triple = "x86_64-unknown-linux"
define i64 @f1() {
  %_result467 = call i64 @f2()
  ret i64 %_result467
}

define i64 @f2() {
  %_result466 = call i64 @f3()
  ret i64 %_result466
}

define i64 @f3() {
  %_result465 = call i64 @f4()
  ret i64 %_result465
}

define i64 @f4() {
  %_result464 = call i64 @f5()
  ret i64 %_result464
}

define i64 @f5() {
  %_result463 = call i64 @f6()
  ret i64 %_result463
}

define i64 @f6() {
  %_result462 = call i64 @f7()
  ret i64 %_result462
}

define i64 @f7() {
  %_result461 = call i64 @f8()
  ret i64 %_result461
}

define i64 @f8() {
  %_result460 = call i64 @f9()
  ret i64 %_result460
}

define i64 @f9() {
  ret i64 31
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca457 = alloca i64
  store i64 %argc, i64* %_alloca457
  %_alloca458 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca458
  %_result459 = call i64 @f1()
  ret i64 %_result459
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
