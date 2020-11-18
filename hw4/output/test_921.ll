; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2443, { i64, [0 x i8*] }* %_argv2441) {
  %_argc2444 = alloca i64
  %_argv2442 = alloca { i64, [0 x i8*] }*
  %_i2445 = alloca i64
  store i64 %_argc2443, i64* %_argc2444
  store { i64, [0 x i8*] }* %_argv2441, { i64, [0 x i8*] }** %_argv2442
  store i64 1, i64* %_i2445
  br label %_cond2451
_cond2451:
  %_i2446 = load i64, i64* %_i2445
  %_argc2447 = load i64, i64* %_argc2444
  %_bop2448 = icmp slt i64 %_i2446, %_argc2447
  br i1 %_bop2448, label %_body2450, label %_post2449
_body2450:
  %_argv2452 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2442
  %_i2453 = load i64, i64* %_i2445
  %_index_ptr2454 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2452, i32 0, i32 1, i64 %_i2453
  %_index2455 = load i8*, i8** %_index_ptr2454
  call void @print_string(i8* %_index2455)
  %_i2457 = load i64, i64* %_i2445
  %_bop2458 = add i64 %_i2457, 1
  store i64 %_bop2458, i64* %_i2445
  br label %_cond2451
_post2449:
  %_argc2459 = load i64, i64* %_argc2444
  ret i64 %_argc2459
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
