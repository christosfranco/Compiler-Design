; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] }* @_global_arr4554
@_global_arr4554 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant4553 = global i64 1
@_constant4552 = global i64 2
@_constant4551 = global i64 3
@_constant4550 = global i64 4
@arr2 = global { i64, [4 x i64] }* @_global_arr4548
@_global_arr4548 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_constant4547 = global i64 1
@_constant4546 = global i64 2
@_constant4545 = global i64 3
@_constant4544 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %_ar14518, { i64, [0 x i64] }* %_ar24516, i64 %_len4514) {
  %_ar14519 = alloca { i64, [0 x i64] }*
  %_ar24517 = alloca { i64, [0 x i64] }*
  %_len4515 = alloca i64
  %_val4520 = alloca i64
  %_i4521 = alloca i64
  store { i64, [0 x i64] }* %_ar14518, { i64, [0 x i64] }** %_ar14519
  store { i64, [0 x i64] }* %_ar24516, { i64, [0 x i64] }** %_ar24517
  store i64 %_len4514, i64* %_len4515
  store i64 0, i64* %_val4520
  store i64 0, i64* %_i4521
  br label %_cond4527
_cond4527:
  %_i4522 = load i64, i64* %_i4521
  %_len4523 = load i64, i64* %_len4515
  %_bop4524 = icmp slt i64 %_i4522, %_len4523
  br i1 %_bop4524, label %_body4526, label %_post4525
_body4526:
  %_ar14528 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14519
  %_i4529 = load i64, i64* %_i4521
  %_index_ptr4530 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar14528, i32 0, i32 1, i64 %_i4529
  %_index4531 = load i64, i64* %_index_ptr4530
  %_ar24532 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24517
  %_i4533 = load i64, i64* %_i4521
  %_index_ptr4534 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar24532, i32 0, i32 1, i64 %_i4533
  %_index4535 = load i64, i64* %_index_ptr4534
  %_bop4536 = icmp ne i64 %_index4531, %_index4535
  br i1 %_bop4536, label %_then4539, label %_else4538
_then4539:
  store i64 1, i64* %_val4520
  br label %_merge4537
_else4538:
  br label %_merge4537
_merge4537:
  %_i4540 = load i64, i64* %_i4521
  %_bop4541 = add i64 %_i4540, 1
  store i64 %_bop4541, i64* %_i4521
  br label %_cond4527
_post4525:
  %_val4542 = load i64, i64* %_val4520
  ret i64 %_val4542
}

define i64 @program(i64 %_argc4501, { i64, [0 x i8*] }* %_argv4499) {
  %_argc4502 = alloca i64
  %_argv4500 = alloca { i64, [0 x i8*] }*
  %_val4503 = alloca i64
  store i64 %_argc4501, i64* %_argc4502
  store { i64, [0 x i8*] }* %_argv4499, { i64, [0 x i8*] }** %_argv4500
  store i64 1, i64* %_val4503
  %_arr24504 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_cast4505 = bitcast { i64, [4 x i64] }* %_arr24504 to { i64, [0 x i64] }*
  %_arr14506 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_cast4507 = bitcast { i64, [4 x i64] }* %_arr14506 to { i64, [0 x i64] }*
  %_result4508 = call i64 @arrcheck({ i64, [0 x i64] }* %_cast4507, { i64, [0 x i64] }* %_cast4505, i64 4)
  %_bop4509 = icmp eq i64 %_result4508, 1
  br i1 %_bop4509, label %_then4512, label %_else4511
_then4512:
  store i64 0, i64* %_val4503
  br label %_merge4510
_else4511:
  br label %_merge4510
_merge4510:
  %_val4513 = load i64, i64* %_val4503
  ret i64 %_val4513
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
