; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2364, { i64, [0 x i8*] }* %_argv2362) {
  %_argc2365 = alloca i64
  %_argv2363 = alloca { i64, [0 x i8*] }*
  %_arr12373 = alloca { i64, [0 x i64] }*
  %_str2376 = alloca i8*
  %_arr22379 = alloca { i64, [0 x i64] }*
  %_s2380 = alloca i64
  %_i2381 = alloca i64
  store i64 %_argc2364, i64* %_argc2365
  store { i64, [0 x i8*] }* %_argv2362, { i64, [0 x i8*] }** %_argv2363
  %_raw_array2366 = call i64* @oat_alloc_array(i64 5)
  %_array2367 = bitcast i64* %_raw_array2366 to { i64, [0 x i64] }*
  %_ind2368 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2367, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2368
  %_ind2369 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2367, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2369
  %_ind2370 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2367, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2370
  %_ind2371 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2367, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2371
  %_ind2372 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2367, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2372
  store { i64, [0 x i64] }* %_array2367, { i64, [0 x i64] }** %_arr12373
  %_arr12374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12373
  %_result2375 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12374)
  store i8* %_result2375, i8** %_str2376
  %_str2377 = load i8*, i8** %_str2376
  %_result2378 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2377)
  store { i64, [0 x i64] }* %_result2378, { i64, [0 x i64] }** %_arr22379
  store i64 0, i64* %_s2380
  store i64 0, i64* %_i2381
  br label %_cond2386
_cond2386:
  %_i2382 = load i64, i64* %_i2381
  %_bop2383 = icmp slt i64 %_i2382, 5
  br i1 %_bop2383, label %_body2385, label %_post2384
_body2385:
  %_s2387 = load i64, i64* %_s2380
  %_arr22388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22379
  %_i2389 = load i64, i64* %_i2381
  %_index_ptr2390 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22388, i32 0, i32 1, i64 %_i2389
  %_index2391 = load i64, i64* %_index_ptr2390
  %_bop2392 = add i64 %_s2387, %_index2391
  store i64 %_bop2392, i64* %_s2380
  %_i2393 = load i64, i64* %_i2381
  %_bop2394 = add i64 %_i2393, 1
  store i64 %_bop2394, i64* %_i2381
  br label %_cond2386
_post2384:
  %_s2395 = load i64, i64* %_s2380
  call void @print_int(i64 %_s2395)
  %_s2397 = load i64, i64* %_s2380
  ret i64 %_s2397
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
