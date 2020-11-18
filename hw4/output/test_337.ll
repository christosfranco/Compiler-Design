; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11
@_constant552 = global i64 11

define i64 @f() {
  %_i550 = alloca i64
  store i64 12, i64* %_i550
  %_i551 = load i64, i64* %_i550
  ret i64 %_i551
}

define i64 @g() {
  %_i548 = alloca i64
  store i64 10, i64* %_i548
  %_i549 = load i64, i64* %_i548
  ret i64 %_i549
}

define i64 @program(i64 %_argc541, { i64, [0 x i8*] }* %_argv539) {
  %_argc542 = alloca i64
  %_argv540 = alloca { i64, [0 x i8*] }*
  store i64 %_argc541, i64* %_argc542
  store { i64, [0 x i8*] }* %_argv539, { i64, [0 x i8*] }** %_argv540
  %_result543 = call i64 @f()
  %_result544 = call i64 @g()
  %_bop545 = add i64 %_result543, %_result544
  %_i546 = load i64, i64* @i
  %_bop547 = add i64 %_bop545, %_i546
  ret i64 %_bop547
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
