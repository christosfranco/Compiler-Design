; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial5344, i64 %_len5342, i64 %_insertee5340) {
  %_partial5345 = alloca { i64, [0 x i64] }*
  %_len5343 = alloca i64
  %_insertee5341 = alloca i64
  %_inserted5350 = alloca { i64, [0 x i64] }*
  %_i5351 = alloca i64
  %_not_yet_inserted5366 = alloca i1
  %_i5380 = alloca i64
  store { i64, [0 x i64] }* %_partial5344, { i64, [0 x i64] }** %_partial5345
  store i64 %_len5342, i64* %_len5343
  store i64 %_insertee5340, i64* %_insertee5341
  %_len5346 = load i64, i64* %_len5343
  %_bop5347 = add i64 %_len5346, 1
  %_raw_array5348 = call i64* @oat_alloc_array(i64 %_bop5347)
  %_array5349 = bitcast i64* %_raw_array5348 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5349, { i64, [0 x i64] }** %_inserted5350
  store i64 0, i64* %_i5351
  br label %_cond5358
_cond5358:
  %_i5352 = load i64, i64* %_i5351
  %_len5353 = load i64, i64* %_len5343
  %_bop5354 = add i64 %_len5353, 1
  %_bop5355 = icmp slt i64 %_i5352, %_bop5354
  br i1 %_bop5355, label %_body5357, label %_post5356
_body5357:
  %_inserted5359 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  %_i5360 = load i64, i64* %_i5351
  %_index_ptr5362 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5359, i32 0, i32 1, i64 %_i5360
  %_unop5363 = sub i64 0, 1
  store i64 %_unop5363, i64* %_index_ptr5362
  %_i5364 = load i64, i64* %_i5351
  %_bop5365 = add i64 %_i5364, 1
  store i64 %_bop5365, i64* %_i5351
  br label %_cond5358
_post5356:
  store i1 1, i1* %_not_yet_inserted5366
  %_insertee5367 = load i64, i64* %_insertee5341
  %_partial5368 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5345
  %_index_ptr5370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5368, i32 0, i32 1, i32 0
  %_index5371 = load i64, i64* %_index_ptr5370
  %_bop5372 = icmp slt i64 %_insertee5367, %_index5371
  br i1 %_bop5372, label %_then5379, label %_else5378
_then5379:
  store i1 0, i1* %_not_yet_inserted5366
  %_inserted5373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  %_index_ptr5375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5373, i32 0, i32 1, i32 0
  %_insertee5376 = load i64, i64* %_insertee5341
  store i64 %_insertee5376, i64* %_index_ptr5375
  br label %_merge5377
_else5378:
  br label %_merge5377
_merge5377:
  store i64 0, i64* %_i5380
  br label %_cond5386
_cond5386:
  %_i5381 = load i64, i64* %_i5380
  %_len5382 = load i64, i64* %_len5343
  %_bop5383 = icmp slt i64 %_i5381, %_len5382
  br i1 %_bop5383, label %_body5385, label %_post5384
_body5385:
  %_not_yet_inserted5387 = load i1, i1* %_not_yet_inserted5366
  br i1 %_not_yet_inserted5387, label %_then5434, label %_else5433
_then5434:
  %_insertee5388 = load i64, i64* %_insertee5341
  %_partial5389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5345
  %_i5390 = load i64, i64* %_i5380
  %_index_ptr5392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5389, i32 0, i32 1, i64 %_i5390
  %_index5393 = load i64, i64* %_index_ptr5392
  %_bop5394 = icmp sgt i64 %_insertee5388, %_index5393
  br i1 %_bop5394, label %_then5421, label %_else5420
_then5421:
  store i1 0, i1* %_not_yet_inserted5366
  %_inserted5395 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  %_i5396 = load i64, i64* %_i5380
  %_bop5397 = add i64 %_i5396, 1
  %_index_ptr5399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5395, i32 0, i32 1, i64 %_bop5397
  %_insertee5400 = load i64, i64* %_insertee5341
  store i64 %_insertee5400, i64* %_index_ptr5399
  %_inserted5401 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  %_i5402 = load i64, i64* %_i5380
  %_index_ptr5404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5401, i32 0, i32 1, i64 %_i5402
  %_partial5405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5345
  %_i5406 = load i64, i64* %_i5380
  %_index_ptr5408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5405, i32 0, i32 1, i64 %_i5406
  %_index5409 = load i64, i64* %_index_ptr5408
  store i64 %_index5409, i64* %_index_ptr5404
  br label %_merge5419
_else5420:
  %_inserted5410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  %_i5411 = load i64, i64* %_i5380
  %_index_ptr5413 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5410, i32 0, i32 1, i64 %_i5411
  %_partial5414 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5345
  %_i5415 = load i64, i64* %_i5380
  %_index_ptr5417 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5414, i32 0, i32 1, i64 %_i5415
  %_index5418 = load i64, i64* %_index_ptr5417
  store i64 %_index5418, i64* %_index_ptr5413
  br label %_merge5419
_merge5419:
  br label %_merge5432
_else5433:
  %_inserted5422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  %_i5423 = load i64, i64* %_i5380
  %_bop5424 = add i64 %_i5423, 1
  %_index_ptr5426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5422, i32 0, i32 1, i64 %_bop5424
  %_partial5427 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5345
  %_i5428 = load i64, i64* %_i5380
  %_index_ptr5430 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5427, i32 0, i32 1, i64 %_i5428
  %_index5431 = load i64, i64* %_index_ptr5430
  store i64 %_index5431, i64* %_index_ptr5426
  br label %_merge5432
_merge5432:
  %_i5435 = load i64, i64* %_i5380
  %_bop5436 = add i64 %_i5435, 1
  store i64 %_bop5436, i64* %_i5380
  br label %_cond5386
_post5384:
  %_inserted5437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5350
  ret { i64, [0 x i64] }* %_inserted5437
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted5309, i64 %_len5307) {
  %_unsorted5310 = alloca { i64, [0 x i64] }*
  %_len5308 = alloca i64
  %_out5314 = alloca { i64, [0 x i64] }*
  %_i5322 = alloca i64
  store { i64, [0 x i64] }* %_unsorted5309, { i64, [0 x i64] }** %_unsorted5310
  store i64 %_len5307, i64* %_len5308
  %_raw_array5311 = call i64* @oat_alloc_array(i64 1)
  %_array5312 = bitcast i64* %_raw_array5311 to { i64, [0 x i64] }*
  %_ind5313 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5312, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5313
  store { i64, [0 x i64] }* %_array5312, { i64, [0 x i64] }** %_out5314
  %_out5315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5314
  %_index_ptr5317 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out5315, i32 0, i32 1, i32 0
  %_unsorted5318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5310
  %_index_ptr5320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5318, i32 0, i32 1, i32 0
  %_index5321 = load i64, i64* %_index_ptr5320
  store i64 %_index5321, i64* %_index_ptr5317
  store i64 1, i64* %_i5322
  br label %_cond5328
_cond5328:
  %_i5323 = load i64, i64* %_i5322
  %_len5324 = load i64, i64* %_len5308
  %_bop5325 = icmp slt i64 %_i5323, %_len5324
  br i1 %_bop5325, label %_body5327, label %_post5326
_body5327:
  %_unsorted5329 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5310
  %_i5330 = load i64, i64* %_i5322
  %_index_ptr5332 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5329, i32 0, i32 1, i64 %_i5330
  %_index5333 = load i64, i64* %_index_ptr5332
  %_i5334 = load i64, i64* %_i5322
  %_out5335 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5314
  %_result5336 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out5335, i64 %_i5334, i64 %_index5333)
  store { i64, [0 x i64] }* %_result5336, { i64, [0 x i64] }** %_out5314
  %_i5337 = load i64, i64* %_i5322
  %_bop5338 = add i64 %_i5337, 1
  store i64 %_bop5338, i64* %_i5322
  br label %_cond5328
_post5326:
  %_out5339 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5314
  ret { i64, [0 x i64] }* %_out5339
}

define i64 @program(i64 %_argc5289, { i64, [0 x i8*] }* %_argv5287) {
  %_argc5290 = alloca i64
  %_argv5288 = alloca { i64, [0 x i8*] }*
  %_array5299 = alloca { i64, [0 x i64] }*
  %_result5302 = alloca { i64, [0 x i64] }*
  store i64 %_argc5289, i64* %_argc5290
  store { i64, [0 x i8*] }* %_argv5287, { i64, [0 x i8*] }** %_argv5288
  %_raw_array5291 = call i64* @oat_alloc_array(i64 6)
  %_array5292 = bitcast i64* %_raw_array5291 to { i64, [0 x i64] }*
  %_ind5293 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5292, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind5293
  %_ind5294 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5292, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind5294
  %_ind5295 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5292, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind5295
  %_ind5296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5292, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5296
  %_ind5297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5292, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind5297
  %_ind5298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5292, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind5298
  store { i64, [0 x i64] }* %_array5292, { i64, [0 x i64] }** %_array5299
  %_array5300 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5299
  %_result5301 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array5300, i64 6)
  store { i64, [0 x i64] }* %_result5301, { i64, [0 x i64] }** %_result5302
  %_result5303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result5302
  %_index_ptr5305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5303, i32 0, i32 1, i32 5
  %_index5306 = load i64, i64* %_index_ptr5305
  ret i64 %_index5306
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
