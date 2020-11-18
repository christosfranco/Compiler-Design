; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x322, { i64, [0 x i64] }* %_y320, i1 %_b318) {
  %_x323 = alloca { i64, [0 x i64] }*
  %_y321 = alloca { i64, [0 x i64] }*
  %_b319 = alloca i1
  store { i64, [0 x i64] }* %_x322, { i64, [0 x i64] }** %_x323
  store { i64, [0 x i64] }* %_y320, { i64, [0 x i64] }** %_y321
  store i1 %_b318, i1* %_b319
  %_b324 = load i1, i1* %_b319
  br i1 %_b324, label %_then329, label %_else328
_then329:
  %_x325 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x323
  ret { i64, [0 x i64] }* %_x325
_else328:
  %_y326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y321
  ret { i64, [0 x i64] }* %_y326
}

define i64 @program(i64 %_argc278, { i64, [0 x i8*] }* %_argv276) {
  %_argc279 = alloca i64
  %_argv277 = alloca { i64, [0 x i8*] }*
  %_x282 = alloca { i64, [0 x i64] }*
  %_i283 = alloca i64
  %_y297 = alloca { i64, [0 x i64] }*
  %_i298 = alloca i64
  store i64 %_argc278, i64* %_argc279
  store { i64, [0 x i8*] }* %_argv276, { i64, [0 x i8*] }** %_argv277
  %_raw_array280 = call i64* @oat_alloc_array(i64 3)
  %_array281 = bitcast i64* %_raw_array280 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array281, { i64, [0 x i64] }** %_x282
  store i64 0, i64* %_i283
  br label %_cond288
_cond288:
  %_i284 = load i64, i64* %_i283
  %_bop285 = icmp slt i64 %_i284, 3
  br i1 %_bop285, label %_body287, label %_post286
_body287:
  %_x289 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x282
  %_i290 = load i64, i64* %_i283
  %_index_ptr291 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x289, i32 0, i32 1, i64 %_i290
  %_i292 = load i64, i64* %_i283
  store i64 %_i292, i64* %_index_ptr291
  %_i293 = load i64, i64* %_i283
  %_bop294 = add i64 %_i293, 1
  store i64 %_bop294, i64* %_i283
  br label %_cond288
_post286:
  %_raw_array295 = call i64* @oat_alloc_array(i64 3)
  %_array296 = bitcast i64* %_raw_array295 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array296, { i64, [0 x i64] }** %_y297
  store i64 0, i64* %_i298
  br label %_cond303
_cond303:
  %_i299 = load i64, i64* %_i298
  %_bop300 = icmp slt i64 %_i299, 3
  br i1 %_bop300, label %_body302, label %_post301
_body302:
  %_y304 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y297
  %_i305 = load i64, i64* %_i298
  %_index_ptr306 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y304, i32 0, i32 1, i64 %_i305
  %_i307 = load i64, i64* %_i298
  %_bop308 = add i64 %_i307, 3
  store i64 %_bop308, i64* %_index_ptr306
  %_i309 = load i64, i64* %_i298
  %_bop310 = add i64 %_i309, 1
  store i64 %_bop310, i64* %_i298
  br label %_cond303
_post301:
  %_y311 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y297
  %_x312 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x282
  %_result313 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x312, { i64, [0 x i64] }* %_y311, i1 1)
  %_index_ptr314 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result313, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr314
  %_x315 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x282
  %_index_ptr316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x315, i32 0, i32 1, i32 0
  %_index317 = load i64, i64* %_index_ptr316
  ret i64 %_index317
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
