; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a449 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_alloca435 = alloca i64
  store i64 %argc, i64* %_alloca435
  %_alloca436 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca436
  %_raw_array437 = call i64* @oat_alloc_array(i64 2)
  %_array438 = bitcast i64* %_raw_array437 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array439 = call i64* @oat_alloc_array(i64 2)
  %_array440 = bitcast i64* %_raw_array439 to { i64, [0 x i64] }*
  %_ind441 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array440, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind441
  %_ind442 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array440, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind442
  %_ind443 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array438, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array440, { i64, [0 x i64] }** %_ind443
  %_raw_array444 = call i64* @oat_alloc_array(i64 2)
  %_array445 = bitcast i64* %_raw_array444 to { i64, [0 x i64] }*
  %_ind446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind446
  %_ind447 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array445, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind447
  %_ind448 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array438, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array445, { i64, [0 x i64] }** %_ind448
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array438, { i64, [0 x { i64, [0 x i64] }*] }** %_a449
  %_a450 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a449
  %_index_ptr452 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a450, i32 0, i32 1, i32 0
  %_index453 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr452
  %_index_ptr455 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index453, i32 0, i32 1, i32 1
  %_index456 = load i64, i64* %_index_ptr455
  ret i64 %_index456
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
