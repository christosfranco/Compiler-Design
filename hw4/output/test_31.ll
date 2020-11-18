; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc491, { i64, [0 x i8*] }* %_argv489) {
  %_argc492 = alloca i64
  %_argv490 = alloca { i64, [0 x i8*] }*
  %_a497 = alloca { i64, [0 x i64] }*
  store i64 %_argc491, i64* %_argc492
  store { i64, [0 x i8*] }* %_argv489, { i64, [0 x i8*] }** %_argv490
  %_raw_array493 = call i64* @oat_alloc_array(i64 2)
  %_array494 = bitcast i64* %_raw_array493 to { i64, [0 x i64] }*
  %_ind495 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array494, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind495
  %_ind496 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array494, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind496
  store { i64, [0 x i64] }* %_array494, { i64, [0 x i64] }** %_a497
  %_a498 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a497
  %_index_ptr500 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a498, i32 0, i32 1, i32 1
  %_index501 = load i64, i64* %_index_ptr500
  ret i64 %_index501
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
