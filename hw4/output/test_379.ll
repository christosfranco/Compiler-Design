; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2485 = global i64 1

define i64 @f() {
  %_a2482 = load i64, i64* @a
  %_bop2483 = add i64 %_a2482, 1
  store i64 %_bop2483, i64* @a
  %_a2484 = load i64, i64* @a
  ret i64 %_a2484
}

define i64 @program(i64 %_argc2457, { i64, [0 x i8*] }* %_argv2455) {
  %_argc2458 = alloca i64
  %_argv2456 = alloca { i64, [0 x i8*] }*
  %_b2462 = alloca { i64, [0 x i64] }*
  store i64 %_argc2457, i64* %_argc2458
  store { i64, [0 x i8*] }* %_argv2455, { i64, [0 x i8*] }** %_argv2456
  %_result2459 = call i64 @f()
  %_raw_array2460 = call i64* @oat_alloc_array(i64 %_result2459)
  %_array2461 = bitcast i64* %_raw_array2460 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2461, { i64, [0 x i64] }** %_b2462
  %_b2463 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2462
  %_index_ptr2465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2463, i32 0, i32 1, i32 0
  %_result2466 = call i64 @f()
  store i64 %_result2466, i64* %_index_ptr2465
  %_b2467 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2462
  %_index_ptr2469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2467, i32 0, i32 1, i32 1
  %_result2470 = call i64 @f()
  store i64 %_result2470, i64* %_index_ptr2469
  %_a2471 = load i64, i64* @a
  %_b2472 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2462
  %_index_ptr2474 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2472, i32 0, i32 1, i32 0
  %_index2475 = load i64, i64* %_index_ptr2474
  %_bop2476 = add i64 %_a2471, %_index2475
  %_b2477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2462
  %_index_ptr2479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2477, i32 0, i32 1, i32 1
  %_index2480 = load i64, i64* %_index_ptr2479
  %_bop2481 = add i64 %_bop2476, %_index2480
  ret i64 %_bop2481
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
