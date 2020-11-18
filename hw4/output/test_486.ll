; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2483 = global i64 1

define i64 @f() {
  %_a2480 = load i64, i64* @a
  %_bop2481 = add i64 %_a2480, 1
  store i64 %_bop2481, i64* @a
  %_a2482 = load i64, i64* @a
  ret i64 %_a2482
}

define i64 @program(i64 %_argc2455, { i64, [0 x i8*] }* %_argv2453) {
  %_argc2456 = alloca i64
  %_argv2454 = alloca { i64, [0 x i8*] }*
  %_b2460 = alloca { i64, [0 x i64] }*
  store i64 %_argc2455, i64* %_argc2456
  store { i64, [0 x i8*] }* %_argv2453, { i64, [0 x i8*] }** %_argv2454
  %_result2457 = call i64 @f()
  %_raw_array2458 = call i64* @oat_alloc_array(i64 %_result2457)
  %_array2459 = bitcast i64* %_raw_array2458 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2459, { i64, [0 x i64] }** %_b2460
  %_b2461 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2460
  %_index_ptr2463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2461, i32 0, i32 1, i32 0
  %_result2464 = call i64 @f()
  store i64 %_result2464, i64* %_index_ptr2463
  %_b2465 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2460
  %_index_ptr2467 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2465, i32 0, i32 1, i32 1
  %_result2468 = call i64 @f()
  store i64 %_result2468, i64* %_index_ptr2467
  %_a2469 = load i64, i64* @a
  %_b2470 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2460
  %_index_ptr2472 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2470, i32 0, i32 1, i32 0
  %_index2473 = load i64, i64* %_index_ptr2472
  %_bop2474 = add i64 %_a2469, %_index2473
  %_b2475 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2460
  %_index_ptr2477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2475, i32 0, i32 1, i32 1
  %_index2478 = load i64, i64* %_index_ptr2477
  %_bop2479 = add i64 %_bop2474, %_index2478
  ret i64 %_bop2479
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
