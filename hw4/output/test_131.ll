; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc504, { i64, [0 x i8*] }* %_argv502) {
  %_argc505 = alloca i64
  %_argv503 = alloca { i64, [0 x i8*] }*
  %_a518 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc504, i64* %_argc505
  store { i64, [0 x i8*] }* %_argv502, { i64, [0 x i8*] }** %_argv503
  %_raw_array506 = call i64* @oat_alloc_array(i64 2)
  %_array507 = bitcast i64* %_raw_array506 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array508 = call i64* @oat_alloc_array(i64 2)
  %_array509 = bitcast i64* %_raw_array508 to { i64, [0 x i64] }*
  %_ind510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array509, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind510
  %_ind511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array509, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind511
  %_ind512 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array507, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array509, { i64, [0 x i64] }** %_ind512
  %_raw_array513 = call i64* @oat_alloc_array(i64 2)
  %_array514 = bitcast i64* %_raw_array513 to { i64, [0 x i64] }*
  %_ind515 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array514, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind515
  %_ind516 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array514, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind516
  %_ind517 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array507, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array514, { i64, [0 x i64] }** %_ind517
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array507, { i64, [0 x { i64, [0 x i64] }*] }** %_a518
  %_a519 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a518
  %_index_ptr521 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a519, i32 0, i32 1, i32 0
  %_index522 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr521
  %_index_ptr524 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index522, i32 0, i32 1, i32 1
  %_index525 = load i64, i64* %_index_ptr524
  ret i64 %_index525
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
