; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant2258 = global i64 1

define i64 @f() {
  %_a2255 = load i64, i64* @a
  %_bop2256 = add i64 %_a2255, 1
  store i64 %_bop2256, i64* @a
  %_a2257 = load i64, i64* @a
  ret i64 %_a2257
}

define i64 @program(i64 %_argc2232, { i64, [0 x i8*] }* %_argv2230) {
  %_argc2233 = alloca i64
  %_argv2231 = alloca { i64, [0 x i8*] }*
  %_b2237 = alloca { i64, [0 x i64] }*
  store i64 %_argc2232, i64* %_argc2233
  store { i64, [0 x i8*] }* %_argv2230, { i64, [0 x i8*] }** %_argv2231
  %_result2234 = call i64 @f()
  %_raw_array2235 = call i64* @oat_alloc_array(i64 %_result2234)
  %_array2236 = bitcast i64* %_raw_array2235 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array2236, { i64, [0 x i64] }** %_b2237
  %_b2238 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2237
  %_index_ptr2240 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2238, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr2240
  %_b2241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2237
  %_index_ptr2243 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2241, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr2243
  %_a2244 = load i64, i64* @a
  %_b2245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2237
  %_index_ptr2247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2245, i32 0, i32 1, i32 0
  %_index2248 = load i64, i64* %_index_ptr2247
  %_bop2249 = add i64 %_a2244, %_index2248
  %_b2250 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b2237
  %_index_ptr2252 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b2250, i32 0, i32 1, i32 1
  %_index2253 = load i64, i64* %_index_ptr2252
  %_bop2254 = add i64 %_bop2249, %_index2253
  ret i64 %_bop2254
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
