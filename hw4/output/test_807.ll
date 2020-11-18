; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2295 = global i64 1

define i64 @f() {
  %_a2292 = load i64, i64* @a
  %_bop2293 = add i64 %_a2292, 1
  store i64 %_bop2293, i64* @a
  %_a2294 = load i64, i64* @a
  ret i64 %_a2294
}

define i64 @program(i64 %_argc2271, { i64, [0 x i8*] }* %_argv2269) {
  %_argc2272 = alloca i64
  %_argv2270 = alloca { i64, [0 x i8*] }*
  %_b2276 = alloca { i64, [0 x i64] }*
  store i64 %_argc2271, i64* %_argc2272
  store { i64, [0 x i8*] }* %_argv2269, { i64, [0 x i8*] }** %_argv2270
  %_result2273 = call i64 @f()
  %_raw_array2274 = call i64* @oat_alloc_array(i64 %_result2273)
  %_array2275 = bitcast i64* %_raw_array2274 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2275, { i64, [0 x i64] }** %_b2276
  %_b2277 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2276
  %_index_ptr2278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2277, i32 0, i32 1, i32 0
  %_result2279 = call i64 @f()
  store i64 %_result2279, i64* %_index_ptr2278
  %_b2280 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2276
  %_index_ptr2281 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2280, i32 0, i32 1, i32 1
  %_result2282 = call i64 @f()
  store i64 %_result2282, i64* %_index_ptr2281
  %_a2283 = load i64, i64* @a
  %_b2284 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2276
  %_index_ptr2285 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2284, i32 0, i32 1, i32 0
  %_index2286 = load i64, i64* %_index_ptr2285
  %_bop2287 = add i64 %_a2283, %_index2286
  %_b2288 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2276
  %_index_ptr2289 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2288, i32 0, i32 1, i32 1
  %_index2290 = load i64, i64* %_index_ptr2289
  %_bop2291 = add i64 %_bop2287, %_index2290
  ret i64 %_bop2291
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
