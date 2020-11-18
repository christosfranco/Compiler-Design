; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_s394 = alloca i64
  %_i395 = alloca i64
  %_j401 = alloca i64
  %_alloca369 = alloca i64
  store i64 %argc, i64* %_alloca369
  %_alloca370 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca370
  %_raw_array371 = call i64* @oat_alloc_array(i64 3)
  %_array372 = bitcast i64* %_raw_array371 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array373 = call i64* @oat_alloc_array(i64 4)
  %_array374 = bitcast i64* %_raw_array373 to { i64, [0 x i64] }*
  %_ind375 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind375
  %_ind376 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind376
  %_ind377 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind377
  %_ind378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array374, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind378
  %_ind379 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array372, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array374, { i64, [0 x i64] }** %_ind379
  %_raw_array380 = call i64* @oat_alloc_array(i64 4)
  %_array381 = bitcast i64* %_raw_array380 to { i64, [0 x i64] }*
  %_ind382 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array381, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind382
  %_ind383 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array381, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind383
  %_ind384 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array381, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind384
  %_ind385 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array381, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind385
  %_ind386 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array372, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array381, { i64, [0 x i64] }** %_ind386
  %_raw_array387 = call i64* @oat_alloc_array(i64 4)
  %_array388 = bitcast i64* %_raw_array387 to { i64, [0 x i64] }*
  %_ind389 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array388, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind389
  %_ind390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array388, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind390
  %_ind391 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array388, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind391
  %_ind392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array388, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind392
  %_ind393 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array372, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array388, { i64, [0 x i64] }** %_ind393
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array372, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s394
  store i64 0, i64* %_i395
  br label %_cond400
_cond400:
  %_i396 = load i64, i64* %_i395
  %_bop397 = icmp slt i64 %_i396, 3
  br i1 %_bop397, label %_body399, label %_post398
_body399:
  store i64 0, i64* %_j401
  br label %_cond406
_cond406:
  %_j402 = load i64, i64* %_j401
  %_bop403 = icmp slt i64 %_j402, 4
  br i1 %_bop403, label %_body405, label %_post404
_body405:
  %_s407 = load i64, i64* %_s394
  %_a408 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i409 = load i64, i64* %_i395
  %_index_ptr411 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a408, i32 0, i32 1, i64 %_i409
  %_index412 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr411
  %_j413 = load i64, i64* %_j401
  %_index_ptr415 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index412, i32 0, i32 1, i64 %_j413
  %_index416 = load i64, i64* %_index_ptr415
  %_bop417 = add i64 %_s407, %_index416
  store i64 %_bop417, i64* %_s394
  %_j418 = load i64, i64* %_j401
  %_bop419 = add i64 %_j418, 1
  store i64 %_bop419, i64* %_j401
  br label %_cond406
_post404:
  %_i420 = load i64, i64* %_i395
  %_bop421 = add i64 %_i420, 1
  store i64 %_bop421, i64* %_i395
  br label %_cond400
_post398:
  %_s422 = load i64, i64* %_s394
  ret i64 %_s422
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
