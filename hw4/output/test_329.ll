; generated from: oatprograms/run13.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_x469, i64 %_y467) {
  %_x470 = alloca i64
  %_y468 = alloca i64
  store i64 %_x469, i64* %_x470
  store i64 %_y467, i64* %_y468
  %_x471 = load i64, i64* %_x470
  ret i64 %_x471
}

define i64 @program(i64 %_argc464, { i64, [0 x i8*] }* %_argv462) {
  %_argc465 = alloca i64
  %_argv463 = alloca { i64, [0 x i8*] }*
  store i64 %_argc464, i64* %_argc465
  store { i64, [0 x i8*] }* %_argv462, { i64, [0 x i8*] }** %_argv463
  %_result466 = call i64 @f(i64 1, i64 2)
  ret i64 %_result466
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
