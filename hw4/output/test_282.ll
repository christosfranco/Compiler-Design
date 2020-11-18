; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %_str2728, i64 %_start2726, i64 %_len2724) {
  %_str2729 = alloca i8*
  %_start2727 = alloca i64
  %_len2725 = alloca i64
  %_arr2732 = alloca { i64, [0 x i64] }*
  %_r2736 = alloca { i64, [0 x i64] }*
  %_i2737 = alloca i64
  store i8* %_str2728, i8** %_str2729
  store i64 %_start2726, i64* %_start2727
  store i64 %_len2724, i64* %_len2725
  %_str2730 = load i8*, i8** %_str2729
  %_result2731 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2730)
  store { i64, [0 x i64] }* %_result2731, { i64, [0 x i64] }** %_arr2732
  %_len2733 = load i64, i64* %_len2725
  %_raw_array2734 = call i64* @oat_alloc_array(i64 %_len2733)
  %_array2735 = bitcast i64* %_raw_array2734 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2735, { i64, [0 x i64] }** %_r2736
  store i64 0, i64* %_i2737
  br label %_cond2743
_cond2743:
  %_i2738 = load i64, i64* %_i2737
  %_len2739 = load i64, i64* %_len2725
  %_bop2740 = icmp slt i64 %_i2738, %_len2739
  br i1 %_bop2740, label %_body2742, label %_post2741
_body2742:
  %_r2744 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2736
  %_i2745 = load i64, i64* %_i2737
  %_index_ptr2747 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r2744, i32 0, i32 1, i64 %_i2745
  %_arr2748 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2732
  %_i2749 = load i64, i64* %_i2737
  %_start2750 = load i64, i64* %_start2727
  %_bop2751 = add i64 %_i2749, %_start2750
  %_index_ptr2753 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2748, i32 0, i32 1, i64 %_bop2751
  %_index2754 = load i64, i64* %_index_ptr2753
  store i64 %_index2754, i64* %_index_ptr2747
  %_i2755 = load i64, i64* %_i2737
  %_bop2756 = add i64 %_i2755, 1
  store i64 %_bop2756, i64* %_i2737
  br label %_cond2743
_post2741:
  %_r2757 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2736
  %_result2758 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2757)
  ret i8* %_result2758
}

define i64 @program(i64 %_argc2716, { i64, [0 x i8*] }* %_argv2714) {
  %_argc2717 = alloca i64
  %_argv2715 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2716, i64* %_argc2717
  store { i64, [0 x i8*] }* %_argv2714, { i64, [0 x i8*] }** %_argv2715
  %_argv2718 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2715
  %_index_ptr2720 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2718, i32 0, i32 1, i32 1
  %_index2721 = load i8*, i8** %_index_ptr2720
  %_result2722 = call i8* @sub(i8* %_index2721, i64 3, i64 5)
  call void @print_string(i8* %_result2722)
  ret i64 0
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
