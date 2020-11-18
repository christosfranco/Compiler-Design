; generated from: oatprograms/arrayargs1.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_global_arr366
@_global_arr366 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_constant365 = global i64 1
@_constant364 = global i64 2
@_constant363 = global i64 3
@y = global { i64, [3 x i64] }* @_global_arr361
@_global_arr361 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_constant360 = global i64 4
@_constant359 = global i64 5
@_constant358 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x371, { i64, [0 x i64] }* %_y369, i1 %_b367) {
  %_x372 = alloca { i64, [0 x i64] }*
  %_y370 = alloca { i64, [0 x i64] }*
  %_b368 = alloca i1
  store { i64, [0 x i64] }* %_x371, { i64, [0 x i64] }** %_x372
  store { i64, [0 x i64] }* %_y369, { i64, [0 x i64] }** %_y370
  store i1 %_b367, i1* %_b368
  %_b373 = load i1, i1* %_b368
  br i1 %_b373, label %_then378, label %_else377
_then378:
  %_x374 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x372
  ret { i64, [0 x i64] }* %_x374
_else377:
  %_y375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y370
  ret { i64, [0 x i64] }* %_y375
}

define i64 @program(i64 %_argc344, { i64, [0 x i8*] }* %_argv342) {
  %_argc345 = alloca i64
  %_argv343 = alloca { i64, [0 x i8*] }*
  store i64 %_argc344, i64* %_argc345
  store { i64, [0 x i8*] }* %_argv342, { i64, [0 x i8*] }** %_argv343
  %_y346 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast347 = bitcast { i64, [3 x i64] }* %_y346 to { i64, [0 x i64] }*
  %_x348 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast349 = bitcast { i64, [3 x i64] }* %_x348 to { i64, [0 x i64] }*
  %_result350 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast349, { i64, [0 x i64] }* %_cast347, i1 1)
  %_index_ptr352 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result350, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr352
  %_x353 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_index_ptr355 = getelementptr { i64, [3 x i64] }, { i64, [3 x i64] }* %_x353, i32 0, i32 1, i32 0
  %_index356 = load i64, i64* %_index_ptr355
  ret i64 %_index356
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
