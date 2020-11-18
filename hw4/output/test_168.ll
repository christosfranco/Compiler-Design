; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2289 = global i64 1

define i64 @f() {
  %_a2286 = load i64, i64* @a
  %_bop2287 = add i64 %_a2286, 1
  store i64 %_bop2287, i64* @a
  %_a2288 = load i64, i64* @a
  ret i64 %_a2288
}

define i64 @program(i64 %_argc2261, { i64, [0 x i8*] }* %_argv2259) {
  %_argc2262 = alloca i64
  %_argv2260 = alloca { i64, [0 x i8*] }*
  %_b2266 = alloca { i64, [0 x i64] }*
  store i64 %_argc2261, i64* %_argc2262
  store { i64, [0 x i8*] }* %_argv2259, { i64, [0 x i8*] }** %_argv2260
  %_result2263 = call i64 @f()
  %_raw_array2264 = call i64* @oat_alloc_array(i64 %_result2263)
  %_array2265 = bitcast i64* %_raw_array2264 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2265, { i64, [0 x i64] }** %_b2266
  %_b2267 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2266
  %_index_ptr2269 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2267, i32 0, i32 1, i32 0
  %_result2270 = call i64 @f()
  store i64 %_result2270, i64* %_index_ptr2269
  %_b2271 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2266
  %_index_ptr2273 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2271, i32 0, i32 1, i32 1
  %_result2274 = call i64 @f()
  store i64 %_result2274, i64* %_index_ptr2273
  %_a2275 = load i64, i64* @a
  %_b2276 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2266
  %_index_ptr2278 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2276, i32 0, i32 1, i32 0
  %_index2279 = load i64, i64* %_index_ptr2278
  %_bop2280 = add i64 %_a2275, %_index2279
  %_b2281 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2266
  %_index_ptr2283 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2281, i32 0, i32 1, i32 1
  %_index2284 = load i64, i64* %_index_ptr2283
  %_bop2285 = add i64 %_bop2280, %_index2284
  ret i64 %_bop2285
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
