; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x333, { i64, [0 x i64] }* %_y331, i1 %_b329) {
  %_x334 = alloca { i64, [0 x i64] }*
  %_y332 = alloca { i64, [0 x i64] }*
  %_b330 = alloca i1
  store { i64, [0 x i64] }* %_x333, { i64, [0 x i64] }** %_x334
  store { i64, [0 x i64] }* %_y331, { i64, [0 x i64] }** %_y332
  store i1 %_b329, i1* %_b330
  %_b335 = load i1, i1* %_b330
  br i1 %_b335, label %_then340, label %_else339
_then340:
  %_x336 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x334
  ret { i64, [0 x i64] }* %_x336
_else339:
  %_y337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y332
  ret { i64, [0 x i64] }* %_y337
}

define i64 @program(i64 %_argc285, { i64, [0 x i8*] }* %_argv283) {
  %_argc286 = alloca i64
  %_argv284 = alloca { i64, [0 x i8*] }*
  %_x289 = alloca { i64, [0 x i64] }*
  %_i290 = alloca i64
  %_y305 = alloca { i64, [0 x i64] }*
  %_i306 = alloca i64
  store i64 %_argc285, i64* %_argc286
  store { i64, [0 x i8*] }* %_argv283, { i64, [0 x i8*] }** %_argv284
  %_raw_array287 = call i64* @oat_alloc_array(i64 3)
  %_array288 = bitcast i64* %_raw_array287 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array288, { i64, [0 x i64] }** %_x289
  store i64 0, i64* %_i290
  br label %_cond295
_cond295:
  %_i291 = load i64, i64* %_i290
  %_bop292 = icmp slt i64 %_i291, 3
  br i1 %_bop292, label %_body294, label %_post293
_body294:
  %_x296 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x289
  %_i297 = load i64, i64* %_i290
  %_index_ptr299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x296, i32 0, i32 1, i64 %_i297
  %_i300 = load i64, i64* %_i290
  store i64 %_i300, i64* %_index_ptr299
  %_i301 = load i64, i64* %_i290
  %_bop302 = add i64 %_i301, 1
  store i64 %_bop302, i64* %_i290
  br label %_cond295
_post293:
  %_raw_array303 = call i64* @oat_alloc_array(i64 3)
  %_array304 = bitcast i64* %_raw_array303 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array304, { i64, [0 x i64] }** %_y305
  store i64 0, i64* %_i306
  br label %_cond311
_cond311:
  %_i307 = load i64, i64* %_i306
  %_bop308 = icmp slt i64 %_i307, 3
  br i1 %_bop308, label %_body310, label %_post309
_body310:
  %_y312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y305
  %_i313 = load i64, i64* %_i306
  %_index_ptr315 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y312, i32 0, i32 1, i64 %_i313
  %_i316 = load i64, i64* %_i306
  %_bop317 = add i64 %_i316, 3
  store i64 %_bop317, i64* %_index_ptr315
  %_i318 = load i64, i64* %_i306
  %_bop319 = add i64 %_i318, 1
  store i64 %_bop319, i64* %_i306
  br label %_cond311
_post309:
  %_y320 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y305
  %_x321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x289
  %_result322 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x321, { i64, [0 x i64] }* %_y320, i1 1)
  %_index_ptr324 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result322, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr324
  %_x325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x289
  %_index_ptr327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x325, i32 0, i32 1, i32 0
  %_index328 = load i64, i64* %_index_ptr327
  ret i64 %_index328
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
