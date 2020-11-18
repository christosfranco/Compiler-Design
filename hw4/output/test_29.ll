; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc377, { i64, [0 x i8*] }* %_argv375) {
  %_argc378 = alloca i64
  %_argv376 = alloca { i64, [0 x i8*] }*
  %_a402 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s403 = alloca i64
  %_i404 = alloca i64
  %_j410 = alloca i64
  store i64 %_argc377, i64* %_argc378
  store { i64, [0 x i8*] }* %_argv375, { i64, [0 x i8*] }** %_argv376
  %_raw_array379 = call i64* @oat_alloc_array(i64 3)
  %_array380 = bitcast i64* %_raw_array379 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array381 = call i64* @oat_alloc_array(i64 4)
  %_array382 = bitcast i64* %_raw_array381 to { i64, [0 x i64] }*
  %_ind383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array382, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind383
  %_ind384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array382, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind384
  %_ind385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array382, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind385
  %_ind386 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array382, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind386
  %_ind387 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array380, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array382, { i64, [0 x i64] }** %_ind387
  %_raw_array388 = call i64* @oat_alloc_array(i64 4)
  %_array389 = bitcast i64* %_raw_array388 to { i64, [0 x i64] }*
  %_ind390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array389, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind390
  %_ind391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array389, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind391
  %_ind392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array389, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind392
  %_ind393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array389, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind393
  %_ind394 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array380, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array389, { i64, [0 x i64] }** %_ind394
  %_raw_array395 = call i64* @oat_alloc_array(i64 4)
  %_array396 = bitcast i64* %_raw_array395 to { i64, [0 x i64] }*
  %_ind397 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array396, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind397
  %_ind398 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array396, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind398
  %_ind399 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array396, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind399
  %_ind400 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array396, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind400
  %_ind401 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array380, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array396, { i64, [0 x i64] }** %_ind401
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array380, { i64, [0 x { i64, [0 x i64] }*] }** %_a402
  store i64 0, i64* %_s403
  store i64 0, i64* %_i404
  br label %_cond409
_cond409:
  %_i405 = load i64, i64* %_i404
  %_bop406 = icmp slt i64 %_i405, 3
  br i1 %_bop406, label %_body408, label %_post407
_body408:
  store i64 0, i64* %_j410
  br label %_cond415
_cond415:
  %_j411 = load i64, i64* %_j410
  %_bop412 = icmp slt i64 %_j411, 4
  br i1 %_bop412, label %_body414, label %_post413
_body414:
  %_s416 = load i64, i64* %_s403
  %_a417 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a402
  %_i418 = load i64, i64* %_i404
  %_index_ptr420 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a417, i32 0, i32 1, i64 %_i418
  %_index421 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr420
  %_j422 = load i64, i64* %_j410
  %_index_ptr424 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index421, i32 0, i32 1, i64 %_j422
  %_index425 = load i64, i64* %_index_ptr424
  %_bop426 = add i64 %_s416, %_index425
  store i64 %_bop426, i64* %_s403
  %_j427 = load i64, i64* %_j410
  %_bop428 = add i64 %_j427, 1
  store i64 %_bop428, i64* %_j410
  br label %_cond415
_post413:
  %_i429 = load i64, i64* %_i404
  %_bop430 = add i64 %_i429, 1
  store i64 %_bop430, i64* %_i404
  br label %_cond409
_post407:
  %_s431 = load i64, i64* %_s403
  ret i64 %_s431
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
