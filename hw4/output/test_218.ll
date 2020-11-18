; generated from: oatprograms/arrayargs.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x334, { i64, [0 x i64] }* %_y332, i1 %_b330) {
  %_x335 = alloca { i64, [0 x i64] }*
  %_y333 = alloca { i64, [0 x i64] }*
  %_b331 = alloca i1
  store { i64, [0 x i64] }* %_x334, { i64, [0 x i64] }** %_x335
  store { i64, [0 x i64] }* %_y332, { i64, [0 x i64] }** %_y333
  store i1 %_b330, i1* %_b331
  %_b336 = load i1, i1* %_b331
  br i1 %_b336, label %_then341, label %_else340
_then341:
  %_x337 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x335
  ret { i64, [0 x i64] }* %_x337
_else340:
  %_y338 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y333
  ret { i64, [0 x i64] }* %_y338
}

define i64 @program(i64 %_argc286, { i64, [0 x i8*] }* %_argv284) {
  %_argc287 = alloca i64
  %_argv285 = alloca { i64, [0 x i8*] }*
  %_x290 = alloca { i64, [0 x i64] }*
  %_i291 = alloca i64
  %_y306 = alloca { i64, [0 x i64] }*
  %_i307 = alloca i64
  store i64 %_argc286, i64* %_argc287
  store { i64, [0 x i8*] }* %_argv284, { i64, [0 x i8*] }** %_argv285
  %_raw_array288 = call i64* @oat_alloc_array(i64 3)
  %_array289 = bitcast i64* %_raw_array288 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array289, { i64, [0 x i64] }** %_x290
  store i64 0, i64* %_i291
  br label %_cond296
_cond296:
  %_i292 = load i64, i64* %_i291
  %_bop293 = icmp slt i64 %_i292, 3
  br i1 %_bop293, label %_body295, label %_post294
_body295:
  %_x297 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x290
  %_i298 = load i64, i64* %_i291
  %_index_ptr300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x297, i32 0, i32 1, i64 %_i298
  %_i301 = load i64, i64* %_i291
  store i64 %_i301, i64* %_index_ptr300
  %_i302 = load i64, i64* %_i291
  %_bop303 = add i64 %_i302, 1
  store i64 %_bop303, i64* %_i291
  br label %_cond296
_post294:
  %_raw_array304 = call i64* @oat_alloc_array(i64 3)
  %_array305 = bitcast i64* %_raw_array304 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array305, { i64, [0 x i64] }** %_y306
  store i64 0, i64* %_i307
  br label %_cond312
_cond312:
  %_i308 = load i64, i64* %_i307
  %_bop309 = icmp slt i64 %_i308, 3
  br i1 %_bop309, label %_body311, label %_post310
_body311:
  %_y313 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y306
  %_i314 = load i64, i64* %_i307
  %_index_ptr316 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y313, i32 0, i32 1, i64 %_i314
  %_i317 = load i64, i64* %_i307
  %_bop318 = add i64 %_i317, 3
  store i64 %_bop318, i64* %_index_ptr316
  %_i319 = load i64, i64* %_i307
  %_bop320 = add i64 %_i319, 1
  store i64 %_bop320, i64* %_i307
  br label %_cond312
_post310:
  %_y321 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y306
  %_x322 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x290
  %_result323 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_x322, { i64, [0 x i64] }* %_y321, i1 1)
  %_index_ptr325 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_result323, i32 0, i32 1, i32 0
  store i64 17, i64* %_index_ptr325
  %_x326 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x290
  %_index_ptr328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x326, i32 0, i32 1, i32 0
  %_index329 = load i64, i64* %_index_ptr328
  ret i64 %_index329
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
