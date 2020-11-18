; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] }* @_global_arr4317
@_global_arr4317 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant4316 = global i64 1
@_constant4315 = global i64 2
@_constant4314 = global i64 3
@_constant4313 = global i64 4
@arr2 = global { i64, [4 x i64] }* @_global_arr4311
@_global_arr4311 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_constant4310 = global i64 1
@_constant4309 = global i64 2
@_constant4308 = global i64 3
@_constant4307 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %_ar14279, { i64, [0 x i64] }* %_ar24277, i64 %_len4275) {
  %_ar14280 = alloca { i64, [0 x i64] }*
  %_ar24278 = alloca { i64, [0 x i64] }*
  %_len4276 = alloca i64
  %_val4281 = alloca i64
  %_i4282 = alloca i64
  store { i64, [0 x i64] }* %_ar14279, { i64, [0 x i64] }** %_ar14280
  store { i64, [0 x i64] }* %_ar24277, { i64, [0 x i64] }** %_ar24278
  store i64 %_len4275, i64* %_len4276
  store i64 0, i64* %_val4281
  store i64 0, i64* %_i4282
  br label %_cond4288
_cond4288:
  %_i4283 = load i64, i64* %_i4282
  %_len4284 = load i64, i64* %_len4276
  %_bop4285 = icmp slt i64 %_i4283, %_len4284
  br i1 %_bop4285, label %_body4287, label %_post4286
_body4287:
  %_ar14289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14280
  %_i4290 = load i64, i64* %_i4282
  %_index_ptr4292 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar14289, i32 0, i32 1, i64 %_i4290
  %_index4293 = load i64, i64* %_index_ptr4292
  %_ar24294 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24278
  %_i4295 = load i64, i64* %_i4282
  %_index_ptr4297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar24294, i32 0, i32 1, i64 %_i4295
  %_index4298 = load i64, i64* %_index_ptr4297
  %_bop4299 = icmp ne i64 %_index4293, %_index4298
  br i1 %_bop4299, label %_then4302, label %_else4301
_then4302:
  store i64 1, i64* %_val4281
  br label %_merge4300
_else4301:
  br label %_merge4300
_merge4300:
  %_i4303 = load i64, i64* %_i4282
  %_bop4304 = add i64 %_i4303, 1
  store i64 %_bop4304, i64* %_i4282
  br label %_cond4288
_post4286:
  %_val4305 = load i64, i64* %_val4281
  ret i64 %_val4305
}

define i64 @program(i64 %_argc4262, { i64, [0 x i8*] }* %_argv4260) {
  %_argc4263 = alloca i64
  %_argv4261 = alloca { i64, [0 x i8*] }*
  %_val4264 = alloca i64
  store i64 %_argc4262, i64* %_argc4263
  store { i64, [0 x i8*] }* %_argv4260, { i64, [0 x i8*] }** %_argv4261
  store i64 1, i64* %_val4264
  %_arr24265 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_cast4266 = bitcast { i64, [4 x i64] }* %_arr24265 to { i64, [0 x i64] }*
  %_arr14267 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_cast4268 = bitcast { i64, [4 x i64] }* %_arr14267 to { i64, [0 x i64] }*
  %_result4269 = call i64 @arrcheck({ i64, [0 x i64] }* %_cast4268, { i64, [0 x i64] }* %_cast4266, i64 4)
  %_bop4270 = icmp eq i64 %_result4269, 1
  br i1 %_bop4270, label %_then4273, label %_else4272
_then4273:
  store i64 0, i64* %_val4264
  br label %_merge4271
_else4272:
  br label %_merge4271
_merge4271:
  %_val4274 = load i64, i64* %_val4264
  ret i64 %_val4274
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
