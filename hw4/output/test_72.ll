; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_arr2337 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2334, { i64, [0 x i8*] }* %_argv2332) {
  %_argc2335 = alloca i64
  %_argv2333 = alloca { i64, [0 x i8*] }*
  %_str2338 = alloca i8*
  %_arr2341 = alloca { i64, [0 x i64] }*
  %_s2342 = alloca i64
  %_i2343 = alloca i64
  store i64 %_argc2334, i64* %_argc2335
  store { i64, [0 x i8*] }* %_argv2332, { i64, [0 x i8*] }** %_argv2333
  %_str2336 = getelementptr [6 x i8], [6 x i8]* @_str_arr2337, i32 0, i32 0
  store i8* %_str2336, i8** %_str2338
  %_str2339 = load i8*, i8** %_str2338
  %_result2340 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2339)
  store { i64, [0 x i64] }* %_result2340, { i64, [0 x i64] }** %_arr2341
  store i64 0, i64* %_s2342
  store i64 0, i64* %_i2343
  br label %_cond2348
_cond2348:
  %_i2344 = load i64, i64* %_i2343
  %_bop2345 = icmp slt i64 %_i2344, 5
  br i1 %_bop2345, label %_body2347, label %_post2346
_body2347:
  %_s2349 = load i64, i64* %_s2342
  %_arr2350 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2341
  %_i2351 = load i64, i64* %_i2343
  %_index_ptr2353 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2350, i32 0, i32 1, i64 %_i2351
  %_index2354 = load i64, i64* %_index_ptr2353
  %_bop2355 = add i64 %_s2349, %_index2354
  store i64 %_bop2355, i64* %_s2342
  %_i2356 = load i64, i64* %_i2343
  %_bop2357 = add i64 %_i2356, 1
  store i64 %_bop2357, i64* %_i2343
  br label %_cond2348
_post2346:
  %_s2358 = load i64, i64* %_s2342
  ret i64 %_s2358
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
