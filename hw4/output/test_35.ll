; generated from: oatprograms/run40.oat
target triple = "x86_64-unknown-linux"
@i = global i64 8
@_constant589 = global i64 8

define i64 @f() {
  %_j586 = alloca i64
  store i64 0, i64* %_j586
  %_result587 = call i64 @g()
  store i64 %_result587, i64* %_j586
  %_j588 = load i64, i64* %_j586
  ret i64 %_j588
}

define i64 @g() {
  %_i585 = load i64, i64* @i
  ret i64 %_i585
}

define i64 @program(i64 %_argc582, { i64, [0 x i8*] }* %_argv580) {
  %_argc583 = alloca i64
  %_argv581 = alloca { i64, [0 x i8*] }*
  store i64 %_argc582, i64* %_argc583
  store { i64, [0 x i8*] }* %_argv580, { i64, [0 x i8*] }** %_argv581
  %_result584 = call i64 @f()
  ret i64 %_result584
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
