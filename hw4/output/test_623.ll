; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] }* @_global_arr5286
@_global_arr5286 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_constant5285 = global i64 0
@_str_arr5205 = global [1 x i8] c"\00"
@_str_arr5182 = global [7 x i8] c"TOMATO\00"
@_str_arr5185 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %_i5197, i64 %_j5195, i8* %_a5193, i8* %_b5191) {
  %_i5198 = alloca i64
  %_j5196 = alloca i64
  %_a5194 = alloca i8*
  %_b5192 = alloca i8*
  %_a_chars5211 = alloca { i64, [0 x i64] }*
  %_b_chars5214 = alloca { i64, [0 x i64] }*
  %_last_char_a5220 = alloca i64
  %_last_char_b5226 = alloca i64
  %_prev_lcs5237 = alloca i8*
  %_next_char5249 = alloca i8*
  %_left_lcs5262 = alloca i8*
  %_right_lcs5269 = alloca i8*
  %_left_len5272 = alloca i64
  %_right_len5275 = alloca i64
  store i64 %_i5197, i64* %_i5198
  store i64 %_j5195, i64* %_j5196
  store i8* %_a5193, i8** %_a5194
  store i8* %_b5191, i8** %_b5192
  %_i5199 = load i64, i64* %_i5198
  %_bop5200 = icmp slt i64 %_i5199, 0
  %_j5201 = load i64, i64* %_j5196
  %_bop5202 = icmp slt i64 %_j5201, 0
  %_bop5203 = or i1 %_bop5200, %_bop5202
  br i1 %_bop5203, label %_then5208, label %_else5207
_then5208:
  %_str5204 = getelementptr [1 x i8], [1 x i8]* @_str_arr5205, i32 0, i32 0
  ret i8* %_str5204
_else5207:
  br label %_merge5206
_merge5206:
  %_a5209 = load i8*, i8** %_a5194
  %_result5210 = call { i64, [0 x i64] }* @array_of_string(i8* %_a5209)
  store { i64, [0 x i64] }* %_result5210, { i64, [0 x i64] }** %_a_chars5211
  %_b5212 = load i8*, i8** %_b5192
  %_result5213 = call { i64, [0 x i64] }* @array_of_string(i8* %_b5212)
  store { i64, [0 x i64] }* %_result5213, { i64, [0 x i64] }** %_b_chars5214
  %_a_chars5215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5211
  %_i5216 = load i64, i64* %_i5198
  %_index_ptr5218 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5215, i32 0, i32 1, i64 %_i5216
  %_index5219 = load i64, i64* %_index_ptr5218
  store i64 %_index5219, i64* %_last_char_a5220
  %_b_chars5221 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars5214
  %_j5222 = load i64, i64* %_j5196
  %_index_ptr5224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars5221, i32 0, i32 1, i64 %_j5222
  %_index5225 = load i64, i64* %_index_ptr5224
  store i64 %_index5225, i64* %_last_char_b5226
  %_last_char_a5227 = load i64, i64* %_last_char_a5220
  %_last_char_b5228 = load i64, i64* %_last_char_b5226
  %_bop5229 = icmp eq i64 %_last_char_a5227, %_last_char_b5228
  br i1 %_bop5229, label %_then5255, label %_else5254
_then5255:
  %_b5230 = load i8*, i8** %_b5192
  %_a5231 = load i8*, i8** %_a5194
  %_j5232 = load i64, i64* %_j5196
  %_bop5233 = sub i64 %_j5232, 1
  %_i5234 = load i64, i64* %_i5198
  %_bop5235 = sub i64 %_i5234, 1
  %_result5236 = call i8* @lcs(i64 %_bop5235, i64 %_bop5233, i8* %_a5231, i8* %_b5230)
  store i8* %_result5236, i8** %_prev_lcs5237
  %_buf5238 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_index_ptr5240 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_buf5238, i32 0, i32 1, i32 0
  %_a_chars5241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5211
  %_i5242 = load i64, i64* %_i5198
  %_index_ptr5244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5241, i32 0, i32 1, i64 %_i5242
  %_index5245 = load i64, i64* %_index_ptr5244
  store i64 %_index5245, i64* %_index_ptr5240
  %_buf5246 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_cast5247 = bitcast { i64, [1 x i64] }* %_buf5246 to { i64, [0 x i64] }*
  %_result5248 = call i8* @string_of_array({ i64, [0 x i64] }* %_cast5247)
  store i8* %_result5248, i8** %_next_char5249
  %_next_char5250 = load i8*, i8** %_next_char5249
  %_prev_lcs5251 = load i8*, i8** %_prev_lcs5237
  %_result5252 = call i8* @string_cat(i8* %_prev_lcs5251, i8* %_next_char5250)
  ret i8* %_result5252
_else5254:
  br label %_merge5253
_merge5253:
  %_b5256 = load i8*, i8** %_b5192
  %_a5257 = load i8*, i8** %_a5194
  %_j5258 = load i64, i64* %_j5196
  %_bop5259 = sub i64 %_j5258, 1
  %_i5260 = load i64, i64* %_i5198
  %_result5261 = call i8* @lcs(i64 %_i5260, i64 %_bop5259, i8* %_a5257, i8* %_b5256)
  store i8* %_result5261, i8** %_left_lcs5262
  %_b5263 = load i8*, i8** %_b5192
  %_a5264 = load i8*, i8** %_a5194
  %_j5265 = load i64, i64* %_j5196
  %_i5266 = load i64, i64* %_i5198
  %_bop5267 = sub i64 %_i5266, 1
  %_result5268 = call i8* @lcs(i64 %_bop5267, i64 %_j5265, i8* %_a5264, i8* %_b5263)
  store i8* %_result5268, i8** %_right_lcs5269
  %_left_lcs5270 = load i8*, i8** %_left_lcs5262
  %_result5271 = call i64 @length_of_string(i8* %_left_lcs5270)
  store i64 %_result5271, i64* %_left_len5272
  %_right_lcs5273 = load i8*, i8** %_right_lcs5269
  %_result5274 = call i64 @length_of_string(i8* %_right_lcs5273)
  store i64 %_result5274, i64* %_right_len5275
  %_left_len5276 = load i64, i64* %_left_len5272
  %_right_len5277 = load i64, i64* %_right_len5275
  %_bop5278 = icmp slt i64 %_left_len5276, %_right_len5277
  br i1 %_bop5278, label %_then5283, label %_else5282
_then5283:
  %_right_lcs5279 = load i8*, i8** %_right_lcs5269
  ret i8* %_right_lcs5279
_else5282:
  %_left_lcs5280 = load i8*, i8** %_left_lcs5262
  ret i8* %_left_lcs5280
}

define i64 @program(i64 %_argc5179, { i64, [0 x i8*] }* %_argv5177) {
  %_argc5180 = alloca i64
  %_argv5178 = alloca { i64, [0 x i8*] }*
  %_tomato5183 = alloca i8*
  %_orating5186 = alloca i8*
  store i64 %_argc5179, i64* %_argc5180
  store { i64, [0 x i8*] }* %_argv5177, { i64, [0 x i8*] }** %_argv5178
  %_str5181 = getelementptr [7 x i8], [7 x i8]* @_str_arr5182, i32 0, i32 0
  store i8* %_str5181, i8** %_tomato5183
  %_str5184 = getelementptr [8 x i8], [8 x i8]* @_str_arr5185, i32 0, i32 0
  store i8* %_str5184, i8** %_orating5186
  %_orating5187 = load i8*, i8** %_orating5186
  %_tomato5188 = load i8*, i8** %_tomato5183
  %_result5189 = call i8* @lcs(i64 5, i64 6, i8* %_tomato5188, i8* %_orating5187)
  call void @print_string(i8* %_result5189)
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
