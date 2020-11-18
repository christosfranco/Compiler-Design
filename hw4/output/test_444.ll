; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11
@_constant551 = global i64 11

define i64 @f() {
  %_i549 = alloca i64
  store i64 12, i64* %_i549
  %_i550 = load i64, i64* %_i549
  ret i64 %_i550
}

define i64 @g() {
  %_i547 = alloca i64
  store i64 10, i64* %_i547
  %_i548 = load i64, i64* %_i547
  ret i64 %_i548
}

define i64 @program(i64 %_argc540, { i64, [0 x i8*] }* %_argv538) {
  %_argc541 = alloca i64
  %_argv539 = alloca { i64, [0 x i8*] }*
  store i64 %_argc540, i64* %_argc541
  store { i64, [0 x i8*] }* %_argv538, { i64, [0 x i8*] }** %_argv539
  %_result542 = call i64 @f()
  %_result543 = call i64 @g()
  %_bop544 = add i64 %_result542, %_result543
  %_i545 = load i64, i64* @i
  %_bop546 = add i64 %_bop544, %_i545
  ret i64 %_bop546
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
