; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8]* @_constant2524
@_constant2524 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2499, { i64, [0 x i8*] }* %_argv2497) {
  %_argc2500 = alloca i64
  %_argv2498 = alloca { i64, [0 x i8*] }*
  %_arr2504 = alloca { i64, [0 x i64] }*
  %_s2505 = alloca i64
  %_i2506 = alloca i64
  store i64 %_argc2499, i64* %_argc2500
  store { i64, [0 x i8*] }* %_argv2497, { i64, [0 x i8*] }** %_argv2498
  %_str2501 = load [6 x i8]*, [6 x i8]** @str
  %_cast2502 = bitcast [6 x i8]* %_str2501 to i8*
  %_result2503 = call { i64, [0 x i64] }* @array_of_string(i8* %_cast2502)
  store { i64, [0 x i64] }* %_result2503, { i64, [0 x i64] }** %_arr2504
  store i64 0, i64* %_s2505
  store i64 0, i64* %_i2506
  br label %_cond2511
_cond2511:
  %_i2507 = load i64, i64* %_i2506
  %_bop2508 = icmp slt i64 %_i2507, 5
  br i1 %_bop2508, label %_body2510, label %_post2509
_body2510:
  %_s2512 = load i64, i64* %_s2505
  %_arr2513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2504
  %_i2514 = load i64, i64* %_i2506
  %_index_ptr2516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2513, i32 0, i32 1, i64 %_i2514
  %_index2517 = load i64, i64* %_index_ptr2516
  %_bop2518 = add i64 %_s2512, %_index2517
  store i64 %_bop2518, i64* %_s2505
  %_i2519 = load i64, i64* %_i2506
  %_bop2520 = add i64 %_i2519, 1
  store i64 %_bop2520, i64* %_i2506
  br label %_cond2511
_post2509:
  %_s2521 = load i64, i64* %_s2505
  call void @print_int(i64 %_s2521)
  %_s2523 = load i64, i64* %_s2505
  ret i64 %_s2523
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
