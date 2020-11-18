; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc686, { i64, [0 x i8*] }* %_argv684) {
  %_argc687 = alloca i64
  %_argv685 = alloca { i64, [0 x i8*] }*
  %_a692 = alloca { i64, [0 x i64] }*
  store i64 %_argc686, i64* %_argc687
  store { i64, [0 x i8*] }* %_argv684, { i64, [0 x i8*] }** %_argv685
  %_raw_array688 = call i64* @oat_alloc_array(i64 2)
  %_array689 = bitcast i64* %_raw_array688 to { i64, [0 x i64] }*
  %_ind690 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array689, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind690
  %_ind691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array689, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind691
  store { i64, [0 x i64] }* %_array689, { i64, [0 x i64] }** %_a692
  %_a693 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a692
  %_index_ptr695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a693, i32 0, i32 1, i32 1
  %_index696 = load i64, i64* %_index_ptr695
  ret i64 %_index696
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
