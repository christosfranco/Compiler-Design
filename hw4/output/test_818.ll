; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_i2563) {
  %_i2564 = alloca i64
  %_r2565 = alloca i64
  store i64 %_i2563, i64* %_i2564
  store i64 0, i64* %_r2565
  %_i2566 = load i64, i64* %_i2564
  %_bop2567 = icmp eq i64 %_i2566, 0
  br i1 %_bop2567, label %_then2575, label %_else2574
_then2575:
  store i64 1, i64* %_r2565
  br label %_merge2573
_else2574:
  %_i2568 = load i64, i64* %_i2564
  %_i2569 = load i64, i64* %_i2564
  %_bop2570 = sub i64 %_i2569, 1
  %_result2571 = call i64 @f(i64 %_bop2570)
  %_bop2572 = mul i64 %_i2568, %_result2571
  store i64 %_bop2572, i64* %_r2565
  br label %_merge2573
_merge2573:
  %_r2576 = load i64, i64* %_r2565
  ret i64 %_r2576
}

define i64 @program(i64 %_argc2560, { i64, [0 x i8*] }* %_argv2558) {
  %_argc2561 = alloca i64
  %_argv2559 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2560, i64* %_argc2561
  store { i64, [0 x i8*] }* %_argv2558, { i64, [0 x i8*] }** %_argv2559
  %_result2562 = call i64 @f(i64 5)
  ret i64 %_result2562
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
