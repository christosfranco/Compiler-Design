; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2398, { i64, [0 x i8*] }* %_argv2396) {
  %_argc2399 = alloca i64
  %_argv2397 = alloca { i64, [0 x i8*] }*
  %_arr12407 = alloca { i64, [0 x i64] }*
  %_str2410 = alloca i8*
  %_arr22413 = alloca { i64, [0 x i64] }*
  %_s2414 = alloca i64
  %_i2415 = alloca i64
  store i64 %_argc2398, i64* %_argc2399
  store { i64, [0 x i8*] }* %_argv2396, { i64, [0 x i8*] }** %_argv2397
  %_raw_array2400 = call i64* @oat_alloc_array(i64 5)
  %_array2401 = bitcast i64* %_raw_array2400 to { i64, [0 x i64] }*
  %_ind2402 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2401, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2402
  %_ind2403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2401, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2403
  %_ind2404 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2401, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2404
  %_ind2405 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2401, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2405
  %_ind2406 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2401, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2406
  store { i64, [0 x i64] }* %_array2401, { i64, [0 x i64] }** %_arr12407
  %_arr12408 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12407
  %_result2409 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12408)
  store i8* %_result2409, i8** %_str2410
  %_str2411 = load i8*, i8** %_str2410
  %_result2412 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2411)
  store { i64, [0 x i64] }* %_result2412, { i64, [0 x i64] }** %_arr22413
  store i64 0, i64* %_s2414
  store i64 0, i64* %_i2415
  br label %_cond2420
_cond2420:
  %_i2416 = load i64, i64* %_i2415
  %_bop2417 = icmp slt i64 %_i2416, 5
  br i1 %_bop2417, label %_body2419, label %_post2418
_body2419:
  %_s2421 = load i64, i64* %_s2414
  %_arr22422 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22413
  %_i2423 = load i64, i64* %_i2415
  %_index_ptr2425 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22422, i32 0, i32 1, i64 %_i2423
  %_index2426 = load i64, i64* %_index_ptr2425
  %_bop2427 = add i64 %_s2421, %_index2426
  store i64 %_bop2427, i64* %_s2414
  %_i2428 = load i64, i64* %_i2415
  %_bop2429 = add i64 %_i2428, 1
  store i64 %_bop2429, i64* %_i2415
  br label %_cond2420
_post2418:
  %_s2430 = load i64, i64* %_s2414
  ret i64 %_s2430
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
