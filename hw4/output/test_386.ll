; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2638, { i64, [0 x i8*] }* %_argv2636) {
  %_argc2639 = alloca i64
  %_argv2637 = alloca { i64, [0 x i8*] }*
  %_i2640 = alloca i64
  store i64 %_argc2638, i64* %_argc2639
  store { i64, [0 x i8*] }* %_argv2636, { i64, [0 x i8*] }** %_argv2637
  store i64 1, i64* %_i2640
  br label %_cond2646
_cond2646:
  %_i2641 = load i64, i64* %_i2640
  %_argc2642 = load i64, i64* %_argc2639
  %_bop2643 = icmp slt i64 %_i2641, %_argc2642
  br i1 %_bop2643, label %_body2645, label %_post2644
_body2645:
  %_argv2647 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2637
  %_i2648 = load i64, i64* %_i2640
  %_index_ptr2650 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2647, i32 0, i32 1, i64 %_i2648
  %_index2651 = load i8*, i8** %_index_ptr2650
  call void @print_string(i8* %_index2651)
  %_i2653 = load i64, i64* %_i2640
  %_bop2654 = add i64 %_i2653, 1
  store i64 %_bop2654, i64* %_i2640
  br label %_cond2646
_post2644:
  %_argc2655 = load i64, i64* %_argc2639
  ret i64 %_argc2655
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
