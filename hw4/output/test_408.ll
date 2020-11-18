; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4
@_constant5179 = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5149, i64 %_i5147, i64 %_j5145, i64 %_count5143) {
  %_board5150 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5148 = alloca i64
  %_j5146 = alloca i64
  %_count5144 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board5149, { i64, [0 x { i64, [0 x i64] }*] }** %_board5150
  store i64 %_i5147, i64* %_i5148
  store i64 %_j5145, i64* %_j5146
  store i64 %_count5143, i64* %_count5144
  %_i5151 = load i64, i64* %_i5148
  %_bop5152 = icmp sge i64 %_i5151, 0
  %_j5153 = load i64, i64* %_j5146
  %_bop5154 = icmp sge i64 %_j5153, 0
  %_bop5155 = and i1 %_bop5152, %_bop5154
  %_i5156 = load i64, i64* %_i5148
  %_len5157 = load i64, i64* @len
  %_bop5158 = icmp slt i64 %_i5156, %_len5157
  %_bop5159 = and i1 %_bop5155, %_bop5158
  %_j5160 = load i64, i64* %_j5146
  %_len5161 = load i64, i64* @len
  %_bop5162 = icmp slt i64 %_j5160, %_len5161
  %_bop5163 = and i1 %_bop5159, %_bop5162
  br i1 %_bop5163, label %_then5178, label %_else5177
_then5178:
  %_count5164 = load i64, i64* %_count5144
  %_board5165 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5150
  %_i5166 = load i64, i64* %_i5148
  %_index_ptr5168 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5165, i32 0, i32 1, i64 %_i5166
  %_index5169 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5168
  %_j5170 = load i64, i64* %_j5146
  %_index_ptr5172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5169, i32 0, i32 1, i64 %_j5170
  %_index5173 = load i64, i64* %_index_ptr5172
  %_bop5174 = add i64 %_count5164, %_index5173
  ret i64 %_bop5174
_else5177:
  %_count5175 = load i64, i64* %_count5144
  ret i64 %_count5175
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5058, i64 %_i5056, i64 %_j5054) {
  %_board5059 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5057 = alloca i64
  %_j5055 = alloca i64
  %_alive5069 = alloca i64
  %_count5070 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board5058, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  store i64 %_i5056, i64* %_i5057
  store i64 %_j5054, i64* %_j5055
  %_board5060 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_i5061 = load i64, i64* %_i5057
  %_index_ptr5063 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5060, i32 0, i32 1, i64 %_i5061
  %_index5064 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5063
  %_j5065 = load i64, i64* %_j5055
  %_index_ptr5067 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5064, i32 0, i32 1, i64 %_j5065
  %_index5068 = load i64, i64* %_index_ptr5067
  store i64 %_index5068, i64* %_alive5069
  store i64 0, i64* %_count5070
  %_count5071 = load i64, i64* %_count5070
  %_j5072 = load i64, i64* %_j5055
  %_bop5073 = sub i64 %_j5072, 1
  %_i5074 = load i64, i64* %_i5057
  %_bop5075 = sub i64 %_i5074, 1
  %_board5076 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5077 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5076, i64 %_bop5075, i64 %_bop5073, i64 %_count5071)
  store i64 %_result5077, i64* %_count5070
  %_count5078 = load i64, i64* %_count5070
  %_j5079 = load i64, i64* %_j5055
  %_i5080 = load i64, i64* %_i5057
  %_bop5081 = sub i64 %_i5080, 1
  %_board5082 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5083 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5082, i64 %_bop5081, i64 %_j5079, i64 %_count5078)
  store i64 %_result5083, i64* %_count5070
  %_count5084 = load i64, i64* %_count5070
  %_j5085 = load i64, i64* %_j5055
  %_bop5086 = add i64 %_j5085, 1
  %_i5087 = load i64, i64* %_i5057
  %_bop5088 = sub i64 %_i5087, 1
  %_board5089 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5090 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5089, i64 %_bop5088, i64 %_bop5086, i64 %_count5084)
  store i64 %_result5090, i64* %_count5070
  %_count5091 = load i64, i64* %_count5070
  %_j5092 = load i64, i64* %_j5055
  %_bop5093 = sub i64 %_j5092, 1
  %_i5094 = load i64, i64* %_i5057
  %_board5095 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5096 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5095, i64 %_i5094, i64 %_bop5093, i64 %_count5091)
  store i64 %_result5096, i64* %_count5070
  %_count5097 = load i64, i64* %_count5070
  %_j5098 = load i64, i64* %_j5055
  %_bop5099 = add i64 %_j5098, 1
  %_i5100 = load i64, i64* %_i5057
  %_board5101 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5102 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5101, i64 %_i5100, i64 %_bop5099, i64 %_count5097)
  store i64 %_result5102, i64* %_count5070
  %_count5103 = load i64, i64* %_count5070
  %_j5104 = load i64, i64* %_j5055
  %_bop5105 = sub i64 %_j5104, 1
  %_i5106 = load i64, i64* %_i5057
  %_bop5107 = add i64 %_i5106, 1
  %_board5108 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5109 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5108, i64 %_bop5107, i64 %_bop5105, i64 %_count5103)
  store i64 %_result5109, i64* %_count5070
  %_count5110 = load i64, i64* %_count5070
  %_j5111 = load i64, i64* %_j5055
  %_i5112 = load i64, i64* %_i5057
  %_bop5113 = add i64 %_i5112, 1
  %_board5114 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5115 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5114, i64 %_bop5113, i64 %_j5111, i64 %_count5110)
  store i64 %_result5115, i64* %_count5070
  %_count5116 = load i64, i64* %_count5070
  %_j5117 = load i64, i64* %_j5055
  %_bop5118 = add i64 %_j5117, 1
  %_i5119 = load i64, i64* %_i5057
  %_bop5120 = add i64 %_i5119, 1
  %_board5121 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5059
  %_result5122 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5121, i64 %_bop5120, i64 %_bop5118, i64 %_count5116)
  store i64 %_result5122, i64* %_count5070
  %_alive5123 = load i64, i64* %_alive5069
  %_bop5124 = icmp eq i64 %_alive5123, 1
  br i1 %_bop5124, label %_then5137, label %_else5136
_then5137:
  %_count5125 = load i64, i64* %_count5070
  %_bop5126 = icmp slt i64 %_count5125, 2
  br i1 %_bop5126, label %_then5134, label %_else5133
_then5134:
  ret i64 0
_else5133:
  %_count5127 = load i64, i64* %_count5070
  %_bop5128 = icmp slt i64 %_count5127, 4
  br i1 %_bop5128, label %_then5131, label %_else5130
_then5131:
  ret i64 1
_else5130:
  br label %_merge5129
_merge5129:
  br label %_merge5132
_merge5132:
  ret i64 0
_else5136:
  br label %_merge5135
_merge5135:
  %_count5138 = load i64, i64* %_count5070
  %_bop5139 = icmp eq i64 %_count5138, 3
  br i1 %_bop5139, label %_then5142, label %_else5141
_then5142:
  ret i64 1
_else5141:
  ret i64 0
_merge5140:
  ret i64 0
}

define i64 @program(i64 %_argc4928, { i64, [0 x i8*] }* %_argv4926) {
  %_argc4929 = alloca i64
  %_argv4927 = alloca { i64, [0 x i8*] }*
  %_board4960 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board4991 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4992 = alloca i64
  %_j5004 = alloca i64
  %_i5026 = alloca i64
  %_j5033 = alloca i64
  store i64 %_argc4928, i64* %_argc4929
  store { i64, [0 x i8*] }* %_argv4926, { i64, [0 x i8*] }** %_argv4927
  %_raw_array4930 = call i64* @oat_alloc_array(i64 4)
  %_array4931 = bitcast i64* %_raw_array4930 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4932 = call i64* @oat_alloc_array(i64 4)
  %_array4933 = bitcast i64* %_raw_array4932 to { i64, [0 x i64] }*
  %_ind4934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4933, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4934
  %_ind4935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4933, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4935
  %_ind4936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4933, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4936
  %_ind4937 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4933, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4937
  %_ind4938 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4931, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4933, { i64, [0 x i64] }** %_ind4938
  %_raw_array4939 = call i64* @oat_alloc_array(i64 4)
  %_array4940 = bitcast i64* %_raw_array4939 to { i64, [0 x i64] }*
  %_ind4941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4940, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4941
  %_ind4942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4940, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4942
  %_ind4943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4940, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4943
  %_ind4944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4940, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind4944
  %_ind4945 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4931, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4940, { i64, [0 x i64] }** %_ind4945
  %_raw_array4946 = call i64* @oat_alloc_array(i64 4)
  %_array4947 = bitcast i64* %_raw_array4946 to { i64, [0 x i64] }*
  %_ind4948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4947, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4948
  %_ind4949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4947, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4949
  %_ind4950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4947, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4950
  %_ind4951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4947, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4951
  %_ind4952 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4931, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4947, { i64, [0 x i64] }** %_ind4952
  %_raw_array4953 = call i64* @oat_alloc_array(i64 4)
  %_array4954 = bitcast i64* %_raw_array4953 to { i64, [0 x i64] }*
  %_ind4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4954, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4955
  %_ind4956 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4954, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4956
  %_ind4957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4954, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4957
  %_ind4958 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4954, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4958
  %_ind4959 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4931, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4954, { i64, [0 x i64] }** %_ind4959
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4931, { i64, [0 x { i64, [0 x i64] }*] }** %_board4960
  %_raw_array4961 = call i64* @oat_alloc_array(i64 4)
  %_array4962 = bitcast i64* %_raw_array4961 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4963 = call i64* @oat_alloc_array(i64 4)
  %_array4964 = bitcast i64* %_raw_array4963 to { i64, [0 x i64] }*
  %_ind4965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4964, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4965
  %_ind4966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4964, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4966
  %_ind4967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4964, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4967
  %_ind4968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4964, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4968
  %_ind4969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4962, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4964, { i64, [0 x i64] }** %_ind4969
  %_raw_array4970 = call i64* @oat_alloc_array(i64 4)
  %_array4971 = bitcast i64* %_raw_array4970 to { i64, [0 x i64] }*
  %_ind4972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4971, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4972
  %_ind4973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4971, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4973
  %_ind4974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4971, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4974
  %_ind4975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4971, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4975
  %_ind4976 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4962, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4971, { i64, [0 x i64] }** %_ind4976
  %_raw_array4977 = call i64* @oat_alloc_array(i64 4)
  %_array4978 = bitcast i64* %_raw_array4977 to { i64, [0 x i64] }*
  %_ind4979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4978, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4979
  %_ind4980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4978, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4980
  %_ind4981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4978, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4981
  %_ind4982 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4978, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4982
  %_ind4983 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4962, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4978, { i64, [0 x i64] }** %_ind4983
  %_raw_array4984 = call i64* @oat_alloc_array(i64 4)
  %_array4985 = bitcast i64* %_raw_array4984 to { i64, [0 x i64] }*
  %_ind4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4986
  %_ind4987 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4987
  %_ind4988 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4988
  %_ind4989 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4985, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4989
  %_ind4990 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4962, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4985, { i64, [0 x i64] }** %_ind4990
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4962, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4991
  store i64 0, i64* %_i4992
  br label %_cond4997
_cond4997:
  %_i4993 = load i64, i64* %_i4992
  %_bop4994 = icmp slt i64 %_i4993, 4
  br i1 %_bop4994, label %_body4996, label %_post4995
_body4996:
  %_new_board4998 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4991
  %_i4999 = load i64, i64* %_i4992
  %_index_ptr5001 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4998, i32 0, i32 1, i64 %_i4999
  %_raw_array5002 = call i64* @oat_alloc_array(i64 4)
  %_array5003 = bitcast i64* %_raw_array5002 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5003, { i64, [0 x i64] }** %_index_ptr5001
  store i64 0, i64* %_j5004
  br label %_cond5009
_cond5009:
  %_j5005 = load i64, i64* %_j5004
  %_bop5006 = icmp slt i64 %_j5005, 4
  br i1 %_bop5006, label %_body5008, label %_post5007
_body5008:
  %_new_board5010 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4991
  %_i5011 = load i64, i64* %_i4992
  %_index_ptr5013 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5010, i32 0, i32 1, i64 %_i5011
  %_index5014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5013
  %_j5015 = load i64, i64* %_j5004
  %_index_ptr5017 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5014, i32 0, i32 1, i64 %_j5015
  %_j5018 = load i64, i64* %_j5004
  %_i5019 = load i64, i64* %_i4992
  %_board5020 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4960
  %_result5021 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5020, i64 %_i5019, i64 %_j5018)
  store i64 %_result5021, i64* %_index_ptr5017
  %_j5022 = load i64, i64* %_j5004
  %_bop5023 = add i64 %_j5022, 1
  store i64 %_bop5023, i64* %_j5004
  br label %_cond5009
_post5007:
  %_i5024 = load i64, i64* %_i4992
  %_bop5025 = add i64 %_i5024, 1
  store i64 %_bop5025, i64* %_i4992
  br label %_cond4997
_post4995:
  store i64 0, i64* %_i5026
  br label %_cond5032
_cond5032:
  %_i5027 = load i64, i64* %_i5026
  %_len5028 = load i64, i64* @len
  %_bop5029 = icmp slt i64 %_i5027, %_len5028
  br i1 %_bop5029, label %_body5031, label %_post5030
_body5031:
  store i64 0, i64* %_j5033
  br label %_cond5039
_cond5039:
  %_j5034 = load i64, i64* %_j5033
  %_len5035 = load i64, i64* @len
  %_bop5036 = icmp slt i64 %_j5034, %_len5035
  br i1 %_bop5036, label %_body5038, label %_post5037
_body5038:
  %_new_board5040 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4991
  %_i5041 = load i64, i64* %_i5026
  %_index_ptr5043 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5040, i32 0, i32 1, i64 %_i5041
  %_index5044 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5043
  %_j5045 = load i64, i64* %_j5033
  %_index_ptr5047 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5044, i32 0, i32 1, i64 %_j5045
  %_index5048 = load i64, i64* %_index_ptr5047
  call void @print_int(i64 %_index5048)
  %_j5050 = load i64, i64* %_j5033
  %_bop5051 = add i64 %_j5050, 1
  store i64 %_bop5051, i64* %_j5033
  br label %_cond5039
_post5037:
  %_i5052 = load i64, i64* %_i5026
  %_bop5053 = add i64 %_i5052, 1
  store i64 %_bop5053, i64* %_i5026
  br label %_cond5032
_post5030:
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
