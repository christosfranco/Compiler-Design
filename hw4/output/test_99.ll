; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a430 = alloca { i64, [0 x i64] }*
  %_alloca424 = alloca i64
  store i64 %argc, i64* %_alloca424
  %_alloca425 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca425
  %_raw_array426 = call i64* @oat_alloc_array(i64 2)
  %_array427 = bitcast i64* %_raw_array426 to { i64, [0 x i64] }*
  %_ind428 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array427, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind428
  %_ind429 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array427, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind429
  store { i64, [0 x i64] }* %_array427, { i64, [0 x i64] }** %_a430
  %_a431 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a430
  %_index_ptr433 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a431, i32 0, i32 1, i32 1
  %_index434 = load i64, i64* %_index_ptr433
  ret i64 %_index434
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
