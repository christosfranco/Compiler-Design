; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4
@_constant5176 = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5146, i64 %_i5144, i64 %_j5142, i64 %_count5140) {
  %_board5147 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5145 = alloca i64
  %_j5143 = alloca i64
  %_count5141 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board5146, { i64, [0 x { i64, [0 x i64] }*] }** %_board5147
  store i64 %_i5144, i64* %_i5145
  store i64 %_j5142, i64* %_j5143
  store i64 %_count5140, i64* %_count5141
  %_i5148 = load i64, i64* %_i5145
  %_bop5149 = icmp sge i64 %_i5148, 0
  %_j5150 = load i64, i64* %_j5143
  %_bop5151 = icmp sge i64 %_j5150, 0
  %_bop5152 = and i1 %_bop5149, %_bop5151
  %_i5153 = load i64, i64* %_i5145
  %_len5154 = load i64, i64* @len
  %_bop5155 = icmp slt i64 %_i5153, %_len5154
  %_bop5156 = and i1 %_bop5152, %_bop5155
  %_j5157 = load i64, i64* %_j5143
  %_len5158 = load i64, i64* @len
  %_bop5159 = icmp slt i64 %_j5157, %_len5158
  %_bop5160 = and i1 %_bop5156, %_bop5159
  br i1 %_bop5160, label %_then5175, label %_else5174
_then5175:
  %_count5161 = load i64, i64* %_count5141
  %_board5162 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5147
  %_i5163 = load i64, i64* %_i5145
  %_index_ptr5165 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5162, i32 0, i32 1, i64 %_i5163
  %_index5166 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5165
  %_j5167 = load i64, i64* %_j5143
  %_index_ptr5169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5166, i32 0, i32 1, i64 %_j5167
  %_index5170 = load i64, i64* %_index_ptr5169
  %_bop5171 = add i64 %_count5161, %_index5170
  ret i64 %_bop5171
_else5174:
  %_count5172 = load i64, i64* %_count5141
  ret i64 %_count5172
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5055, i64 %_i5053, i64 %_j5051) {
  %_board5056 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i5054 = alloca i64
  %_j5052 = alloca i64
  %_alive5066 = alloca i64
  %_count5067 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board5055, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  store i64 %_i5053, i64* %_i5054
  store i64 %_j5051, i64* %_j5052
  %_board5057 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_i5058 = load i64, i64* %_i5054
  %_index_ptr5060 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board5057, i32 0, i32 1, i64 %_i5058
  %_index5061 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5060
  %_j5062 = load i64, i64* %_j5052
  %_index_ptr5064 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5061, i32 0, i32 1, i64 %_j5062
  %_index5065 = load i64, i64* %_index_ptr5064
  store i64 %_index5065, i64* %_alive5066
  store i64 0, i64* %_count5067
  %_count5068 = load i64, i64* %_count5067
  %_j5069 = load i64, i64* %_j5052
  %_bop5070 = sub i64 %_j5069, 1
  %_i5071 = load i64, i64* %_i5054
  %_bop5072 = sub i64 %_i5071, 1
  %_board5073 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5074 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5073, i64 %_bop5072, i64 %_bop5070, i64 %_count5068)
  store i64 %_result5074, i64* %_count5067
  %_count5075 = load i64, i64* %_count5067
  %_j5076 = load i64, i64* %_j5052
  %_i5077 = load i64, i64* %_i5054
  %_bop5078 = sub i64 %_i5077, 1
  %_board5079 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5080 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5079, i64 %_bop5078, i64 %_j5076, i64 %_count5075)
  store i64 %_result5080, i64* %_count5067
  %_count5081 = load i64, i64* %_count5067
  %_j5082 = load i64, i64* %_j5052
  %_bop5083 = add i64 %_j5082, 1
  %_i5084 = load i64, i64* %_i5054
  %_bop5085 = sub i64 %_i5084, 1
  %_board5086 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5087 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5086, i64 %_bop5085, i64 %_bop5083, i64 %_count5081)
  store i64 %_result5087, i64* %_count5067
  %_count5088 = load i64, i64* %_count5067
  %_j5089 = load i64, i64* %_j5052
  %_bop5090 = sub i64 %_j5089, 1
  %_i5091 = load i64, i64* %_i5054
  %_board5092 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5093 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5092, i64 %_i5091, i64 %_bop5090, i64 %_count5088)
  store i64 %_result5093, i64* %_count5067
  %_count5094 = load i64, i64* %_count5067
  %_j5095 = load i64, i64* %_j5052
  %_bop5096 = add i64 %_j5095, 1
  %_i5097 = load i64, i64* %_i5054
  %_board5098 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5099 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5098, i64 %_i5097, i64 %_bop5096, i64 %_count5094)
  store i64 %_result5099, i64* %_count5067
  %_count5100 = load i64, i64* %_count5067
  %_j5101 = load i64, i64* %_j5052
  %_bop5102 = sub i64 %_j5101, 1
  %_i5103 = load i64, i64* %_i5054
  %_bop5104 = add i64 %_i5103, 1
  %_board5105 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5106 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5105, i64 %_bop5104, i64 %_bop5102, i64 %_count5100)
  store i64 %_result5106, i64* %_count5067
  %_count5107 = load i64, i64* %_count5067
  %_j5108 = load i64, i64* %_j5052
  %_i5109 = load i64, i64* %_i5054
  %_bop5110 = add i64 %_i5109, 1
  %_board5111 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5112 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5111, i64 %_bop5110, i64 %_j5108, i64 %_count5107)
  store i64 %_result5112, i64* %_count5067
  %_count5113 = load i64, i64* %_count5067
  %_j5114 = load i64, i64* %_j5052
  %_bop5115 = add i64 %_j5114, 1
  %_i5116 = load i64, i64* %_i5054
  %_bop5117 = add i64 %_i5116, 1
  %_board5118 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board5056
  %_result5119 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board5118, i64 %_bop5117, i64 %_bop5115, i64 %_count5113)
  store i64 %_result5119, i64* %_count5067
  %_alive5120 = load i64, i64* %_alive5066
  %_bop5121 = icmp eq i64 %_alive5120, 1
  br i1 %_bop5121, label %_then5134, label %_else5133
_then5134:
  %_count5122 = load i64, i64* %_count5067
  %_bop5123 = icmp slt i64 %_count5122, 2
  br i1 %_bop5123, label %_then5131, label %_else5130
_then5131:
  ret i64 0
_else5130:
  %_count5124 = load i64, i64* %_count5067
  %_bop5125 = icmp slt i64 %_count5124, 4
  br i1 %_bop5125, label %_then5128, label %_else5127
_then5128:
  ret i64 1
_else5127:
  br label %_merge5126
_merge5126:
  br label %_merge5129
_merge5129:
  ret i64 0
_else5133:
  br label %_merge5132
_merge5132:
  %_count5135 = load i64, i64* %_count5067
  %_bop5136 = icmp eq i64 %_count5135, 3
  br i1 %_bop5136, label %_then5139, label %_else5138
_then5139:
  ret i64 1
_else5138:
  ret i64 0
_merge5137:
  ret i64 0
}

define i64 @program(i64 %_argc4925, { i64, [0 x i8*] }* %_argv4923) {
  %_argc4926 = alloca i64
  %_argv4924 = alloca { i64, [0 x i8*] }*
  %_board4957 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board4988 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4989 = alloca i64
  %_j5001 = alloca i64
  %_i5023 = alloca i64
  %_j5030 = alloca i64
  store i64 %_argc4925, i64* %_argc4926
  store { i64, [0 x i8*] }* %_argv4923, { i64, [0 x i8*] }** %_argv4924
  %_raw_array4927 = call i64* @oat_alloc_array(i64 4)
  %_array4928 = bitcast i64* %_raw_array4927 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4929 = call i64* @oat_alloc_array(i64 4)
  %_array4930 = bitcast i64* %_raw_array4929 to { i64, [0 x i64] }*
  %_ind4931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4930, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4931
  %_ind4932 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4930, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4932
  %_ind4933 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4930, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4933
  %_ind4934 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4930, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4934
  %_ind4935 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4928, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4930, { i64, [0 x i64] }** %_ind4935
  %_raw_array4936 = call i64* @oat_alloc_array(i64 4)
  %_array4937 = bitcast i64* %_raw_array4936 to { i64, [0 x i64] }*
  %_ind4938 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4937, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4938
  %_ind4939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4937, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4939
  %_ind4940 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4937, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4940
  %_ind4941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4937, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind4941
  %_ind4942 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4928, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4937, { i64, [0 x i64] }** %_ind4942
  %_raw_array4943 = call i64* @oat_alloc_array(i64 4)
  %_array4944 = bitcast i64* %_raw_array4943 to { i64, [0 x i64] }*
  %_ind4945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4944, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4945
  %_ind4946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4944, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4946
  %_ind4947 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4944, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4947
  %_ind4948 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4944, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4948
  %_ind4949 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4928, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4944, { i64, [0 x i64] }** %_ind4949
  %_raw_array4950 = call i64* @oat_alloc_array(i64 4)
  %_array4951 = bitcast i64* %_raw_array4950 to { i64, [0 x i64] }*
  %_ind4952 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4951, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4952
  %_ind4953 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4951, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4953
  %_ind4954 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4951, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4954
  %_ind4955 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4951, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4955
  %_ind4956 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4928, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4951, { i64, [0 x i64] }** %_ind4956
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4928, { i64, [0 x { i64, [0 x i64] }*] }** %_board4957
  %_raw_array4958 = call i64* @oat_alloc_array(i64 4)
  %_array4959 = bitcast i64* %_raw_array4958 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4960 = call i64* @oat_alloc_array(i64 4)
  %_array4961 = bitcast i64* %_raw_array4960 to { i64, [0 x i64] }*
  %_ind4962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4961, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4962
  %_ind4963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4961, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4963
  %_ind4964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4961, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4964
  %_ind4965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4961, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4965
  %_ind4966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4959, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4961, { i64, [0 x i64] }** %_ind4966
  %_raw_array4967 = call i64* @oat_alloc_array(i64 4)
  %_array4968 = bitcast i64* %_raw_array4967 to { i64, [0 x i64] }*
  %_ind4969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4968, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4969
  %_ind4970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4968, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4970
  %_ind4971 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4968, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4971
  %_ind4972 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4968, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4972
  %_ind4973 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4959, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4968, { i64, [0 x i64] }** %_ind4973
  %_raw_array4974 = call i64* @oat_alloc_array(i64 4)
  %_array4975 = bitcast i64* %_raw_array4974 to { i64, [0 x i64] }*
  %_ind4976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4975, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4976
  %_ind4977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4975, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4977
  %_ind4978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4975, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4978
  %_ind4979 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4975, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4979
  %_ind4980 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4959, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4975, { i64, [0 x i64] }** %_ind4980
  %_raw_array4981 = call i64* @oat_alloc_array(i64 4)
  %_array4982 = bitcast i64* %_raw_array4981 to { i64, [0 x i64] }*
  %_ind4983 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4982, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4983
  %_ind4984 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4982, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4984
  %_ind4985 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4982, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4985
  %_ind4986 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4982, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4986
  %_ind4987 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4959, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4982, { i64, [0 x i64] }** %_ind4987
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4959, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4988
  store i64 0, i64* %_i4989
  br label %_cond4994
_cond4994:
  %_i4990 = load i64, i64* %_i4989
  %_bop4991 = icmp slt i64 %_i4990, 4
  br i1 %_bop4991, label %_body4993, label %_post4992
_body4993:
  %_new_board4995 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4988
  %_i4996 = load i64, i64* %_i4989
  %_index_ptr4998 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4995, i32 0, i32 1, i64 %_i4996
  %_raw_array4999 = call i64* @oat_alloc_array(i64 4)
  %_array5000 = bitcast i64* %_raw_array4999 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5000, { i64, [0 x i64] }** %_index_ptr4998
  store i64 0, i64* %_j5001
  br label %_cond5006
_cond5006:
  %_j5002 = load i64, i64* %_j5001
  %_bop5003 = icmp slt i64 %_j5002, 4
  br i1 %_bop5003, label %_body5005, label %_post5004
_body5005:
  %_new_board5007 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4988
  %_i5008 = load i64, i64* %_i4989
  %_index_ptr5010 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5007, i32 0, i32 1, i64 %_i5008
  %_index5011 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5010
  %_j5012 = load i64, i64* %_j5001
  %_index_ptr5014 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5011, i32 0, i32 1, i64 %_j5012
  %_j5015 = load i64, i64* %_j5001
  %_i5016 = load i64, i64* %_i4989
  %_board5017 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4957
  %_result5018 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board5017, i64 %_i5016, i64 %_j5015)
  store i64 %_result5018, i64* %_index_ptr5014
  %_j5019 = load i64, i64* %_j5001
  %_bop5020 = add i64 %_j5019, 1
  store i64 %_bop5020, i64* %_j5001
  br label %_cond5006
_post5004:
  %_i5021 = load i64, i64* %_i4989
  %_bop5022 = add i64 %_i5021, 1
  store i64 %_bop5022, i64* %_i4989
  br label %_cond4994
_post4992:
  store i64 0, i64* %_i5023
  br label %_cond5029
_cond5029:
  %_i5024 = load i64, i64* %_i5023
  %_len5025 = load i64, i64* @len
  %_bop5026 = icmp slt i64 %_i5024, %_len5025
  br i1 %_bop5026, label %_body5028, label %_post5027
_body5028:
  store i64 0, i64* %_j5030
  br label %_cond5036
_cond5036:
  %_j5031 = load i64, i64* %_j5030
  %_len5032 = load i64, i64* @len
  %_bop5033 = icmp slt i64 %_j5031, %_len5032
  br i1 %_bop5033, label %_body5035, label %_post5034
_body5035:
  %_new_board5037 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4988
  %_i5038 = load i64, i64* %_i5023
  %_index_ptr5040 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board5037, i32 0, i32 1, i64 %_i5038
  %_index5041 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr5040
  %_j5042 = load i64, i64* %_j5030
  %_index_ptr5044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index5041, i32 0, i32 1, i64 %_j5042
  %_index5045 = load i64, i64* %_index_ptr5044
  call void @print_int(i64 %_index5045)
  %_j5047 = load i64, i64* %_j5030
  %_bop5048 = add i64 %_j5047, 1
  store i64 %_bop5048, i64* %_j5030
  br label %_cond5036
_post5034:
  %_i5049 = load i64, i64* %_i5023
  %_bop5050 = add i64 %_i5049, 1
  store i64 %_bop5050, i64* %_i5023
  br label %_cond5029
_post5027:
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
