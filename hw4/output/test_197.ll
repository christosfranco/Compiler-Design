; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %_arr4895, i64 %_size4893) {
  %_arr4896 = alloca { i64, [0 x i64] }*
  %_size4894 = alloca i64
  %_maxarr4900 = alloca { i64, [0 x i64] }*
  %_maxs4901 = alloca i64
  %_i4909 = alloca i64
  %_j4916 = alloca i64
  store { i64, [0 x i64] }* %_arr4895, { i64, [0 x i64] }** %_arr4896
  store i64 %_size4893, i64* %_size4894
  %_size4897 = load i64, i64* %_size4894
  %_raw_array4898 = call i64* @oat_alloc_array(i64 %_size4897)
  %_array4899 = bitcast i64* %_raw_array4898 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4899, { i64, [0 x i64] }** %_maxarr4900
  store i64 0, i64* %_maxs4901
  %_maxarr4902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_index_ptr4904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4902, i32 0, i32 1, i32 0
  %_arr4905 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4896
  %_index_ptr4907 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4905, i32 0, i32 1, i32 0
  %_index4908 = load i64, i64* %_index_ptr4907
  store i64 %_index4908, i64* %_index_ptr4904
  store i64 0, i64* %_i4909
  br label %_cond4915
_cond4915:
  %_i4910 = load i64, i64* %_i4909
  %_size4911 = load i64, i64* %_size4894
  %_bop4912 = icmp slt i64 %_i4910, %_size4911
  br i1 %_bop4912, label %_body4914, label %_post4913
_body4914:
  store i64 0, i64* %_j4916
  br label %_cond4922
_cond4922:
  %_j4917 = load i64, i64* %_j4916
  %_i4918 = load i64, i64* %_i4909
  %_bop4919 = icmp slt i64 %_j4917, %_i4918
  br i1 %_bop4919, label %_body4921, label %_post4920
_body4921:
  %_arr4923 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4896
  %_i4924 = load i64, i64* %_i4909
  %_index_ptr4926 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4923, i32 0, i32 1, i64 %_i4924
  %_index4927 = load i64, i64* %_index_ptr4926
  %_arr4928 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4896
  %_j4929 = load i64, i64* %_j4916
  %_index_ptr4931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4928, i32 0, i32 1, i64 %_j4929
  %_index4932 = load i64, i64* %_index_ptr4931
  %_bop4933 = icmp sgt i64 %_index4927, %_index4932
  %_maxarr4934 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_i4935 = load i64, i64* %_i4909
  %_index_ptr4937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4934, i32 0, i32 1, i64 %_i4935
  %_index4938 = load i64, i64* %_index_ptr4937
  %_maxarr4939 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_j4940 = load i64, i64* %_j4916
  %_index_ptr4942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4939, i32 0, i32 1, i64 %_j4940
  %_index4943 = load i64, i64* %_index_ptr4942
  %_arr4944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4896
  %_i4945 = load i64, i64* %_i4909
  %_index_ptr4947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4944, i32 0, i32 1, i64 %_i4945
  %_index4948 = load i64, i64* %_index_ptr4947
  %_bop4949 = add i64 %_index4943, %_index4948
  %_bop4950 = icmp slt i64 %_index4938, %_bop4949
  %_bop4951 = and i1 %_bop4933, %_bop4950
  br i1 %_bop4951, label %_then4969, label %_else4968
_then4969:
  %_maxarr4952 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_i4953 = load i64, i64* %_i4909
  %_index_ptr4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4952, i32 0, i32 1, i64 %_i4953
  %_maxarr4956 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_j4957 = load i64, i64* %_j4916
  %_index_ptr4959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4956, i32 0, i32 1, i64 %_j4957
  %_index4960 = load i64, i64* %_index_ptr4959
  %_arr4961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr4896
  %_i4962 = load i64, i64* %_i4909
  %_index_ptr4964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr4961, i32 0, i32 1, i64 %_i4962
  %_index4965 = load i64, i64* %_index_ptr4964
  %_bop4966 = add i64 %_index4960, %_index4965
  store i64 %_bop4966, i64* %_index_ptr4955
  br label %_merge4967
_else4968:
  br label %_merge4967
_merge4967:
  %_j4970 = load i64, i64* %_j4916
  %_bop4971 = add i64 %_j4970, 1
  store i64 %_bop4971, i64* %_j4916
  br label %_cond4922
_post4920:
  %_maxs4972 = load i64, i64* %_maxs4901
  %_maxarr4973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_i4974 = load i64, i64* %_i4909
  %_index_ptr4976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4973, i32 0, i32 1, i64 %_i4974
  %_index4977 = load i64, i64* %_index_ptr4976
  %_bop4978 = icmp slt i64 %_maxs4972, %_index4977
  br i1 %_bop4978, label %_then4986, label %_else4985
_then4986:
  %_maxarr4979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr4900
  %_i4980 = load i64, i64* %_i4909
  %_index_ptr4982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr4979, i32 0, i32 1, i64 %_i4980
  %_index4983 = load i64, i64* %_index_ptr4982
  store i64 %_index4983, i64* %_maxs4901
  br label %_merge4984
_else4985:
  br label %_merge4984
_merge4984:
  %_i4987 = load i64, i64* %_i4909
  %_bop4988 = add i64 %_i4987, 1
  store i64 %_bop4988, i64* %_i4909
  br label %_cond4915
_post4913:
  %_maxs4989 = load i64, i64* %_maxs4901
  ret i64 %_maxs4989
}

define i64 @program(i64 %_argc4877, { i64, [0 x i8*] }* %_argv4875) {
  %_argc4878 = alloca i64
  %_argv4876 = alloca { i64, [0 x i8*] }*
  %_array4888 = alloca { i64, [0 x i64] }*
  %_max_ans4891 = alloca i64
  store i64 %_argc4877, i64* %_argc4878
  store { i64, [0 x i8*] }* %_argv4875, { i64, [0 x i8*] }** %_argv4876
  %_raw_array4879 = call i64* @oat_alloc_array(i64 7)
  %_array4880 = bitcast i64* %_raw_array4879 to { i64, [0 x i64] }*
  %_ind4881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4881
  %_ind4882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind4882
  %_ind4883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind4883
  %_ind4884 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind4884
  %_ind4885 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind4885
  %_ind4886 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind4886
  %_ind4887 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4880, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind4887
  store { i64, [0 x i64] }* %_array4880, { i64, [0 x i64] }** %_array4888
  %_array4889 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4888
  %_result4890 = call i64 @maxsum({ i64, [0 x i64] }* %_array4889, i64 7)
  store i64 %_result4890, i64* %_max_ans4891
  %_max_ans4892 = load i64, i64* %_max_ans4891
  ret i64 %_max_ans4892
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
