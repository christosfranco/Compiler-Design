; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc535, { i64, [0 x i8*] }* %_argv533) {
  %_argc536 = alloca i64
  %_argv534 = alloca { i64, [0 x i8*] }*
  %_b541 = alloca { i64, [0 x i1] }*
  %_i542 = alloca i64
  store i64 %_argc535, i64* %_argc536
  store { i64, [0 x i8*] }* %_argv533, { i64, [0 x i8*] }** %_argv534
  %_raw_array537 = call i64* @oat_alloc_array(i64 2)
  %_array538 = bitcast i64* %_raw_array537 to { i64, [0 x i1] }*
  %_ind539 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array538, i32 0, i32 1, i32 0
  store i1 1, i1* %_ind539
  %_ind540 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array538, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind540
  store { i64, [0 x i1] }* %_array538, { i64, [0 x i1] }** %_b541
  store i64 0, i64* %_i542
  %_b543 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b541
  %_index_ptr544 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b543, i32 0, i32 1, i32 0
  %_index545 = load i1, i1* %_index_ptr544
  br i1 %_index545, label %_then548, label %_else547
_then548:
  store i64 1, i64* %_i542
  br label %_merge546
_else547:
  br label %_merge546
_merge546:
  %_i549 = load i64, i64* %_i542
  ret i64 %_i549
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
