; generated from: oatprograms/insertion_sort.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_partial5347, i64 %_len5345, i64 %_insertee5343) {
  %_partial5348 = alloca { i64, [0 x i64] }*
  %_len5346 = alloca i64
  %_insertee5344 = alloca i64
  %_inserted5353 = alloca { i64, [0 x i64] }*
  %_i5354 = alloca i64
  %_not_yet_inserted5369 = alloca i1
  %_i5383 = alloca i64
  store { i64, [0 x i64] }* %_partial5347, { i64, [0 x i64] }** %_partial5348
  store i64 %_len5345, i64* %_len5346
  store i64 %_insertee5343, i64* %_insertee5344
  %_len5349 = load i64, i64* %_len5346
  %_bop5350 = add i64 %_len5349, 1
  %_raw_array5351 = call i64* @oat_alloc_array(i64 %_bop5350)
  %_array5352 = bitcast i64* %_raw_array5351 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array5352, { i64, [0 x i64] }** %_inserted5353
  store i64 0, i64* %_i5354
  br label %_cond5361
_cond5361:
  %_i5355 = load i64, i64* %_i5354
  %_len5356 = load i64, i64* %_len5346
  %_bop5357 = add i64 %_len5356, 1
  %_bop5358 = icmp slt i64 %_i5355, %_bop5357
  br i1 %_bop5358, label %_body5360, label %_post5359
_body5360:
  %_inserted5362 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  %_i5363 = load i64, i64* %_i5354
  %_index_ptr5365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5362, i32 0, i32 1, i64 %_i5363
  %_unop5366 = sub i64 0, 1
  store i64 %_unop5366, i64* %_index_ptr5365
  %_i5367 = load i64, i64* %_i5354
  %_bop5368 = add i64 %_i5367, 1
  store i64 %_bop5368, i64* %_i5354
  br label %_cond5361
_post5359:
  store i1 1, i1* %_not_yet_inserted5369
  %_insertee5370 = load i64, i64* %_insertee5344
  %_partial5371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5348
  %_index_ptr5373 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5371, i32 0, i32 1, i32 0
  %_index5374 = load i64, i64* %_index_ptr5373
  %_bop5375 = icmp slt i64 %_insertee5370, %_index5374
  br i1 %_bop5375, label %_then5382, label %_else5381
_then5382:
  store i1 0, i1* %_not_yet_inserted5369
  %_inserted5376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  %_index_ptr5378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5376, i32 0, i32 1, i32 0
  %_insertee5379 = load i64, i64* %_insertee5344
  store i64 %_insertee5379, i64* %_index_ptr5378
  br label %_merge5380
_else5381:
  br label %_merge5380
_merge5380:
  store i64 0, i64* %_i5383
  br label %_cond5389
_cond5389:
  %_i5384 = load i64, i64* %_i5383
  %_len5385 = load i64, i64* %_len5346
  %_bop5386 = icmp slt i64 %_i5384, %_len5385
  br i1 %_bop5386, label %_body5388, label %_post5387
_body5388:
  %_not_yet_inserted5390 = load i1, i1* %_not_yet_inserted5369
  br i1 %_not_yet_inserted5390, label %_then5437, label %_else5436
_then5437:
  %_insertee5391 = load i64, i64* %_insertee5344
  %_partial5392 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5348
  %_i5393 = load i64, i64* %_i5383
  %_index_ptr5395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5392, i32 0, i32 1, i64 %_i5393
  %_index5396 = load i64, i64* %_index_ptr5395
  %_bop5397 = icmp sgt i64 %_insertee5391, %_index5396
  br i1 %_bop5397, label %_then5424, label %_else5423
_then5424:
  store i1 0, i1* %_not_yet_inserted5369
  %_inserted5398 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  %_i5399 = load i64, i64* %_i5383
  %_bop5400 = add i64 %_i5399, 1
  %_index_ptr5402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5398, i32 0, i32 1, i64 %_bop5400
  %_insertee5403 = load i64, i64* %_insertee5344
  store i64 %_insertee5403, i64* %_index_ptr5402
  %_inserted5404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  %_i5405 = load i64, i64* %_i5383
  %_index_ptr5407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5404, i32 0, i32 1, i64 %_i5405
  %_partial5408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5348
  %_i5409 = load i64, i64* %_i5383
  %_index_ptr5411 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5408, i32 0, i32 1, i64 %_i5409
  %_index5412 = load i64, i64* %_index_ptr5411
  store i64 %_index5412, i64* %_index_ptr5407
  br label %_merge5422
_else5423:
  %_inserted5413 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  %_i5414 = load i64, i64* %_i5383
  %_index_ptr5416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5413, i32 0, i32 1, i64 %_i5414
  %_partial5417 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5348
  %_i5418 = load i64, i64* %_i5383
  %_index_ptr5420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5417, i32 0, i32 1, i64 %_i5418
  %_index5421 = load i64, i64* %_index_ptr5420
  store i64 %_index5421, i64* %_index_ptr5416
  br label %_merge5422
_merge5422:
  br label %_merge5435
_else5436:
  %_inserted5425 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  %_i5426 = load i64, i64* %_i5383
  %_bop5427 = add i64 %_i5426, 1
  %_index_ptr5429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_inserted5425, i32 0, i32 1, i64 %_bop5427
  %_partial5430 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_partial5348
  %_i5431 = load i64, i64* %_i5383
  %_index_ptr5433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_partial5430, i32 0, i32 1, i64 %_i5431
  %_index5434 = load i64, i64* %_index_ptr5433
  store i64 %_index5434, i64* %_index_ptr5429
  br label %_merge5435
_merge5435:
  %_i5438 = load i64, i64* %_i5383
  %_bop5439 = add i64 %_i5438, 1
  store i64 %_bop5439, i64* %_i5383
  br label %_cond5389
_post5387:
  %_inserted5440 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_inserted5353
  ret { i64, [0 x i64] }* %_inserted5440
}

define { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_unsorted5312, i64 %_len5310) {
  %_unsorted5313 = alloca { i64, [0 x i64] }*
  %_len5311 = alloca i64
  %_out5317 = alloca { i64, [0 x i64] }*
  %_i5325 = alloca i64
  store { i64, [0 x i64] }* %_unsorted5312, { i64, [0 x i64] }** %_unsorted5313
  store i64 %_len5310, i64* %_len5311
  %_raw_array5314 = call i64* @oat_alloc_array(i64 1)
  %_array5315 = bitcast i64* %_raw_array5314 to { i64, [0 x i64] }*
  %_ind5316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5315, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind5316
  store { i64, [0 x i64] }* %_array5315, { i64, [0 x i64] }** %_out5317
  %_out5318 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5317
  %_index_ptr5320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_out5318, i32 0, i32 1, i32 0
  %_unsorted5321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5313
  %_index_ptr5323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5321, i32 0, i32 1, i32 0
  %_index5324 = load i64, i64* %_index_ptr5323
  store i64 %_index5324, i64* %_index_ptr5320
  store i64 1, i64* %_i5325
  br label %_cond5331
_cond5331:
  %_i5326 = load i64, i64* %_i5325
  %_len5327 = load i64, i64* %_len5311
  %_bop5328 = icmp slt i64 %_i5326, %_len5327
  br i1 %_bop5328, label %_body5330, label %_post5329
_body5330:
  %_unsorted5332 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_unsorted5313
  %_i5333 = load i64, i64* %_i5325
  %_index_ptr5335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_unsorted5332, i32 0, i32 1, i64 %_i5333
  %_index5336 = load i64, i64* %_index_ptr5335
  %_i5337 = load i64, i64* %_i5325
  %_out5338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5317
  %_result5339 = call { i64, [0 x i64] }* @insert({ i64, [0 x i64] }* %_out5338, i64 %_i5337, i64 %_index5336)
  store { i64, [0 x i64] }* %_result5339, { i64, [0 x i64] }** %_out5317
  %_i5340 = load i64, i64* %_i5325
  %_bop5341 = add i64 %_i5340, 1
  store i64 %_bop5341, i64* %_i5325
  br label %_cond5331
_post5329:
  %_out5342 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_out5317
  ret { i64, [0 x i64] }* %_out5342
}

define i64 @program(i64 %_argc5292, { i64, [0 x i8*] }* %_argv5290) {
  %_argc5293 = alloca i64
  %_argv5291 = alloca { i64, [0 x i8*] }*
  %_array5302 = alloca { i64, [0 x i64] }*
  %_result5305 = alloca { i64, [0 x i64] }*
  store i64 %_argc5292, i64* %_argc5293
  store { i64, [0 x i8*] }* %_argv5290, { i64, [0 x i8*] }** %_argv5291
  %_raw_array5294 = call i64* @oat_alloc_array(i64 6)
  %_array5295 = bitcast i64* %_raw_array5294 to { i64, [0 x i64] }*
  %_ind5296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5295, i32 0, i32 1, i32 0
  store i64 13, i64* %_ind5296
  %_ind5297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5295, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind5297
  %_ind5298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5295, i32 0, i32 1, i32 2
  store i64 32, i64* %_ind5298
  %_ind5299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5295, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind5299
  %_ind5300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5295, i32 0, i32 1, i32 4
  store i64 2, i64* %_ind5300
  %_ind5301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array5295, i32 0, i32 1, i32 5
  store i64 6, i64* %_ind5301
  store { i64, [0 x i64] }* %_array5295, { i64, [0 x i64] }** %_array5302
  %_array5303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_array5302
  %_result5304 = call { i64, [0 x i64] }* @insort({ i64, [0 x i64] }* %_array5303, i64 6)
  store { i64, [0 x i64] }* %_result5304, { i64, [0 x i64] }** %_result5305
  %_result5306 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_result5305
  %_index_ptr5308 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result5306, i32 0, i32 1, i32 5
  %_index5309 = load i64, i64* %_index_ptr5308
  ret i64 %_index5309
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
