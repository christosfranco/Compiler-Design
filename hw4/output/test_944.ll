; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] }* @_global_arr4947
@_global_arr4947 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_constant4946 = global i64 0
@_str_arr4870 = global [1 x i8] c"\00"
@_str_arr4847 = global [7 x i8] c"TOMATO\00"
@_str_arr4850 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %_i4862, i64 %_j4860, i8* %_a4858, i8* %_b4856) {
  %_i4863 = alloca i64
  %_j4861 = alloca i64
  %_a4859 = alloca i8*
  %_b4857 = alloca i8*
  %_a_chars4876 = alloca { i64, [0 x i64] }*
  %_b_chars4879 = alloca { i64, [0 x i64] }*
  %_last_char_a4884 = alloca i64
  %_last_char_b4889 = alloca i64
  %_prev_lcs4900 = alloca i8*
  %_next_char4910 = alloca i8*
  %_left_lcs4923 = alloca i8*
  %_right_lcs4930 = alloca i8*
  %_left_len4933 = alloca i64
  %_right_len4936 = alloca i64
  store i64 %_i4862, i64* %_i4863
  store i64 %_j4860, i64* %_j4861
  store i8* %_a4858, i8** %_a4859
  store i8* %_b4856, i8** %_b4857
  %_i4864 = load i64, i64* %_i4863
  %_bop4865 = icmp slt i64 %_i4864, 0
  %_j4866 = load i64, i64* %_j4861
  %_bop4867 = icmp slt i64 %_j4866, 0
  %_bop4868 = or i1 %_bop4865, %_bop4867
  br i1 %_bop4868, label %_then4873, label %_else4872
_then4873:
  %_str4869 = getelementptr [1 x i8], [1 x i8]* @_str_arr4870, i32 0, i32 0
  ret i8* %_str4869
_else4872:
  br label %_merge4871
_merge4871:
  %_a4874 = load i8*, i8** %_a4859
  %_result4875 = call { i64, [0 x i64] }* @array_of_string(i8* %_a4874)
  store { i64, [0 x i64] }* %_result4875, { i64, [0 x i64] }** %_a_chars4876
  %_b4877 = load i8*, i8** %_b4857
  %_result4878 = call { i64, [0 x i64] }* @array_of_string(i8* %_b4877)
  store { i64, [0 x i64] }* %_result4878, { i64, [0 x i64] }** %_b_chars4879
  %_a_chars4880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4876
  %_i4881 = load i64, i64* %_i4863
  %_index_ptr4882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4880, i32 0, i32 1, i64 %_i4881
  %_index4883 = load i64, i64* %_index_ptr4882
  store i64 %_index4883, i64* %_last_char_a4884
  %_b_chars4885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars4879
  %_j4886 = load i64, i64* %_j4861
  %_index_ptr4887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars4885, i32 0, i32 1, i64 %_j4886
  %_index4888 = load i64, i64* %_index_ptr4887
  store i64 %_index4888, i64* %_last_char_b4889
  %_last_char_a4890 = load i64, i64* %_last_char_a4884
  %_last_char_b4891 = load i64, i64* %_last_char_b4889
  %_bop4892 = icmp eq i64 %_last_char_a4890, %_last_char_b4891
  br i1 %_bop4892, label %_then4916, label %_else4915
_then4916:
  %_b4893 = load i8*, i8** %_b4857
  %_a4894 = load i8*, i8** %_a4859
  %_j4895 = load i64, i64* %_j4861
  %_bop4896 = sub i64 %_j4895, 1
  %_i4897 = load i64, i64* %_i4863
  %_bop4898 = sub i64 %_i4897, 1
  %_result4899 = call i8* @lcs(i64 %_bop4898, i64 %_bop4896, i8* %_a4894, i8* %_b4893)
  store i8* %_result4899, i8** %_prev_lcs4900
  %_buf4901 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_index_ptr4902 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_buf4901, i32 0, i32 1, i32 0
  %_a_chars4903 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars4876
  %_i4904 = load i64, i64* %_i4863
  %_index_ptr4905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars4903, i32 0, i32 1, i64 %_i4904
  %_index4906 = load i64, i64* %_index_ptr4905
  store i64 %_index4906, i64* %_index_ptr4902
  %_buf4907 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_cast4908 = bitcast { i64, [1 x i64] }* %_buf4907 to { i64, [0 x i64] }*
  %_result4909 = call i8* @string_of_array({ i64, [0 x i64] }* %_cast4908)
  store i8* %_result4909, i8** %_next_char4910
  %_next_char4911 = load i8*, i8** %_next_char4910
  %_prev_lcs4912 = load i8*, i8** %_prev_lcs4900
  %_result4913 = call i8* @string_cat(i8* %_prev_lcs4912, i8* %_next_char4911)
  ret i8* %_result4913
_else4915:
  br label %_merge4914
_merge4914:
  %_b4917 = load i8*, i8** %_b4857
  %_a4918 = load i8*, i8** %_a4859
  %_j4919 = load i64, i64* %_j4861
  %_bop4920 = sub i64 %_j4919, 1
  %_i4921 = load i64, i64* %_i4863
  %_result4922 = call i8* @lcs(i64 %_i4921, i64 %_bop4920, i8* %_a4918, i8* %_b4917)
  store i8* %_result4922, i8** %_left_lcs4923
  %_b4924 = load i8*, i8** %_b4857
  %_a4925 = load i8*, i8** %_a4859
  %_j4926 = load i64, i64* %_j4861
  %_i4927 = load i64, i64* %_i4863
  %_bop4928 = sub i64 %_i4927, 1
  %_result4929 = call i8* @lcs(i64 %_bop4928, i64 %_j4926, i8* %_a4925, i8* %_b4924)
  store i8* %_result4929, i8** %_right_lcs4930
  %_left_lcs4931 = load i8*, i8** %_left_lcs4923
  %_result4932 = call i64 @length_of_string(i8* %_left_lcs4931)
  store i64 %_result4932, i64* %_left_len4933
  %_right_lcs4934 = load i8*, i8** %_right_lcs4930
  %_result4935 = call i64 @length_of_string(i8* %_right_lcs4934)
  store i64 %_result4935, i64* %_right_len4936
  %_left_len4937 = load i64, i64* %_left_len4933
  %_right_len4938 = load i64, i64* %_right_len4936
  %_bop4939 = icmp slt i64 %_left_len4937, %_right_len4938
  br i1 %_bop4939, label %_then4944, label %_else4943
_then4944:
  %_right_lcs4940 = load i8*, i8** %_right_lcs4930
  ret i8* %_right_lcs4940
_else4943:
  %_left_lcs4941 = load i8*, i8** %_left_lcs4923
  ret i8* %_left_lcs4941
}

define i64 @program(i64 %_argc4844, { i64, [0 x i8*] }* %_argv4842) {
  %_argc4845 = alloca i64
  %_argv4843 = alloca { i64, [0 x i8*] }*
  %_tomato4848 = alloca i8*
  %_orating4851 = alloca i8*
  store i64 %_argc4844, i64* %_argc4845
  store { i64, [0 x i8*] }* %_argv4842, { i64, [0 x i8*] }** %_argv4843
  %_str4846 = getelementptr [7 x i8], [7 x i8]* @_str_arr4847, i32 0, i32 0
  store i8* %_str4846, i8** %_tomato4848
  %_str4849 = getelementptr [8 x i8], [8 x i8]* @_str_arr4850, i32 0, i32 0
  store i8* %_str4849, i8** %_orating4851
  %_orating4852 = load i8*, i8** %_orating4851
  %_tomato4853 = load i8*, i8** %_tomato4848
  %_result4854 = call i8* @lcs(i64 5, i64 6, i8* %_tomato4853, i8* %_orating4852)
  call void @print_string(i8* %_result4854)
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
