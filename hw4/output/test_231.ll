; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc555, { i64, [0 x i8*] }* %_argv553) {
  %_argc556 = alloca i64
  %_argv554 = alloca { i64, [0 x i8*] }*
  %_b561 = alloca { i64, [0 x i1] }*
  %_i562 = alloca i64
  store i64 %_argc555, i64* %_argc556
  store { i64, [0 x i8*] }* %_argv553, { i64, [0 x i8*] }** %_argv554
  %_raw_array557 = call i64* @oat_alloc_array(i64 2)
  %_array558 = bitcast i64* %_raw_array557 to { i64, [0 x i1] }*
  %_ind559 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array558, i32 0, i32 1, i32 0
  store i1 1, i1* %_ind559
  %_ind560 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array558, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind560
  store { i64, [0 x i1] }* %_array558, { i64, [0 x i1] }** %_b561
  store i64 0, i64* %_i562
  %_b563 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b561
  %_index_ptr565 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b563, i32 0, i32 1, i32 0
  %_index566 = load i1, i1* %_index_ptr565
  br i1 %_index566, label %_then569, label %_else568
_then569:
  store i64 1, i64* %_i562
  br label %_merge567
_else568:
  br label %_merge567
_merge567:
  %_i570 = load i64, i64* %_i562
  ret i64 %_i570
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
