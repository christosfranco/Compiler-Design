; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8
@_constant757 = global i64 8

define i64 @f() {
  %_j754 = alloca i64
  store i64 0, i64* %_j754
  %_result755 = call i64 @g()
  store i64 %_result755, i64* %_j754
  %_j756 = load i64, i64* %_j754
  ret i64 %_j756
}

define i64 @g() {
  %_i753 = load i64, i64* @i
  ret i64 %_i753
}

define i64 @program(i64 %_argc750, { i64, [0 x i8*] }* %_argv748) {
  %_argc751 = alloca i64
  %_argv749 = alloca { i64, [0 x i8*] }*
  store i64 %_argc750, i64* %_argc751
  store { i64, [0 x i8*] }* %_argv748, { i64, [0 x i8*] }** %_argv749
  %_result752 = call i64 @f()
  ret i64 %_result752
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
