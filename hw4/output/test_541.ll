; generated from: oatprograms/arrayargs2.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x401, { i64, [0 x i64] }* %_y399, i1 %_b397) {
  %_x402 = alloca { i64, [0 x i64] }*
  %_y400 = alloca { i64, [0 x i64] }*
  %_b398 = alloca i1
  store { i64, [0 x i64] }* %_x401, { i64, [0 x i64] }** %_x402
  store { i64, [0 x i64] }* %_y399, { i64, [0 x i64] }** %_y400
  store i1 %_b397, i1* %_b398
  %_b403 = load i1, i1* %_b398
  br i1 %_b403, label %_then408, label %_else407
_then408:
  %_x404 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x402
  ret { i64, [0 x i64] }* %_x404
_else407:
  %_y405 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y400
  ret { i64, [0 x i64] }* %_y405
}

define i64 @program(i64 %_argc380, { i64, [0 x i8*] }* %_argv378) {
  %_argc381 = alloca i64
  %_argv379 = alloca { i64, [0 x i8*] }*
  %_x384 = alloca { i64, [0 x i64] }*
  %_y387 = alloca { i64, [0 x i64] }*
  store i64 %_argc380, i64* %_argc381
  store { i64, [0 x i8*] }* %_argv378, { i64, [0 x i8*] }** %_argv379
  %_raw_array382 = call i64* @oat_alloc_array(i64 3)
  %_array383 = bitcast i64* %_raw_array382 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array383, { i64, [0 x i64] }** %_x384
  %_raw_array385 = call i64* @oat_alloc_array(i64 3)
  %_array386 = bitcast i64* %_raw_array385 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array386, { i64, [0 x i64] }** %_y387
  %_y388 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y387
  %_x389 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x384
  %_result390 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x389, { i64, [0 x i64] }* %_y388, i1 1)
  %_index_ptr392 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result390, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr392
  %_x393 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x384
  %_index_ptr395 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x393, i32 0, i32 1, i32 0
  %_index396 = load i64, i64* %_index_ptr395
  ret i64 %_index396
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
