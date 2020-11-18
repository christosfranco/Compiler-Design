; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial5001, i64 %_len4999, i64 %_insertee4997) {
  %_partial5002 = alloca { i64, [0 x i64] }*
  %_len5000 = alloca i64
  %_insertee4998 = alloca i64
  %_inserted5007 = alloca { i64, [0 x i64] }*
  %_i5008 = alloca i64
  %_not_yet_inserted5022 = alloca i1
  %_i5034 = alloca i64
  store { i64, [0 x i64] }* %_partial5001, { i64, [0 x i64] }** %_partial5002
  store i64 %_len4999, i64* %_len5000
  store i64 %_insertee4997, i64* %_insertee4998
  %_len5003 = load i64, i64* %_len5000
  %_bop5004 = add i64 %_len5003, 1
  %_raw_array5005 = call i64* @oat_alloc_array(i64 %_bop5004)
  %_array5006 = bitcast i64* %_raw_array5005 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5006, { i64, [0 x i64] }** %_inserted5007
  store i64 0, i64* %_i5008
  br label %_cond5015
_cond5015:
  %_i5009 = load i64, i64* %_i5008
  %_len5010 = load i64, i64* %_len5000
  %_bop5011 = add i64 %_len5010, 1
  %_bop5012 = icmp slt i64 %_i5009, %_bop5011
  br i1 %_bop5012, label %_body5014, label %_post5013
_body5014:
  %_inserted5016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  %_i5017 = load i64, i64* %_i5008
  %_index_ptr5018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5016, i32 0, i32 1, i64 %_i5017
  %_unop5019 = sub i64 0, 1
  store i64 %_unop5019, i64* %_index_ptr5018
  %_i5020 = load i64, i64* %_i5008
  %_bop5021 = add i64 %_i5020, 1
  store i64 %_bop5021, i64* %_i5008
  br label %_cond5015
_post5013:
  store i1 1, i1* %_not_yet_inserted5022
  %_insertee5023 = load i64, i64* %_insertee4998
  %_partial5024 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5002
  %_index_ptr5025 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5024, i32 0, i32 1, i32 0
  %_index5026 = load i64, i64* %_index_ptr5025
  %_bop5027 = icmp slt i64 %_insertee5023, %_index5026
  br i1 %_bop5027, label %_then5033, label %_else5032
_then5033:
  store i1 0, i1* %_not_yet_inserted5022
  %_inserted5028 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  %_index_ptr5029 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5028, i32 0, i32 1, i32 0
  %_insertee5030 = load i64, i64* %_insertee4998
  store i64 %_insertee5030, i64* %_index_ptr5029
  br label %_merge5031
_else5032:
  br label %_merge5031
_merge5031:
  store i64 0, i64* %_i5034
  br label %_cond5040
_cond5040:
  %_i5035 = load i64, i64* %_i5034
  %_len5036 = load i64, i64* %_len5000
  %_bop5037 = icmp slt i64 %_i5035, %_len5036
  br i1 %_bop5037, label %_body5039, label %_post5038
_body5039:
  %_not_yet_inserted5041 = load i1, i1* %_not_yet_inserted5022
  br i1 %_not_yet_inserted5041, label %_then5080, label %_else5079
_then5080:
  %_insertee5042 = load i64, i64* %_insertee4998
  %_partial5043 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5002
  %_i5044 = load i64, i64* %_i5034
  %_index_ptr5045 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5043, i32 0, i32 1, i64 %_i5044
  %_index5046 = load i64, i64* %_index_ptr5045
  %_bop5047 = icmp sgt i64 %_insertee5042, %_index5046
  br i1 %_bop5047, label %_then5069, label %_else5068
_then5069:
  store i1 0, i1* %_not_yet_inserted5022
  %_inserted5048 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  %_i5049 = load i64, i64* %_i5034
  %_bop5050 = add i64 %_i5049, 1
  %_index_ptr5051 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5048, i32 0, i32 1, i64 %_bop5050
  %_insertee5052 = load i64, i64* %_insertee4998
  store i64 %_insertee5052, i64* %_index_ptr5051
  %_inserted5053 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  %_i5054 = load i64, i64* %_i5034
  %_index_ptr5055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5053, i32 0, i32 1, i64 %_i5054
  %_partial5056 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5002
  %_i5057 = load i64, i64* %_i5034
  %_index_ptr5058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5056, i32 0, i32 1, i64 %_i5057
  %_index5059 = load i64, i64* %_index_ptr5058
  store i64 %_index5059, i64* %_index_ptr5055
  br label %_merge5067
_else5068:
  %_inserted5060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  %_i5061 = load i64, i64* %_i5034
  %_index_ptr5062 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5060, i32 0, i32 1, i64 %_i5061
  %_partial5063 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5002
  %_i5064 = load i64, i64* %_i5034
  %_index_ptr5065 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5063, i32 0, i32 1, i64 %_i5064
  %_index5066 = load i64, i64* %_index_ptr5065
  store i64 %_index5066, i64* %_index_ptr5062
  br label %_merge5067
_merge5067:
  br label %_merge5078
_else5079:
  %_inserted5070 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  %_i5071 = load i64, i64* %_i5034
  %_bop5072 = add i64 %_i5071, 1
  %_index_ptr5073 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5070, i32 0, i32 1, i64 %_bop5072
  %_partial5074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5002
  %_i5075 = load i64, i64* %_i5034
  %_index_ptr5076 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5074, i32 0, i32 1, i64 %_i5075
  %_index5077 = load i64, i64* %_index_ptr5076
  store i64 %_index5077, i64* %_index_ptr5073
  br label %_merge5078
_merge5078:
  %_i5081 = load i64, i64* %_i5034
  %_bop5082 = add i64 %_i5081, 1
  store i64 %_bop5082, i64* %_i5034
  br label %_cond5040
_post5038:
  %_inserted5083 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5007
  ret { i64, [0 x i64] }* %_inserted5083
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted4969, i64 %_len4967) {
  %_unsorted4970 = alloca { i64, [0 x i64] }*
  %_len4968 = alloca i64
  %_out4974 = alloca { i64, [0 x i64] }*
  %_i4980 = alloca i64
  store { i64, [0 x i64] }* %_unsorted4969, { i64, [0 x i64] }** %_unsorted4970
  store i64 %_len4967, i64* %_len4968
  %_raw_array4971 = call i64* @oat_alloc_array(i64 1)
  %_array4972 = bitcast i64* %_raw_array4971 to { i64, [0 x i64] }*
  %_ind4973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4972, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4973
  store { i64, [0 x i64] }* %_array4972, { i64, [0 x i64] }** %_out4974
  %_out4975 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4974
  %_index_ptr4976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out4975, i32 0, i32 1, i32 0
  %_unsorted4977 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4970
  %_index_ptr4978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted4977, i32 0, i32 1, i32 0
  %_index4979 = load i64, i64* %_index_ptr4978
  store i64 %_index4979, i64* %_index_ptr4976
  store i64 1, i64* %_i4980
  br label %_cond4986
_cond4986:
  %_i4981 = load i64, i64* %_i4980
  %_len4982 = load i64, i64* %_len4968
  %_bop4983 = icmp slt i64 %_i4981, %_len4982
  br i1 %_bop4983, label %_body4985, label %_post4984
_body4985:
  %_unsorted4987 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted4970
  %_i4988 = load i64, i64* %_i4980
  %_index_ptr4989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted4987, i32 0, i32 1, i64 %_i4988
  %_index4990 = load i64, i64* %_index_ptr4989
  %_i4991 = load i64, i64* %_i4980
  %_out4992 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4974
  %_result4993 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out4992, i64 %_i4991, i64 %_index4990)
  store { i64, [0 x i64] }* %_result4993, { i64, [0 x i64] }** %_out4974
  %_i4994 = load i64, i64* %_i4980
  %_bop4995 = add i64 %_i4994, 1
  store i64 %_bop4995, i64* %_i4980
  br label %_cond4986
_post4984:
  %_out4996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out4974
  ret { i64, [0 x i64] }* %_out4996
}

define i64 @program(i64 %_argc4950, { i64, [0 x i8*] }* %_argv4948) {
  %_argc4951 = alloca i64
  %_argv4949 = alloca { i64, [0 x i8*] }*
  %_array4960 = alloca { i64, [0 x i64] }*
  %_result4963 = alloca { i64, [0 x i64] }*
  store i64 %_argc4950, i64* %_argc4951
  store { i64, [0 x i8*] }* %_argv4948, { i64, [0 x i8*] }** %_argv4949
  %_raw_array4952 = call i64* @oat_alloc_array(i64 6)
  %_array4953 = bitcast i64* %_raw_array4952 to { i64, [0 x i64] }*
  %_ind4954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4953, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind4954
  %_ind4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4953, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind4955
  %_ind4956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4953, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind4956
  %_ind4957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4953, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind4957
  %_ind4958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4953, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind4958
  %_ind4959 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4953, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind4959
  store { i64, [0 x i64] }* %_array4953, { i64, [0 x i64] }** %_array4960
  %_array4961 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array4960
  %_result4962 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array4961, i64 6)
  store { i64, [0 x i64] }* %_result4962, { i64, [0 x i64] }** %_result4963
  %_result4964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result4963
  %_index_ptr4965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result4964, i32 0, i32 1, i32 5
  %_index4966 = load i64, i64* %_index_ptr4965
  ret i64 %_index4966
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
