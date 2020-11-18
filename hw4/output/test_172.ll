; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2361, { i64, [0 x i8*] }* %_argv2359) {
  %_argc2362 = alloca i64
  %_argv2360 = alloca { i64, [0 x i8*] }*
  %_arr12370 = alloca { i64, [0 x i64] }*
  %_str2373 = alloca i8*
  %_arr22376 = alloca { i64, [0 x i64] }*
  %_s2377 = alloca i64
  %_i2378 = alloca i64
  store i64 %_argc2361, i64* %_argc2362
  store { i64, [0 x i8*] }* %_argv2359, { i64, [0 x i8*] }** %_argv2360
  %_raw_array2363 = call i64* @oat_alloc_array(i64 5)
  %_array2364 = bitcast i64* %_raw_array2363 to { i64, [0 x i64] }*
  %_ind2365 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2364, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2365
  %_ind2366 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2364, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2366
  %_ind2367 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2364, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2367
  %_ind2368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2364, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2368
  %_ind2369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2364, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2369
  store { i64, [0 x i64] }* %_array2364, { i64, [0 x i64] }** %_arr12370
  %_arr12371 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12370
  %_result2372 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12371)
  store i8* %_result2372, i8** %_str2373
  %_str2374 = load i8*, i8** %_str2373
  %_result2375 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2374)
  store { i64, [0 x i64] }* %_result2375, { i64, [0 x i64] }** %_arr22376
  store i64 0, i64* %_s2377
  store i64 0, i64* %_i2378
  br label %_cond2383
_cond2383:
  %_i2379 = load i64, i64* %_i2378
  %_bop2380 = icmp slt i64 %_i2379, 5
  br i1 %_bop2380, label %_body2382, label %_post2381
_body2382:
  %_s2384 = load i64, i64* %_s2377
  %_arr22385 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22376
  %_i2386 = load i64, i64* %_i2378
  %_index_ptr2388 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22385, i32 0, i32 1, i64 %_i2386
  %_index2389 = load i64, i64* %_index_ptr2388
  %_bop2390 = add i64 %_s2384, %_index2389
  store i64 %_bop2390, i64* %_s2377
  %_i2391 = load i64, i64* %_i2378
  %_bop2392 = add i64 %_i2391, 1
  store i64 %_bop2392, i64* %_i2378
  br label %_cond2383
_post2381:
  %_s2393 = load i64, i64* %_s2377
  call void @print_int(i64 %_s2393)
  %_s2395 = load i64, i64* %_s2377
  ret i64 %_s2395
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
