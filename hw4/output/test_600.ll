; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2635, { i64, [0 x i8*] }* %_argv2633) {
  %_argc2636 = alloca i64
  %_argv2634 = alloca { i64, [0 x i8*] }*
  %_i2637 = alloca i64
  store i64 %_argc2635, i64* %_argc2636
  store { i64, [0 x i8*] }* %_argv2633, { i64, [0 x i8*] }** %_argv2634
  store i64 1, i64* %_i2637
  br label %_cond2643
_cond2643:
  %_i2638 = load i64, i64* %_i2637
  %_argc2639 = load i64, i64* %_argc2636
  %_bop2640 = icmp slt i64 %_i2638, %_argc2639
  br i1 %_bop2640, label %_body2642, label %_post2641
_body2642:
  %_argv2644 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2634
  %_i2645 = load i64, i64* %_i2637
  %_index_ptr2647 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2644, i32 0, i32 1, i64 %_i2645
  %_index2648 = load i8*, i8** %_index_ptr2647
  call void @print_string(i8* %_index2648)
  %_i2650 = load i64, i64* %_i2637
  %_bop2651 = add i64 %_i2650, 1
  store i64 %_bop2651, i64* %_i2637
  br label %_cond2643
_post2641:
  %_argc2652 = load i64, i64* %_argc2636
  ret i64 %_argc2652
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
