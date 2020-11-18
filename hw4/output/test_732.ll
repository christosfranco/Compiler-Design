; generated from: oatprograms/maxsubsequence.oat
target triple = "x86_64-unknown-linux"
define i64 @maxsum({ i64, [0 x i64] }* %_arr5104, i64 %_size5102) {
  %_arr5105 = alloca { i64, [0 x i64] }*
  %_size5103 = alloca i64
  %_maxarr5109 = alloca { i64, [0 x i64] }*
  %_maxs5110 = alloca i64
  %_i5116 = alloca i64
  %_j5123 = alloca i64
  store { i64, [0 x i64] }* %_arr5104, { i64, [0 x i64] }** %_arr5105
  store i64 %_size5102, i64* %_size5103
  %_size5106 = load i64, i64* %_size5103
  %_raw_array5107 = call i64* @oat_alloc_array(i64 %_size5106)
  %_array5108 = bitcast i64* %_raw_array5107 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5108, { i64, [0 x i64] }** %_maxarr5109
  store i64 0, i64* %_maxs5110
  %_maxarr5111 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_index_ptr5112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5111, i32 0, i32 1, i32 0
  %_arr5113 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5105
  %_index_ptr5114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5113, i32 0, i32 1, i32 0
  %_index5115 = load i64, i64* %_index_ptr5114
  store i64 %_index5115, i64* %_index_ptr5112
  store i64 0, i64* %_i5116
  br label %_cond5122
_cond5122:
  %_i5117 = load i64, i64* %_i5116
  %_size5118 = load i64, i64* %_size5103
  %_bop5119 = icmp slt i64 %_i5117, %_size5118
  br i1 %_bop5119, label %_body5121, label %_post5120
_body5121:
  store i64 0, i64* %_j5123
  br label %_cond5129
_cond5129:
  %_j5124 = load i64, i64* %_j5123
  %_i5125 = load i64, i64* %_i5116
  %_bop5126 = icmp slt i64 %_j5124, %_i5125
  br i1 %_bop5126, label %_body5128, label %_post5127
_body5128:
  %_arr5130 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5105
  %_i5131 = load i64, i64* %_i5116
  %_index_ptr5132 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5130, i32 0, i32 1, i64 %_i5131
  %_index5133 = load i64, i64* %_index_ptr5132
  %_arr5134 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5105
  %_j5135 = load i64, i64* %_j5123
  %_index_ptr5136 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5134, i32 0, i32 1, i64 %_j5135
  %_index5137 = load i64, i64* %_index_ptr5136
  %_bop5138 = icmp sgt i64 %_index5133, %_index5137
  %_maxarr5139 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_i5140 = load i64, i64* %_i5116
  %_index_ptr5141 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5139, i32 0, i32 1, i64 %_i5140
  %_index5142 = load i64, i64* %_index_ptr5141
  %_maxarr5143 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_j5144 = load i64, i64* %_j5123
  %_index_ptr5145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5143, i32 0, i32 1, i64 %_j5144
  %_index5146 = load i64, i64* %_index_ptr5145
  %_arr5147 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5105
  %_i5148 = load i64, i64* %_i5116
  %_index_ptr5149 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5147, i32 0, i32 1, i64 %_i5148
  %_index5150 = load i64, i64* %_index_ptr5149
  %_bop5151 = add i64 %_index5146, %_index5150
  %_bop5152 = icmp slt i64 %_index5142, %_bop5151
  %_bop5153 = and i1 %_bop5138, %_bop5152
  br i1 %_bop5153, label %_then5168, label %_else5167
_then5168:
  %_maxarr5154 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_i5155 = load i64, i64* %_i5116
  %_index_ptr5156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5154, i32 0, i32 1, i64 %_i5155
  %_maxarr5157 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_j5158 = load i64, i64* %_j5123
  %_index_ptr5159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5157, i32 0, i32 1, i64 %_j5158
  %_index5160 = load i64, i64* %_index_ptr5159
  %_arr5161 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr5105
  %_i5162 = load i64, i64* %_i5116
  %_index_ptr5163 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr5161, i32 0, i32 1, i64 %_i5162
  %_index5164 = load i64, i64* %_index_ptr5163
  %_bop5165 = add i64 %_index5160, %_index5164
  store i64 %_bop5165, i64* %_index_ptr5156
  br label %_merge5166
_else5167:
  br label %_merge5166
_merge5166:
  %_j5169 = load i64, i64* %_j5123
  %_bop5170 = add i64 %_j5169, 1
  store i64 %_bop5170, i64* %_j5123
  br label %_cond5129
_post5127:
  %_maxs5171 = load i64, i64* %_maxs5110
  %_maxarr5172 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_i5173 = load i64, i64* %_i5116
  %_index_ptr5174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5172, i32 0, i32 1, i64 %_i5173
  %_index5175 = load i64, i64* %_index_ptr5174
  %_bop5176 = icmp slt i64 %_maxs5171, %_index5175
  br i1 %_bop5176, label %_then5183, label %_else5182
_then5183:
  %_maxarr5177 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_maxarr5109
  %_i5178 = load i64, i64* %_i5116
  %_index_ptr5179 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_maxarr5177, i32 0, i32 1, i64 %_i5178
  %_index5180 = load i64, i64* %_index_ptr5179
  store i64 %_index5180, i64* %_maxs5110
  br label %_merge5181
_else5182:
  br label %_merge5181
_merge5181:
  %_i5184 = load i64, i64* %_i5116
  %_bop5185 = add i64 %_i5184, 1
  store i64 %_bop5185, i64* %_i5116
  br label %_cond5122
_post5120:
  %_maxs5186 = load i64, i64* %_maxs5110
  ret i64 %_maxs5186
}

define i64 @program(i64 %_argc5086, { i64, [0 x i8*] }* %_argv5084) {
  %_argc5087 = alloca i64
  %_argv5085 = alloca { i64, [0 x i8*] }*
  %_array5097 = alloca { i64, [0 x i64] }*
  %_max_ans5100 = alloca i64
  store i64 %_argc5086, i64* %_argc5087
  store { i64, [0 x i8*] }* %_argv5084, { i64, [0 x i8*] }** %_argv5085
  %_raw_array5088 = call i64* @oat_alloc_array(i64 7)
  %_array5089 = bitcast i64* %_raw_array5088 to { i64, [0 x i64] }*
  %_ind5090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind5090
  %_ind5091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 1
  store i64 101, i64* %_ind5091
  %_ind5092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind5092
  %_ind5093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5093
  %_ind5094 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 4
  store i64 101, i64* %_ind5094
  %_ind5095 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 5
  store i64 4, i64* %_ind5095
  %_ind5096 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5089, i32 0, i32 1, i32 6
  store i64 5, i64* %_ind5096
  store { i64, [0 x i64] }* %_array5089, { i64, [0 x i64] }** %_array5097
  %_array5098 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5097
  %_result5099 = call i64 @maxsum({ i64, [0 x i64] }* %_array5098, i64 7)
  store i64 %_result5099, i64* %_max_ans5100
  %_max_ans5101 = load i64, i64* %_max_ans5100
  ret i64 %_max_ans5101
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
