; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_global_arr352
@_global_arr352 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_constant351 = global i64 1
@_constant350 = global i64 2
@_constant349 = global i64 3
@y = global { i64, [3 x i64] }* @_global_arr347
@_global_arr347 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_constant346 = global i64 4
@_constant345 = global i64 5
@_constant344 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x357, { i64, [0 x i64] }* %_y355, i1 %_b353) {
  %_x358 = alloca { i64, [0 x i64] }*
  %_y356 = alloca { i64, [0 x i64] }*
  %_b354 = alloca i1
  store { i64, [0 x i64] }* %_x357, { i64, [0 x i64] }** %_x358
  store { i64, [0 x i64] }* %_y355, { i64, [0 x i64] }** %_y356
  store i1 %_b353, i1* %_b354
  %_b359 = load i1, i1* %_b354
  br i1 %_b359, label %_then364, label %_else363
_then364:
  %_x360 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x358
  ret { i64, [0 x i64] }* %_x360
_else363:
  %_y361 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y356
  ret { i64, [0 x i64] }* %_y361
}

define i64 @program(i64 %_argc332, { i64, [0 x i8*] }* %_argv330) {
  %_argc333 = alloca i64
  %_argv331 = alloca { i64, [0 x i8*] }*
  store i64 %_argc332, i64* %_argc333
  store { i64, [0 x i8*] }* %_argv330, { i64, [0 x i8*] }** %_argv331
  %_y334 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast335 = bitcast { i64, [3 x i64] }* %_y334 to { i64, [0 x i64] }*
  %_x336 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast337 = bitcast { i64, [3 x i64] }* %_x336 to { i64, [0 x i64] }*
  %_result338 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast337, { i64, [0 x i64] }* %_cast335, i1 1)
  %_index_ptr339 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result338, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr339
  %_x340 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_index_ptr341 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_x340, i32 0, i32 1, i32 0
  %_index342 = load i64, i64* %_index_ptr341
  ret i64 %_index342
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
