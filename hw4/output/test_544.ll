; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc473, { i64, [0 x i8*] }* %_argv471) {
  %_argc474 = alloca i64
  %_argv472 = alloca { i64, [0 x i8*] }*
  %_i479 = alloca { i64, [0 x i64] }*
  store i64 %_argc473, i64* %_argc474
  store { i64, [0 x i8*] }* %_argv471, { i64, [0 x i8*] }** %_argv472
  %_raw_array475 = call i64* @oat_alloc_array(i64 2)
  %_array476 = bitcast i64* %_raw_array475 to { i64, [0 x i64] }*
  %_ind477 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array476, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind477
  %_ind478 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array476, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind478
  store { i64, [0 x i64] }* %_array476, { i64, [0 x i64] }** %_i479
  %_i480 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i479
  %_index_ptr482 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i480, i32 0, i32 1, i32 0
  %_index483 = load i64, i64* %_index_ptr482
  ret i64 %_index483
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
