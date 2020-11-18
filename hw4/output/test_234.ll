; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc687, { i64, [0 x i8*] }* %_argv685) {
  %_argc688 = alloca i64
  %_argv686 = alloca { i64, [0 x i8*] }*
  %_a693 = alloca { i64, [0 x i64] }*
  store i64 %_argc687, i64* %_argc688
  store { i64, [0 x i8*] }* %_argv685, { i64, [0 x i8*] }** %_argv686
  %_raw_array689 = call i64* @oat_alloc_array(i64 2)
  %_array690 = bitcast i64* %_raw_array689 to { i64, [0 x i64] }*
  %_ind691 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind691
  %_ind692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array690, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind692
  store { i64, [0 x i64] }* %_array690, { i64, [0 x i64] }** %_a693
  %_a694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a693
  %_index_ptr696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a694, i32 0, i32 1, i32 1
  %_index697 = load i64, i64* %_index_ptr696
  ret i64 %_index697
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
