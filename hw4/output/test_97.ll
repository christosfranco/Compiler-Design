; generated from: oatprograms/run34.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a339 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_s340 = alloca i64
  %_i341 = alloca i64
  %_j347 = alloca i64
  %_alloca314 = alloca i64
  store i64 %argc, i64* %_alloca314
  %_alloca315 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca315
  %_raw_array316 = call i64* @oat_alloc_array(i64 3)
  %_array317 = bitcast i64* %_raw_array316 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array318 = call i64* @oat_alloc_array(i64 4)
  %_array319 = bitcast i64* %_raw_array318 to { i64, [0 x i64] }*
  %_ind320 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array319, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind320
  %_ind321 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array319, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind321
  %_ind322 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array319, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind322
  %_ind323 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array319, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind323
  %_ind324 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array317, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array319, { i64, [0 x i64] }** %_ind324
  %_raw_array325 = call i64* @oat_alloc_array(i64 4)
  %_array326 = bitcast i64* %_raw_array325 to { i64, [0 x i64] }*
  %_ind327 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array326, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind327
  %_ind328 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array326, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind328
  %_ind329 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array326, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind329
  %_ind330 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array326, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind330
  %_ind331 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array317, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array326, { i64, [0 x i64] }** %_ind331
  %_raw_array332 = call i64* @oat_alloc_array(i64 4)
  %_array333 = bitcast i64* %_raw_array332 to { i64, [0 x i64] }*
  %_ind334 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array333, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind334
  %_ind335 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array333, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind335
  %_ind336 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array333, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind336
  %_ind337 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array333, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind337
  %_ind338 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array317, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array333, { i64, [0 x i64] }** %_ind338
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array317, { i64, [0 x { i64, [0 x i64] }*] }** %_a339
  store i64 0, i64* %_s340
  store i64 0, i64* %_i341
  br label %_cond346
_cond346:
  %_i342 = load i64, i64* %_i341
  %_bop343 = icmp slt i64 %_i342, 3
  br i1 %_bop343, label %_body345, label %_post344
_body345:
  store i64 0, i64* %_j347
  br label %_cond352
_cond352:
  %_j348 = load i64, i64* %_j347
  %_bop349 = icmp slt i64 %_j348, 4
  br i1 %_bop349, label %_body351, label %_post350
_body351:
  %_s353 = load i64, i64* %_s340
  %_a354 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a339
  %_i355 = load i64, i64* %_i341
  %_index_ptr357 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a354, i32 0, i32 1, i64 %_i355
  %_index358 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr357
  %_j359 = load i64, i64* %_j347
  %_index_ptr361 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index358, i32 0, i32 1, i64 %_j359
  %_index362 = load i64, i64* %_index_ptr361
  %_bop363 = add i64 %_s353, %_index362
  store i64 %_bop363, i64* %_s340
  %_j364 = load i64, i64* %_j347
  %_bop365 = add i64 %_j364, 1
  store i64 %_bop365, i64* %_j347
  br label %_cond352
_post350:
  %_i366 = load i64, i64* %_i341
  %_bop367 = add i64 %_i366, 1
  store i64 %_bop367, i64* %_i341
  br label %_cond346
_post344:
  %_s368 = load i64, i64* %_s340
  ret i64 %_s368
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
