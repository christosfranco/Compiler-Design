; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8]* @_str2331
@_str2331 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2305, { i64, [0 x i8*] }* %_argv2303) {
  %_argc2306 = alloca i64
  %_argv2304 = alloca { i64, [0 x i8*] }*
  %_arr2310 = alloca { i64, [0 x i64] }*
  %_s2311 = alloca i64
  %_i2312 = alloca i64
  store i64 %_argc2305, i64* %_argc2306
  store { i64, [0 x i8*] }* %_argv2303, { i64, [0 x i8*] }** %_argv2304
  %_str2307 = load [6 x i8]*, [6 x i8]** @str
  %_cast2308 = bitcast [6 x i8]* %_str2307 to i8*
  %_result2309 = call { i64, [0 x i64] }* @array_of_string(i8* %_cast2308)
  store { i64, [0 x i64] }* %_result2309, { i64, [0 x i64] }** %_arr2310
  store i64 0, i64* %_s2311
  store i64 0, i64* %_i2312
  br label %_cond2317
_cond2317:
  %_i2313 = load i64, i64* %_i2312
  %_bop2314 = icmp slt i64 %_i2313, 5
  br i1 %_bop2314, label %_body2316, label %_post2315
_body2316:
  %_s2318 = load i64, i64* %_s2311
  %_arr2319 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2310
  %_i2320 = load i64, i64* %_i2312
  %_index_ptr2322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2319, i32 0, i32 1, i64 %_i2320
  %_index2323 = load i64, i64* %_index_ptr2322
  %_bop2324 = add i64 %_s2318, %_index2323
  store i64 %_bop2324, i64* %_s2311
  %_i2325 = load i64, i64* %_i2312
  %_bop2326 = add i64 %_i2325, 1
  store i64 %_bop2326, i64* %_i2312
  br label %_cond2317
_post2315:
  %_s2327 = load i64, i64* %_s2311
  call void @print_int(i64 %_s2327)
  %_s2329 = load i64, i64* %_s2311
  ret i64 %_s2329
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
