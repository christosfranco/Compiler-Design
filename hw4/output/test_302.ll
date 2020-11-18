; generated from: oatprograms/lcs.oat
target triple = "x86_64-unknown-linux"
@buf = global { i64, [1 x i64] }* @_global_arr5289
@_global_arr5289 = global { i64, [1 x i64] } { i64 1, [1 x i64] [ i64 0 ] }
@_constant5288 = global i64 0
@_str_arr5208 = global [1 x i8] c"\00"
@_str_arr5185 = global [7 x i8] c"TOMATO\00"
@_str_arr5188 = global [8 x i8] c"ORATING\00"

define i8* @lcs(i64 %_i5200, i64 %_j5198, i8* %_a5196, i8* %_b5194) {
  %_i5201 = alloca i64
  %_j5199 = alloca i64
  %_a5197 = alloca i8*
  %_b5195 = alloca i8*
  %_a_chars5214 = alloca { i64, [0 x i64] }*
  %_b_chars5217 = alloca { i64, [0 x i64] }*
  %_last_char_a5223 = alloca i64
  %_last_char_b5229 = alloca i64
  %_prev_lcs5240 = alloca i8*
  %_next_char5252 = alloca i8*
  %_left_lcs5265 = alloca i8*
  %_right_lcs5272 = alloca i8*
  %_left_len5275 = alloca i64
  %_right_len5278 = alloca i64
  store i64 %_i5200, i64* %_i5201
  store i64 %_j5198, i64* %_j5199
  store i8* %_a5196, i8** %_a5197
  store i8* %_b5194, i8** %_b5195
  %_i5202 = load i64, i64* %_i5201
  %_bop5203 = icmp slt i64 %_i5202, 0
  %_j5204 = load i64, i64* %_j5199
  %_bop5205 = icmp slt i64 %_j5204, 0
  %_bop5206 = or i1 %_bop5203, %_bop5205
  br i1 %_bop5206, label %_then5211, label %_else5210
_then5211:
  %_str5207 = getelementptr [1 x i8], [1 x i8]* @_str_arr5208, i32 0, i32 0
  ret i8* %_str5207
_else5210:
  br label %_merge5209
_merge5209:
  %_a5212 = load i8*, i8** %_a5197
  %_result5213 = call { i64, [0 x i64] }* @array_of_string(i8* %_a5212)
  store { i64, [0 x i64] }* %_result5213, { i64, [0 x i64] }** %_a_chars5214
  %_b5215 = load i8*, i8** %_b5195
  %_result5216 = call { i64, [0 x i64] }* @array_of_string(i8* %_b5215)
  store { i64, [0 x i64] }* %_result5216, { i64, [0 x i64] }** %_b_chars5217
  %_a_chars5218 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5214
  %_i5219 = load i64, i64* %_i5201
  %_index_ptr5221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5218, i32 0, i32 1, i64 %_i5219
  %_index5222 = load i64, i64* %_index_ptr5221
  store i64 %_index5222, i64* %_last_char_a5223
  %_b_chars5224 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b_chars5217
  %_j5225 = load i64, i64* %_j5199
  %_index_ptr5227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b_chars5224, i32 0, i32 1, i64 %_j5225
  %_index5228 = load i64, i64* %_index_ptr5227
  store i64 %_index5228, i64* %_last_char_b5229
  %_last_char_a5230 = load i64, i64* %_last_char_a5223
  %_last_char_b5231 = load i64, i64* %_last_char_b5229
  %_bop5232 = icmp eq i64 %_last_char_a5230, %_last_char_b5231
  br i1 %_bop5232, label %_then5258, label %_else5257
_then5258:
  %_b5233 = load i8*, i8** %_b5195
  %_a5234 = load i8*, i8** %_a5197
  %_j5235 = load i64, i64* %_j5199
  %_bop5236 = sub i64 %_j5235, 1
  %_i5237 = load i64, i64* %_i5201
  %_bop5238 = sub i64 %_i5237, 1
  %_result5239 = call i8* @lcs(i64 %_bop5238, i64 %_bop5236, i8* %_a5234, i8* %_b5233)
  store i8* %_result5239, i8** %_prev_lcs5240
  %_buf5241 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_index_ptr5243 = getelementptr { i64, [1 x i64] }, { i64, [1 x i64] }* %_buf5241, i32 0, i32 1, i32 0
  %_a_chars5244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a_chars5214
  %_i5245 = load i64, i64* %_i5201
  %_index_ptr5247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a_chars5244, i32 0, i32 1, i64 %_i5245
  %_index5248 = load i64, i64* %_index_ptr5247
  store i64 %_index5248, i64* %_index_ptr5243
  %_buf5249 = load { i64, [1 x i64] }*, { i64, [1 x i64] }** @buf
  %_cast5250 = bitcast { i64, [1 x i64] }* %_buf5249 to { i64, [0 x i64] }*
  %_result5251 = call i8* @string_of_array({ i64, [0 x i64] }* %_cast5250)
  store i8* %_result5251, i8** %_next_char5252
  %_next_char5253 = load i8*, i8** %_next_char5252
  %_prev_lcs5254 = load i8*, i8** %_prev_lcs5240
  %_result5255 = call i8* @string_cat(i8* %_prev_lcs5254, i8* %_next_char5253)
  ret i8* %_result5255
_else5257:
  br label %_merge5256
_merge5256:
  %_b5259 = load i8*, i8** %_b5195
  %_a5260 = load i8*, i8** %_a5197
  %_j5261 = load i64, i64* %_j5199
  %_bop5262 = sub i64 %_j5261, 1
  %_i5263 = load i64, i64* %_i5201
  %_result5264 = call i8* @lcs(i64 %_i5263, i64 %_bop5262, i8* %_a5260, i8* %_b5259)
  store i8* %_result5264, i8** %_left_lcs5265
  %_b5266 = load i8*, i8** %_b5195
  %_a5267 = load i8*, i8** %_a5197
  %_j5268 = load i64, i64* %_j5199
  %_i5269 = load i64, i64* %_i5201
  %_bop5270 = sub i64 %_i5269, 1
  %_result5271 = call i8* @lcs(i64 %_bop5270, i64 %_j5268, i8* %_a5267, i8* %_b5266)
  store i8* %_result5271, i8** %_right_lcs5272
  %_left_lcs5273 = load i8*, i8** %_left_lcs5265
  %_result5274 = call i64 @length_of_string(i8* %_left_lcs5273)
  store i64 %_result5274, i64* %_left_len5275
  %_right_lcs5276 = load i8*, i8** %_right_lcs5272
  %_result5277 = call i64 @length_of_string(i8* %_right_lcs5276)
  store i64 %_result5277, i64* %_right_len5278
  %_left_len5279 = load i64, i64* %_left_len5275
  %_right_len5280 = load i64, i64* %_right_len5278
  %_bop5281 = icmp slt i64 %_left_len5279, %_right_len5280
  br i1 %_bop5281, label %_then5286, label %_else5285
_then5286:
  %_right_lcs5282 = load i8*, i8** %_right_lcs5272
  ret i8* %_right_lcs5282
_else5285:
  %_left_lcs5283 = load i8*, i8** %_left_lcs5265
  ret i8* %_left_lcs5283
}

define i64 @program(i64 %_argc5182, { i64, [0 x i8*] }* %_argv5180) {
  %_argc5183 = alloca i64
  %_argv5181 = alloca { i64, [0 x i8*] }*
  %_tomato5186 = alloca i8*
  %_orating5189 = alloca i8*
  store i64 %_argc5182, i64* %_argc5183
  store { i64, [0 x i8*] }* %_argv5180, { i64, [0 x i8*] }** %_argv5181
  %_str5184 = getelementptr [7 x i8], [7 x i8]* @_str_arr5185, i32 0, i32 0
  store i8* %_str5184, i8** %_tomato5186
  %_str5187 = getelementptr [8 x i8], [8 x i8]* @_str_arr5188, i32 0, i32 0
  store i8* %_str5187, i8** %_orating5189
  %_orating5190 = load i8*, i8** %_orating5189
  %_tomato5191 = load i8*, i8** %_tomato5186
  %_result5192 = call i8* @lcs(i64 5, i64 6, i8* %_tomato5191, i8* %_orating5190)
  call void @print_string(i8* %_result5192)
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
