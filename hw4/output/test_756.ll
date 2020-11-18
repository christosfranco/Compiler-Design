; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_global_arr430
@_global_arr430 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_constant429 = global i64 1
@_constant428 = global i64 2
@_constant427 = global i64 3
@y = global { i64, [3 x i64] }* @_global_arr425
@_global_arr425 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_constant424 = global i64 4
@_constant423 = global i64 5
@_constant422 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x435, { i64, [0 x i64] }* %_y433, i1 %_b431) {
  %_x436 = alloca { i64, [0 x i64] }*
  %_y434 = alloca { i64, [0 x i64] }*
  %_b432 = alloca i1
  store { i64, [0 x i64] }* %_x435, { i64, [0 x i64] }** %_x436
  store { i64, [0 x i64] }* %_y433, { i64, [0 x i64] }** %_y434
  store i1 %_b431, i1* %_b432
  %_b437 = load i1, i1* %_b432
  br i1 %_b437, label %_then442, label %_else441
_then442:
  %_x438 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x436
  ret { i64, [0 x i64] }* %_x438
_else441:
  %_y439 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y434
  ret { i64, [0 x i64] }* %_y439
}

define i64 @program(i64 %_argc396, { i64, [0 x i8*] }* %_argv394) {
  %_argc397 = alloca i64
  %_argv395 = alloca { i64, [0 x i8*] }*
  %_z419 = alloca i64
  store i64 %_argc396, i64* %_argc397
  store { i64, [0 x i8*] }* %_argv394, { i64, [0 x i8*] }** %_argv395
  %_y398 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast399 = bitcast { i64, [3 x i64] }* %_y398 to { i64, [0 x i64] }*
  %_x400 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast401 = bitcast { i64, [3 x i64] }* %_x400 to { i64, [0 x i64] }*
  %_result402 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast401, { i64, [0 x i64] }* %_cast399, i1 1)
  %_index_ptr403 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result402, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr403
  %_y404 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast405 = bitcast { i64, [3 x i64] }* %_y404 to { i64, [0 x i64] }*
  %_x406 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast407 = bitcast { i64, [3 x i64] }* %_x406 to { i64, [0 x i64] }*
  %_result408 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast407, { i64, [0 x i64] }* %_cast405, i1 1)
  %_index_ptr409 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result408, i32 0, i32 1, i32 0
  %_index410 = load i64, i64* %_index_ptr409
  %_x411 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast412 = bitcast { i64, [3 x i64] }* %_x411 to { i64, [0 x i64] }*
  %_y413 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast414 = bitcast { i64, [3 x i64] }* %_y413 to { i64, [0 x i64] }*
  %_result415 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast414, { i64, [0 x i64] }* %_cast412, i1 0)
  %_index_ptr416 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result415, i32 0, i32 1, i32 0
  %_index417 = load i64, i64* %_index_ptr416
  %_bop418 = add i64 %_index410, %_index417
  store i64 %_bop418, i64* %_z419
  %_z420 = load i64, i64* %_z419
  ret i64 %_z420
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
