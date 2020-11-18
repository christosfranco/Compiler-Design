; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42
@_constant827 = global i64 42

define i64 @f(i64 %_x824) {
  %_x825 = alloca i64
  store i64 %_x824, i64* %_x825
  %_x826 = load i64, i64* %_x825
  ret i64 %_x826
}

define i64 @g({ i64, [0 x i64] }* %_y818) {
  %_y819 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y818, { i64, [0 x i64] }** %_y819
  %_y820 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y819
  %_index_ptr822 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y820, i32 0, i32 1, i32 2
  %_index823 = load i64, i64* %_index_ptr822
  ret i64 %_index823
}

define i64 @program(i64 %_argc762, { i64, [0 x i8*] }* %_argv760) {
  %_argc763 = alloca i64
  %_argv761 = alloca { i64, [0 x i8*] }*
  %_garr776 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr783 = alloca { i64, [0 x i64] }*
  %_p784 = alloca i64
  %_j785 = alloca i64
  store i64 %_argc762, i64* %_argc763
  store { i64, [0 x i8*] }* %_argv760, { i64, [0 x i8*] }** %_argv761
  %_raw_array764 = call i64* @oat_alloc_array(i64 2)
  %_array765 = bitcast i64* %_raw_array764 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array766 = call i64* @oat_alloc_array(i64 2)
  %_array767 = bitcast i64* %_raw_array766 to { i64, [0 x i64] }*
  %_ind768 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array767, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind768
  %_ind769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array767, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind769
  %_ind770 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array765, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array767, { i64, [0 x i64] }** %_ind770
  %_raw_array771 = call i64* @oat_alloc_array(i64 2)
  %_array772 = bitcast i64* %_raw_array771 to { i64, [0 x i64] }*
  %_ind773 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array772, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind773
  %_ind774 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array772, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind774
  %_ind775 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array765, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array772, { i64, [0 x i64] }** %_ind775
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array765, { i64, [0 x { i64, [0 x i64] }*] }** %_garr776
  %_raw_array777 = call i64* @oat_alloc_array(i64 4)
  %_array778 = bitcast i64* %_raw_array777 to { i64, [0 x i64] }*
  %_ind779 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array778, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind779
  %_ind780 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array778, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind780
  %_ind781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array778, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind781
  %_ind782 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array778, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind782
  store { i64, [0 x i64] }* %_array778, { i64, [0 x i64] }** %_arr783
  store i64 0, i64* %_p784
  store i64 0, i64* %_j785
  br label %_cond790
_cond790:
  %_j786 = load i64, i64* %_j785
  %_bop787 = icmp slt i64 %_j786, 100
  br i1 %_bop787, label %_body789, label %_post788
_body789:
  %_p791 = load i64, i64* %_p784
  %_bop792 = add i64 %_p791, 1
  store i64 %_bop792, i64* %_p784
  %_j793 = load i64, i64* %_j785
  %_bop794 = add i64 %_j793, 1
  store i64 %_bop794, i64* %_j785
  br label %_cond790
_post788:
  %_arr795 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr783
  %_result796 = call i64 @g({ i64, [0 x i64] }* %_arr795)
  %_i797 = load i64, i64* @i
  %_result798 = call i64 @f(i64 %_i797)
  %_bop799 = add i64 %_result796, %_result798
  %_arr800 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr783
  %_index_ptr802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr800, i32 0, i32 1, i32 3
  %_index803 = load i64, i64* %_index_ptr802
  %_result804 = call i64 @f(i64 %_index803)
  %_bop805 = add i64 %_bop799, %_result804
  %_garr806 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr776
  %_index_ptr808 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr806, i32 0, i32 1, i32 1
  %_index809 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr808
  %_index_ptr811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index809, i32 0, i32 1, i32 1
  %_index812 = load i64, i64* %_index_ptr811
  %_result813 = call i64 @f(i64 %_index812)
  %_bop814 = add i64 %_bop805, %_result813
  %_p815 = load i64, i64* %_p784
  %_result816 = call i64 @f(i64 %_p815)
  %_bop817 = add i64 %_bop814, %_result816
  ret i64 %_bop817
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
