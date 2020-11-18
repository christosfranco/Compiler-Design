; generated from: oatprograms/lib15.oat
target triple = "x86_64-unknown-linux"
define i8* @sub(i8* %_str2725, i64 %_start2723, i64 %_len2721) {
  %_str2726 = alloca i8*
  %_start2724 = alloca i64
  %_len2722 = alloca i64
  %_arr2729 = alloca { i64, [0 x i64] }*
  %_r2733 = alloca { i64, [0 x i64] }*
  %_i2734 = alloca i64
  store i8* %_str2725, i8** %_str2726
  store i64 %_start2723, i64* %_start2724
  store i64 %_len2721, i64* %_len2722
  %_str2727 = load i8*, i8** %_str2726
  %_result2728 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2727)
  store { i64, [0 x i64] }* %_result2728, { i64, [0 x i64] }** %_arr2729
  %_len2730 = load i64, i64* %_len2722
  %_raw_array2731 = call i64* @oat_alloc_array(i64 %_len2730)
  %_array2732 = bitcast i64* %_raw_array2731 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2732, { i64, [0 x i64] }** %_r2733
  store i64 0, i64* %_i2734
  br label %_cond2740
_cond2740:
  %_i2735 = load i64, i64* %_i2734
  %_len2736 = load i64, i64* %_len2722
  %_bop2737 = icmp slt i64 %_i2735, %_len2736
  br i1 %_bop2737, label %_body2739, label %_post2738
_body2739:
  %_r2741 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2733
  %_i2742 = load i64, i64* %_i2734
  %_index_ptr2744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_r2741, i32 0, i32 1, i64 %_i2742
  %_arr2745 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2729
  %_i2746 = load i64, i64* %_i2734
  %_start2747 = load i64, i64* %_start2724
  %_bop2748 = add i64 %_i2746, %_start2747
  %_index_ptr2750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2745, i32 0, i32 1, i64 %_bop2748
  %_index2751 = load i64, i64* %_index_ptr2750
  store i64 %_index2751, i64* %_index_ptr2744
  %_i2752 = load i64, i64* %_i2734
  %_bop2753 = add i64 %_i2752, 1
  store i64 %_bop2753, i64* %_i2734
  br label %_cond2740
_post2738:
  %_r2754 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_r2733
  %_result2755 = call i8* @string_of_array({ i64, [0 x i64] }* %_r2754)
  ret i8* %_result2755
}

define i64 @program(i64 %_argc2713, { i64, [0 x i8*] }* %_argv2711) {
  %_argc2714 = alloca i64
  %_argv2712 = alloca { i64, [0 x i8*] }*
  store i64 %_argc2713, i64* %_argc2714
  store { i64, [0 x i8*] }* %_argv2711, { i64, [0 x i8*] }** %_argv2712
  %_argv2715 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2712
  %_index_ptr2717 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2715, i32 0, i32 1, i32 1
  %_index2718 = load i8*, i8** %_index_ptr2717
  %_result2719 = call i8* @sub(i8* %_index2718, i64 3, i64 5)
  call void @print_string(i8* %_result2719)
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
