; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_arr2341 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2338, { i64, [0 x i8*] }* %_argv2336) {
  %_argc2339 = alloca i64
  %_argv2337 = alloca { i64, [0 x i8*] }*
  %_str2342 = alloca i8*
  %_arr2345 = alloca { i64, [0 x i64] }*
  %_s2346 = alloca i64
  %_i2347 = alloca i64
  store i64 %_argc2338, i64* %_argc2339
  store { i64, [0 x i8*] }* %_argv2336, { i64, [0 x i8*] }** %_argv2337
  %_str2340 = getelementptr [6 x i8], [6 x i8]* @_str_arr2341, i32 0, i32 0
  store i8* %_str2340, i8** %_str2342
  %_str2343 = load i8*, i8** %_str2342
  %_result2344 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2343)
  store { i64, [0 x i64] }* %_result2344, { i64, [0 x i64] }** %_arr2345
  store i64 0, i64* %_s2346
  store i64 0, i64* %_i2347
  br label %_cond2352
_cond2352:
  %_i2348 = load i64, i64* %_i2347
  %_bop2349 = icmp slt i64 %_i2348, 5
  br i1 %_bop2349, label %_body2351, label %_post2350
_body2351:
  %_s2353 = load i64, i64* %_s2346
  %_arr2354 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2345
  %_i2355 = load i64, i64* %_i2347
  %_index_ptr2356 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2354, i32 0, i32 1, i64 %_i2355
  %_index2357 = load i64, i64* %_index_ptr2356
  %_bop2358 = add i64 %_s2353, %_index2357
  store i64 %_bop2358, i64* %_s2346
  %_i2359 = load i64, i64* %_i2347
  %_bop2360 = add i64 %_i2359, 1
  store i64 %_bop2360, i64* %_i2347
  br label %_cond2352
_post2350:
  %_s2361 = load i64, i64* %_s2346
  ret i64 %_s2361
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
