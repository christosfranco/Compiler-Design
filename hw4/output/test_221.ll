; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_global_arr449
@_global_arr449 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_constant448 = global i64 1
@_constant447 = global i64 2
@_constant446 = global i64 3
@y = global { i64, [3 x i64] }* @_global_arr444
@_global_arr444 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_constant443 = global i64 4
@_constant442 = global i64 5
@_constant441 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x454, { i64, [0 x i64] }* %_y452, i1 %_b450) {
  %_x455 = alloca { i64, [0 x i64] }*
  %_y453 = alloca { i64, [0 x i64] }*
  %_b451 = alloca i1
  store { i64, [0 x i64] }* %_x454, { i64, [0 x i64] }** %_x455
  store { i64, [0 x i64] }* %_y452, { i64, [0 x i64] }** %_y453
  store i1 %_b450, i1* %_b451
  %_b456 = load i1, i1* %_b451
  br i1 %_b456, label %_then461, label %_else460
_then461:
  %_x457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x455
  ret { i64, [0 x i64] }* %_x457
_else460:
  %_y458 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y453
  ret { i64, [0 x i64] }* %_y458
}

define i64 @program(i64 %_argc412, { i64, [0 x i8*] }* %_argv410) {
  %_argc413 = alloca i64
  %_argv411 = alloca { i64, [0 x i8*] }*
  %_z438 = alloca i64
  store i64 %_argc412, i64* %_argc413
  store { i64, [0 x i8*] }* %_argv410, { i64, [0 x i8*] }** %_argv411
  %_y414 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast415 = bitcast { i64, [3 x i64] }* %_y414 to { i64, [0 x i64] }*
  %_x416 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast417 = bitcast { i64, [3 x i64] }* %_x416 to { i64, [0 x i64] }*
  %_result418 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast417, { i64, [0 x i64] }* %_cast415, i1 1)
  %_index_ptr420 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result418, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr420
  %_y421 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast422 = bitcast { i64, [3 x i64] }* %_y421 to { i64, [0 x i64] }*
  %_x423 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast424 = bitcast { i64, [3 x i64] }* %_x423 to { i64, [0 x i64] }*
  %_result425 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast424, { i64, [0 x i64] }* %_cast422, i1 1)
  %_index_ptr427 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result425, i32 0, i32 1, i32 0
  %_index428 = load i64, i64* %_index_ptr427
  %_x429 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast430 = bitcast { i64, [3 x i64] }* %_x429 to { i64, [0 x i64] }*
  %_y431 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast432 = bitcast { i64, [3 x i64] }* %_y431 to { i64, [0 x i64] }*
  %_result433 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast432, { i64, [0 x i64] }* %_cast430, i1 0)
  %_index_ptr435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result433, i32 0, i32 1, i32 0
  %_index436 = load i64, i64* %_index_ptr435
  %_bop437 = add i64 %_index428, %_index436
  store i64 %_bop437, i64* %_z438
  %_z439 = load i64, i64* %_z438
  ret i64 %_z439
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
