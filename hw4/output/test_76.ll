; generated from: oatprograms/lib9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2442, { i64, [0 x i8*] }* %_argv2440) {
  %_argc2443 = alloca i64
  %_argv2441 = alloca { i64, [0 x i8*] }*
  %_i2444 = alloca i64
  store i64 %_argc2442, i64* %_argc2443
  store { i64, [0 x i8*] }* %_argv2440, { i64, [0 x i8*] }** %_argv2441
  store i64 1, i64* %_i2444
  br label %_cond2450
_cond2450:
  %_i2445 = load i64, i64* %_i2444
  %_argc2446 = load i64, i64* %_argc2443
  %_bop2447 = icmp slt i64 %_i2445, %_argc2446
  br i1 %_bop2447, label %_body2449, label %_post2448
_body2449:
  %_argv2451 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_argv2441
  %_i2452 = load i64, i64* %_i2444
  %_index_ptr2454 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_argv2451, i32 0, i32 1, i64 %_i2452
  %_index2455 = load i8*, i8** %_index_ptr2454
  call void @print_string(i8* %_index2455)
  %_i2457 = load i64, i64* %_i2444
  %_bop2458 = add i64 %_i2457, 1
  store i64 %_bop2458, i64* %_i2444
  br label %_cond2450
_post2448:
  %_argc2459 = load i64, i64* %_argc2443
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
