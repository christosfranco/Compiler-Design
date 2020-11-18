; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x386, { i64, [0 x i64] }* %_y384, i1 %_b382) {
  %_x387 = alloca { i64, [0 x i64] }*
  %_y385 = alloca { i64, [0 x i64] }*
  %_b383 = alloca i1
  store { i64, [0 x i64] }* %_x386, { i64, [0 x i64] }** %_x387
  store { i64, [0 x i64] }* %_y384, { i64, [0 x i64] }** %_y385
  store i1 %_b382, i1* %_b383
  %_b388 = load i1, i1* %_b383
  br i1 %_b388, label %_then393, label %_else392
_then393:
  %_x389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x387
  ret { i64, [0 x i64] }* %_x389
_else392:
  %_y390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y385
  ret { i64, [0 x i64] }* %_y390
}

define i64 @program(i64 %_argc367, { i64, [0 x i8*] }* %_argv365) {
  %_argc368 = alloca i64
  %_argv366 = alloca { i64, [0 x i8*] }*
  %_x371 = alloca { i64, [0 x i64] }*
  %_y374 = alloca { i64, [0 x i64] }*
  store i64 %_argc367, i64* %_argc368
  store { i64, [0 x i8*] }* %_argv365, { i64, [0 x i8*] }** %_argv366
  %_raw_array369 = call i64* @oat_alloc_array(i64 3)
  %_array370 = bitcast i64* %_raw_array369 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array370, { i64, [0 x i64] }** %_x371
  %_raw_array372 = call i64* @oat_alloc_array(i64 3)
  %_array373 = bitcast i64* %_raw_array372 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array373, { i64, [0 x i64] }** %_y374
  %_y375 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y374
  %_x376 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x371
  %_result377 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x376, { i64, [0 x i64] }* %_y375, i1 1)
  %_index_ptr378 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result377, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr378
  %_x379 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x371
  %_index_ptr380 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x379, i32 0, i32 1, i32 0
  %_index381 = load i64, i64* %_index_ptr380
  ret i64 %_index381
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
