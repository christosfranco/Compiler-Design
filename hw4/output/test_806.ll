; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2268 = global i64 1

define i64 @f() {
  %_a2265 = load i64, i64* @a
  %_bop2266 = add i64 %_a2265, 1
  store i64 %_bop2266, i64* @a
  %_a2267 = load i64, i64* @a
  ret i64 %_a2267
}

define i64 @program(i64 %_argc2246, { i64, [0 x i8*] }* %_argv2244) {
  %_argc2247 = alloca i64
  %_argv2245 = alloca { i64, [0 x i8*] }*
  %_b2251 = alloca { i64, [0 x i64] }*
  store i64 %_argc2246, i64* %_argc2247
  store { i64, [0 x i8*] }* %_argv2244, { i64, [0 x i8*] }** %_argv2245
  %_result2248 = call i64 @f()
  %_raw_array2249 = call i64* @oat_alloc_array(i64 %_result2248)
  %_array2250 = bitcast i64* %_raw_array2249 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2250, { i64, [0 x i64] }** %_b2251
  %_b2252 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2251
  %_index_ptr2253 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2252, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2253
  %_b2254 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2251
  %_index_ptr2255 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2254, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2255
  %_a2256 = load i64, i64* @a
  %_b2257 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2251
  %_index_ptr2258 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2257, i32 0, i32 1, i32 0
  %_index2259 = load i64, i64* %_index_ptr2258
  %_bop2260 = add i64 %_a2256, %_index2259
  %_b2261 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2251
  %_index_ptr2262 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2261, i32 0, i32 1, i32 1
  %_index2263 = load i64, i64* %_index_ptr2262
  %_bop2264 = add i64 %_bop2260, %_index2263
  ret i64 %_bop2264
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
