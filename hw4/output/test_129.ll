; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc434, { i64, [0 x i8*] }* %_argv432) {
  %_argc435 = alloca i64
  %_argv433 = alloca { i64, [0 x i8*] }*
  %_s459 = alloca i64
  %_i460 = alloca i64
  %_j466 = alloca i64
  store i64 %_argc434, i64* %_argc435
  store { i64, [0 x i8*] }* %_argv432, { i64, [0 x i8*] }** %_argv433
  %_raw_array436 = call i64* @oat_alloc_array(i64 3)
  %_array437 = bitcast i64* %_raw_array436 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array438 = call i64* @oat_alloc_array(i64 4)
  %_array439 = bitcast i64* %_raw_array438 to { i64, [0 x i64] }*
  %_ind440 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array439, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind440
  %_ind441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array439, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind441
  %_ind442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array439, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind442
  %_ind443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array439, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind443
  %_ind444 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array437, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array439, { i64, [0 x i64] }** %_ind444
  %_raw_array445 = call i64* @oat_alloc_array(i64 4)
  %_array446 = bitcast i64* %_raw_array445 to { i64, [0 x i64] }*
  %_ind447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind447
  %_ind448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind448
  %_ind449 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind449
  %_ind450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array446, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind450
  %_ind451 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array437, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array446, { i64, [0 x i64] }** %_ind451
  %_raw_array452 = call i64* @oat_alloc_array(i64 4)
  %_array453 = bitcast i64* %_raw_array452 to { i64, [0 x i64] }*
  %_ind454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array453, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind454
  %_ind455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array453, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind455
  %_ind456 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array453, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind456
  %_ind457 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array453, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind457
  %_ind458 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array437, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array453, { i64, [0 x i64] }** %_ind458
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array437, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s459
  store i64 0, i64* %_i460
  br label %_cond465
_cond465:
  %_i461 = load i64, i64* %_i460
  %_bop462 = icmp slt i64 %_i461, 3
  br i1 %_bop462, label %_body464, label %_post463
_body464:
  store i64 0, i64* %_j466
  br label %_cond471
_cond471:
  %_j467 = load i64, i64* %_j466
  %_bop468 = icmp slt i64 %_j467, 4
  br i1 %_bop468, label %_body470, label %_post469
_body470:
  %_s472 = load i64, i64* %_s459
  %_a473 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i474 = load i64, i64* %_i460
  %_index_ptr476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a473, i32 0, i32 1, i64 %_i474
  %_index477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr476
  %_j478 = load i64, i64* %_j466
  %_index_ptr480 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index477, i32 0, i32 1, i64 %_j478
  %_index481 = load i64, i64* %_index_ptr480
  %_bop482 = add i64 %_s472, %_index481
  store i64 %_bop482, i64* %_s459
  %_j483 = load i64, i64* %_j466
  %_bop484 = add i64 %_j483, 1
  store i64 %_bop484, i64* %_j466
  br label %_cond471
_post469:
  %_i485 = load i64, i64* %_i460
  %_bop486 = add i64 %_i485, 1
  store i64 %_bop486, i64* %_i460
  br label %_cond465
_post463:
  %_s487 = load i64, i64* %_s459
  ret i64 %_s487
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
