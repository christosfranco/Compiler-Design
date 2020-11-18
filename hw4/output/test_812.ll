; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2400, { i64, [0 x i8*] }* %_argv2398) {
  %_argc2401 = alloca i64
  %_argv2399 = alloca { i64, [0 x i8*] }*
  %_arr12409 = alloca { i64, [0 x i64] }*
  %_str2412 = alloca i8*
  %_arr22415 = alloca { i64, [0 x i64] }*
  %_s2416 = alloca i64
  %_i2417 = alloca i64
  store i64 %_argc2400, i64* %_argc2401
  store { i64, [0 x i8*] }* %_argv2398, { i64, [0 x i8*] }** %_argv2399
  %_raw_array2402 = call i64* @oat_alloc_array(i64 5)
  %_array2403 = bitcast i64* %_raw_array2402 to { i64, [0 x i64] }*
  %_ind2404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2403, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2404
  %_ind2405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2403, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2405
  %_ind2406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2403, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2406
  %_ind2407 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2403, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2407
  %_ind2408 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2403, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2408
  store { i64, [0 x i64] }* %_array2403, { i64, [0 x i64] }** %_arr12409
  %_arr12410 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12409
  %_result2411 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12410)
  store i8* %_result2411, i8** %_str2412
  %_str2413 = load i8*, i8** %_str2412
  %_result2414 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2413)
  store { i64, [0 x i64] }* %_result2414, { i64, [0 x i64] }** %_arr22415
  store i64 0, i64* %_s2416
  store i64 0, i64* %_i2417
  br label %_cond2422
_cond2422:
  %_i2418 = load i64, i64* %_i2417
  %_bop2419 = icmp slt i64 %_i2418, 5
  br i1 %_bop2419, label %_body2421, label %_post2420
_body2421:
  %_s2423 = load i64, i64* %_s2416
  %_arr22424 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22415
  %_i2425 = load i64, i64* %_i2417
  %_index_ptr2426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22424, i32 0, i32 1, i64 %_i2425
  %_index2427 = load i64, i64* %_index_ptr2426
  %_bop2428 = add i64 %_s2423, %_index2427
  store i64 %_bop2428, i64* %_s2416
  %_i2429 = load i64, i64* %_i2417
  %_bop2430 = add i64 %_i2429, 1
  store i64 %_bop2430, i64* %_i2417
  br label %_cond2422
_post2420:
  %_s2431 = load i64, i64* %_s2416
  ret i64 %_s2431
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
