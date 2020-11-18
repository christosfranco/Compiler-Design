; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_arr2530 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2527, { i64, [0 x i8*] }* %_argv2525) {
  %_argc2528 = alloca i64
  %_argv2526 = alloca { i64, [0 x i8*] }*
  %_str2531 = alloca i8*
  %_arr2534 = alloca { i64, [0 x i64] }*
  %_s2535 = alloca i64
  %_i2536 = alloca i64
  store i64 %_argc2527, i64* %_argc2528
  store { i64, [0 x i8*] }* %_argv2525, { i64, [0 x i8*] }** %_argv2526
  %_str2529 = getelementptr [6 x i8], [6 x i8]* @_str_arr2530, i32 0, i32 0
  store i8* %_str2529, i8** %_str2531
  %_str2532 = load i8*, i8** %_str2531
  %_result2533 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2532)
  store { i64, [0 x i64] }* %_result2533, { i64, [0 x i64] }** %_arr2534
  store i64 0, i64* %_s2535
  store i64 0, i64* %_i2536
  br label %_cond2541
_cond2541:
  %_i2537 = load i64, i64* %_i2536
  %_bop2538 = icmp slt i64 %_i2537, 5
  br i1 %_bop2538, label %_body2540, label %_post2539
_body2540:
  %_s2542 = load i64, i64* %_s2535
  %_arr2543 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2534
  %_i2544 = load i64, i64* %_i2536
  %_index_ptr2546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2543, i32 0, i32 1, i64 %_i2544
  %_index2547 = load i64, i64* %_index_ptr2546
  %_bop2548 = add i64 %_s2542, %_index2547
  store i64 %_bop2548, i64* %_s2535
  %_i2549 = load i64, i64* %_i2536
  %_bop2550 = add i64 %_i2549, 1
  store i64 %_bop2550, i64* %_i2536
  br label %_cond2541
_post2539:
  %_s2551 = load i64, i64* %_s2535
  ret i64 %_s2551
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
