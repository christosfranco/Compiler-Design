; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc455, { i64, [0 x i8*] }* %_argv453) {
  %_argc456 = alloca i64
  %_argv454 = alloca { i64, [0 x i8*] }*
  %_i461 = alloca { i64, [0 x i64] }*
  store i64 %_argc455, i64* %_argc456
  store { i64, [0 x i8*] }* %_argv453, { i64, [0 x i8*] }** %_argv454
  %_raw_array457 = call i64* @oat_alloc_array(i64 2)
  %_array458 = bitcast i64* %_raw_array457 to { i64, [0 x i64] }*
  %_ind459 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array458, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind459
  %_ind460 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array458, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind460
  store { i64, [0 x i64] }* %_array458, { i64, [0 x i64] }** %_i461
  %_i462 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i461
  %_index_ptr463 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i462, i32 0, i32 1, i32 0
  %_index464 = load i64, i64* %_index_ptr463
  ret i64 %_index464
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
