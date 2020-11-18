; generated from: oatprograms/arrayargs3.oat
target triple = "x86_64-unknown-linux"
@x = global { i64, [3 x i64] }* @_global_arr448
@_global_arr448 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 1, i64 2, i64 3 ] }
@_constant447 = global i64 1
@_constant446 = global i64 2
@_constant445 = global i64 3
@y = global { i64, [3 x i64] }* @_global_arr443
@_global_arr443 = global { i64, [3 x i64] } { i64 3, [3 x i64] [ i64 4, i64 5, i64 6 ] }
@_constant442 = global i64 4
@_constant441 = global i64 5
@_constant440 = global i64 6

define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x453, { i64, [0 x i64] }* %_y451, i1 %_b449) {
  %_x454 = alloca { i64, [0 x i64] }*
  %_y452 = alloca { i64, [0 x i64] }*
  %_b450 = alloca i1
  store { i64, [0 x i64] }* %_x453, { i64, [0 x i64] }** %_x454
  store { i64, [0 x i64] }* %_y451, { i64, [0 x i64] }** %_y452
  store i1 %_b449, i1* %_b450
  %_b455 = load i1, i1* %_b450
  br i1 %_b455, label %_then460, label %_else459
_then460:
  %_x456 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x454
  ret { i64, [0 x i64] }* %_x456
_else459:
  %_y457 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y452
  ret { i64, [0 x i64] }* %_y457
}

define i64 @program(i64 %_argc411, { i64, [0 x i8*] }* %_argv409) {
  %_argc412 = alloca i64
  %_argv410 = alloca { i64, [0 x i8*] }*
  %_z437 = alloca i64
  store i64 %_argc411, i64* %_argc412
  store { i64, [0 x i8*] }* %_argv409, { i64, [0 x i8*] }** %_argv410
  %_y413 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast414 = bitcast { i64, [3 x i64] }* %_y413 to { i64, [0 x i64] }*
  %_x415 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast416 = bitcast { i64, [3 x i64] }* %_x415 to { i64, [0 x i64] }*
  %_result417 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast416, { i64, [0 x i64] }* %_cast414, i1 1)
  %_index_ptr419 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result417, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr419
  %_y420 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast421 = bitcast { i64, [3 x i64] }* %_y420 to { i64, [0 x i64] }*
  %_x422 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast423 = bitcast { i64, [3 x i64] }* %_x422 to { i64, [0 x i64] }*
  %_result424 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast423, { i64, [0 x i64] }* %_cast421, i1 1)
  %_index_ptr426 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result424, i32 0, i32 1, i32 0
  %_index427 = load i64, i64* %_index_ptr426
  %_x428 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @x
  %_cast429 = bitcast { i64, [3 x i64] }* %_x428 to { i64, [0 x i64] }*
  %_y430 = load { i64, [3 x i64] }*, { i64, [3 x i64] }** @y
  %_cast431 = bitcast { i64, [3 x i64] }* %_y430 to { i64, [0 x i64] }*
  %_result432 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_cast431, { i64, [0 x i64] }* %_cast429, i1 0)
  %_index_ptr434 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result432, i32 0, i32 1, i32 0
  %_index435 = load i64, i64* %_index_ptr434
  %_bop436 = add i64 %_index427, %_index435
  store i64 %_bop436, i64* %_z437
  %_z438 = load i64, i64* %_z437
  ret i64 %_z438
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
