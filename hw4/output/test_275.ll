; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_arr2533 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2530, { i64, [0 x i8*] }* %_argv2528) {
  %_argc2531 = alloca i64
  %_argv2529 = alloca { i64, [0 x i8*] }*
  %_str2534 = alloca i8*
  %_arr2537 = alloca { i64, [0 x i64] }*
  %_s2538 = alloca i64
  %_i2539 = alloca i64
  store i64 %_argc2530, i64* %_argc2531
  store { i64, [0 x i8*] }* %_argv2528, { i64, [0 x i8*] }** %_argv2529
  %_str2532 = getelementptr [6 x i8], [6 x i8]* @_str_arr2533, i32 0, i32 0
  store i8* %_str2532, i8** %_str2534
  %_str2535 = load i8*, i8** %_str2534
  %_result2536 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2535)
  store { i64, [0 x i64] }* %_result2536, { i64, [0 x i64] }** %_arr2537
  store i64 0, i64* %_s2538
  store i64 0, i64* %_i2539
  br label %_cond2544
_cond2544:
  %_i2540 = load i64, i64* %_i2539
  %_bop2541 = icmp slt i64 %_i2540, 5
  br i1 %_bop2541, label %_body2543, label %_post2542
_body2543:
  %_s2545 = load i64, i64* %_s2538
  %_arr2546 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2537
  %_i2547 = load i64, i64* %_i2539
  %_index_ptr2549 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2546, i32 0, i32 1, i64 %_i2547
  %_index2550 = load i64, i64* %_index_ptr2549
  %_bop2551 = add i64 %_s2545, %_index2550
  store i64 %_bop2551, i64* %_s2538
  %_i2552 = load i64, i64* %_i2539
  %_bop2553 = add i64 %_i2552, 1
  store i64 %_bop2553, i64* %_i2539
  br label %_cond2544
_post2542:
  %_s2554 = load i64, i64* %_s2538
  ret i64 %_s2554
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
