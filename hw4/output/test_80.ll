; generated from: oatprograms/fac.oat
target triple = "x86_64-unknown-linux"
define i64 @f(i64 %_i2568) {
  %_i2569 = alloca i64
  %_r2570 = alloca i64
  store i64 %_i2568, i64* %_i2569
  store i64 0, i64* %_r2570
  %_i2571 = load i64, i64* %_i2569
  %_bop2572 = icmp eq i64 %_i2571, 0
  br i1 %_bop2572, label %_then2580, label %_else2579
_then2580:
  store i64 1, i64* %_r2570
  br label %_merge2578
_else2579:
  %_i2573 = load i64, i64* %_i2569
  %_i2574 = load i64, i64* %_i2569
  %_bop2575 = sub i64 %_i2574, 1
  %_result2576 = call i64 @f(i64 %_bop2575)
  %_bop2577 = mul i64 %_i2573, %_result2576
  store i64 %_bop2577, i64* %_r2570
  br label %_merge2578
_merge2578:
  %_r2581 = load i64, i64* %_r2570
  ret i64 %_r2581
}

define i64 @program(i64 %_argc2565, { i64, [0 x i8*] }* %_argv2563) {
  %_argc2566 = alloca i64
  %_argv2564 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2565, i64* %_argc2566
  store { i64, [0 x i8*] }* %_argv2563, { i64, [0 x i8*] }** %_argv2564
  %_result2567 = call i64 @f(i64 5)
  ret i64 %_result2567
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
