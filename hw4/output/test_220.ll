; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x402, { i64, [0 x i64] }* %_y400, i1 %_b398) {
  %_x403 = alloca { i64, [0 x i64] }*
  %_y401 = alloca { i64, [0 x i64] }*
  %_b399 = alloca i1
  store { i64, [0 x i64] }* %_x402, { i64, [0 x i64] }** %_x403
  store { i64, [0 x i64] }* %_y400, { i64, [0 x i64] }** %_y401
  store i1 %_b398, i1* %_b399
  %_b404 = load i1, i1* %_b399
  br i1 %_b404, label %_then409, label %_else408
_then409:
  %_x405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x403
  ret { i64, [0 x i64] }* %_x405
_else408:
  %_y406 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y401
  ret { i64, [0 x i64] }* %_y406
}

define i64 @program(i64 %_argc381, { i64, [0 x i8*] }* %_argv379) {
  %_argc382 = alloca i64
  %_argv380 = alloca { i64, [0 x i8*] }*
  %_x385 = alloca { i64, [0 x i64] }*
  %_y388 = alloca { i64, [0 x i64] }*
  store i64 %_argc381, i64* %_argc382
  store { i64, [0 x i8*] }* %_argv379, { i64, [0 x i8*] }** %_argv380
  %_raw_array383 = call i64* @oat_alloc_array(i64 3)
  %_array384 = bitcast i64* %_raw_array383 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array384, { i64, [0 x i64] }** %_x385
  %_raw_array386 = call i64* @oat_alloc_array(i64 3)
  %_array387 = bitcast i64* %_raw_array386 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array387, { i64, [0 x i64] }** %_y388
  %_y389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y388
  %_x390 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x385
  %_result391 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x390, { i64, [0 x i64] }* %_y389, i1 1)
  %_index_ptr393 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result391, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr393
  %_x394 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x385
  %_index_ptr396 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x394, i32 0, i32 1, i32 0
  %_index397 = load i64, i64* %_index_ptr396
  ret i64 %_index397
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
