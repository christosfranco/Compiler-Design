; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %_argc874, { i64, [0 x i8*] }* %_argv872) {
  %_argc875 = alloca i64
  %_argv873 = alloca { i64, [0 x i8*] }*
  store i64 %_argc874, i64* %_argc875
  store { i64, [0 x i8*] }* %_argv872, { i64, [0 x i8*] }** %_argv873
  %_raw_array876 = call i64* @oat_alloc_array(i64 2)
  %_array877 = bitcast i64* %_raw_array876 to { i64, [0 x i64] }*
  %_ind878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array877, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind878
  %_ind879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array877, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind879
  store { i64, [0 x i64] }* %_array877, { i64, [0 x i64] }** @arr
  %_arr880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr882 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr880, i32 0, i32 1, i32 1
  %_index883 = load i64, i64* %_index_ptr882
  ret i64 %_index883
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
