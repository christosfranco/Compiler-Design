; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8]* @_str2527
@_str2527 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2501, { i64, [0 x i8*] }* %_argv2499) {
  %_argc2502 = alloca i64
  %_argv2500 = alloca { i64, [0 x i8*] }*
  %_arr2506 = alloca { i64, [0 x i64] }*
  %_s2507 = alloca i64
  %_i2508 = alloca i64
  store i64 %_argc2501, i64* %_argc2502
  store { i64, [0 x i8*] }* %_argv2499, { i64, [0 x i8*] }** %_argv2500
  %_str2503 = load [6 x i8]*, [6 x i8]** @str
  %_cast2504 = bitcast [6 x i8]* %_str2503 to i8*
  %_result2505 = call { i64, [0 x i64] }* @array_of_string(i8* %_cast2504)
  store { i64, [0 x i64] }* %_result2505, { i64, [0 x i64] }** %_arr2506
  store i64 0, i64* %_s2507
  store i64 0, i64* %_i2508
  br label %_cond2513
_cond2513:
  %_i2509 = load i64, i64* %_i2508
  %_bop2510 = icmp slt i64 %_i2509, 5
  br i1 %_bop2510, label %_body2512, label %_post2511
_body2512:
  %_s2514 = load i64, i64* %_s2507
  %_arr2515 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2506
  %_i2516 = load i64, i64* %_i2508
  %_index_ptr2518 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2515, i32 0, i32 1, i64 %_i2516
  %_index2519 = load i64, i64* %_index_ptr2518
  %_bop2520 = add i64 %_s2514, %_index2519
  store i64 %_bop2520, i64* %_s2507
  %_i2521 = load i64, i64* %_i2508
  %_bop2522 = add i64 %_i2521, 1
  store i64 %_bop2522, i64* %_i2508
  br label %_cond2513
_post2511:
  %_s2523 = load i64, i64* %_s2507
  call void @print_int(i64 %_s2523)
  %_s2525 = load i64, i64* %_s2507
  ret i64 %_s2525
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
