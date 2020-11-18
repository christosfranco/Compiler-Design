; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_global_arr365
@_global_arr365 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_constant364 = global i64 1
@_constant363 = global i64 2
@_constant362 = global i64 3
@y = global { i64, [3 x i64] }* @_global_arr360
@_global_arr360 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_constant359 = global i64 4
@_constant358 = global i64 5
@_constant357 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x370, { i64, [0 x i64] }* %_y368, i1 %_b366) {
  %_x371 = alloca { i64, [0 x i64] }*
  %_y369 = alloca { i64, [0 x i64] }*
  %_b367 = alloca i1
  store { i64, [0 x i64] }* %_x370, { i64, [0 x i64] }** %_x371
  store { i64, [0 x i64] }* %_y368, { i64, [0 x i64] }** %_y369
  store i1 %_b366, i1* %_b367
  %_b372 = load i1, i1* %_b367
  br i1 %_b372, label %_then377, label %_else376
_then377:
  %_x373 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x371
  ret { i64, [0 x i64] }* %_x373
_else376:
  %_y374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y369
  ret { i64, [0 x i64] }* %_y374
}

define i64 @program(i64 %_argc343, { i64, [0 x i8*] }* %_argv341) {
  %_argc344 = alloca i64
  %_argv342 = alloca { i64, [0 x i8*] }*
  store i64 %_argc343, i64* %_argc344
  store { i64, [0 x i8*] }* %_argv341, { i64, [0 x i8*] }** %_argv342
  %_y345 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast346 = bitcast { i64, [3 x i64] }* %_y345 to { i64, [0 x i64] }*
  %_x347 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast348 = bitcast { i64, [3 x i64] }* %_x347 to { i64, [0 x i64] }*
  %_result349 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast348, { i64, [0 x i64] }* %_cast346, i1 1)
  %_index_ptr351 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result349, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr351
  %_x352 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_index_ptr354 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_x352, i32 0, i32 1, i32 0
  %_index355 = load i64, i64* %_index_ptr354
  ret i64 %_index355
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
