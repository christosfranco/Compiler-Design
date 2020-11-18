; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8]* @_constant2335
@_constant2335 = global [6 x i8] c"hello\00"

define i64 @program(i64 %_argc2311, { i64, [0 x i8*] }* %_argv2309) {
  %_argc2312 = alloca i64
  %_argv2310 = alloca { i64, [0 x i8*] }*
  %_arr2316 = alloca { i64, [0 x i64] }*
  %_s2317 = alloca i64
  %_i2318 = alloca i64
  store i64 %_argc2311, i64* %_argc2312
  store { i64, [0 x i8*] }* %_argv2309, { i64, [0 x i8*] }** %_argv2310
  %_str2313 = load [6 x i8]*, [6 x i8]** @str
  %_cast2314 = bitcast [6 x i8]* %_str2313 to i8*
  %_result2315 = call { i64, [0 x i64] }* @array_of_string(i8* %_cast2314)
  store { i64, [0 x i64] }* %_result2315, { i64, [0 x i64] }** %_arr2316
  store i64 0, i64* %_s2317
  store i64 0, i64* %_i2318
  br label %_cond2323
_cond2323:
  %_i2319 = load i64, i64* %_i2318
  %_bop2320 = icmp slt i64 %_i2319, 5
  br i1 %_bop2320, label %_body2322, label %_post2321
_body2322:
  %_s2324 = load i64, i64* %_s2317
  %_arr2325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2316
  %_i2326 = load i64, i64* %_i2318
  %_index_ptr2327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2325, i32 0, i32 1, i64 %_i2326
  %_index2328 = load i64, i64* %_index_ptr2327
  %_bop2329 = add i64 %_s2324, %_index2328
  store i64 %_bop2329, i64* %_s2317
  %_i2330 = load i64, i64* %_i2318
  %_bop2331 = add i64 %_i2330, 1
  store i64 %_bop2331, i64* %_i2318
  br label %_cond2323
_post2321:
  %_s2332 = load i64, i64* %_s2317
  call void @print_int(i64 %_s2332)
  %_s2334 = load i64, i64* %_s2317
  ret i64 %_s2334
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
