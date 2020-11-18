; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2454 = global i64 1

define i64 @f() {
  %_a2451 = load i64, i64* @a
  %_bop2452 = add i64 %_a2451, 1
  store i64 %_bop2452, i64* @a
  %_a2453 = load i64, i64* @a
  ret i64 %_a2453
}

define i64 @program(i64 %_argc2428, { i64, [0 x i8*] }* %_argv2426) {
  %_argc2429 = alloca i64
  %_argv2427 = alloca { i64, [0 x i8*] }*
  %_b2433 = alloca { i64, [0 x i64] }*
  store i64 %_argc2428, i64* %_argc2429
  store { i64, [0 x i8*] }* %_argv2426, { i64, [0 x i8*] }** %_argv2427
  %_result2430 = call i64 @f()
  %_raw_array2431 = call i64* @oat_alloc_array(i64 %_result2430)
  %_array2432 = bitcast i64* %_raw_array2431 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2432, { i64, [0 x i64] }** %_b2433
  %_b2434 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2433
  %_index_ptr2436 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2434, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2436
  %_b2437 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2433
  %_index_ptr2439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2437, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2439
  %_a2440 = load i64, i64* @a
  %_b2441 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2433
  %_index_ptr2443 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2441, i32 0, i32 1, i32 0
  %_index2444 = load i64, i64* %_index_ptr2443
  %_bop2445 = add i64 %_a2440, %_index2444
  %_b2446 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2433
  %_index_ptr2448 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2446, i32 0, i32 1, i32 1
  %_index2449 = load i64, i64* %_index_ptr2448
  %_bop2450 = add i64 %_bop2445, %_index2449
  ret i64 %_bop2450
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
