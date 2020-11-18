; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11
@_constant532 = global i64 11

define i64 @f() {
  %_i530 = alloca i64
  store i64 12, i64* %_i530
  %_i531 = load i64, i64* %_i530
  ret i64 %_i531
}

define i64 @g() {
  %_i528 = alloca i64
  store i64 10, i64* %_i528
  %_i529 = load i64, i64* %_i528
  ret i64 %_i529
}

define i64 @program(i64 %_argc521, { i64, [0 x i8*] }* %_argv519) {
  %_argc522 = alloca i64
  %_argv520 = alloca { i64, [0 x i8*] }*
  store i64 %_argc521, i64* %_argc522
  store { i64, [0 x i8*] }* %_argv519, { i64, [0 x i8*] }** %_argv520
  %_result523 = call i64 @f()
  %_result524 = call i64 @g()
  %_bop525 = add i64 %_result523, %_result524
  %_i526 = load i64, i64* @i
  %_bop527 = add i64 %_bop525, %_i526
  ret i64 %_bop527
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
