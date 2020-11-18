; generated from: oatprograms/run36.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc662, { i64, [0 x i8*] }* %_argv660) {
  %_argc663 = alloca i64
  %_argv661 = alloca { i64, [0 x i8*] }*
  %_a668 = alloca { i64, [0 x i64] }*
  store i64 %_argc662, i64* %_argc663
  store { i64, [0 x i8*] }* %_argv660, { i64, [0 x i8*] }** %_argv661
  %_raw_array664 = call i64* @oat_alloc_array(i64 2)
  %_array665 = bitcast i64* %_raw_array664 to { i64, [0 x i64] }*
  %_ind666 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array665, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind666
  %_ind667 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array665, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind667
  store { i64, [0 x i64] }* %_array665, { i64, [0 x i64] }** %_a668
  %_a669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a668
  %_index_ptr670 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a669, i32 0, i32 1, i32 1
  %_index671 = load i64, i64* %_index_ptr670
  ret i64 %_index671
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
