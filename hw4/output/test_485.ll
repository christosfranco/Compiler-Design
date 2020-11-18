; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2452 = global i64 1

define i64 @f() {
  %_a2449 = load i64, i64* @a
  %_bop2450 = add i64 %_a2449, 1
  store i64 %_bop2450, i64* @a
  %_a2451 = load i64, i64* @a
  ret i64 %_a2451
}

define i64 @program(i64 %_argc2426, { i64, [0 x i8*] }* %_argv2424) {
  %_argc2427 = alloca i64
  %_argv2425 = alloca { i64, [0 x i8*] }*
  %_b2431 = alloca { i64, [0 x i64] }*
  store i64 %_argc2426, i64* %_argc2427
  store { i64, [0 x i8*] }* %_argv2424, { i64, [0 x i8*] }** %_argv2425
  %_result2428 = call i64 @f()
  %_raw_array2429 = call i64* @oat_alloc_array(i64 %_result2428)
  %_array2430 = bitcast i64* %_raw_array2429 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2430, { i64, [0 x i64] }** %_b2431
  %_b2432 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2431
  %_index_ptr2434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2432, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2434
  %_b2435 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2431
  %_index_ptr2437 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2435, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2437
  %_a2438 = load i64, i64* @a
  %_b2439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2431
  %_index_ptr2441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2439, i32 0, i32 1, i32 0
  %_index2442 = load i64, i64* %_index_ptr2441
  %_bop2443 = add i64 %_a2438, %_index2442
  %_b2444 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2431
  %_index_ptr2446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2444, i32 0, i32 1, i32 1
  %_index2447 = load i64, i64* %_index_ptr2446
  %_bop2448 = add i64 %_bop2443, %_index2447
  ret i64 %_bop2448
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
