; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc986, { i64, [0 x i8*] }* %_argv984) {
  %_argc987 = alloca i64
  %_argv985 = alloca { i64, [0 x i8*] }*
  %_arr992 = alloca { i64, [0 x i64] }*
  store i64 %_argc986, i64* %_argc987
  store { i64, [0 x i8*] }* %_argv984, { i64, [0 x i8*] }** %_argv985
  %_raw_array988 = call i64* @oat_alloc_array(i64 2)
  %_array989 = bitcast i64* %_raw_array988 to { i64, [0 x i64] }*
  %_ind990 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array989, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind990
  %_ind991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array989, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind991
  store { i64, [0 x i64] }* %_array989, { i64, [0 x i64] }** %_arr992
  %_arr993 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr992
  %_index_ptr995 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr993, i32 0, i32 1, i32 1
  %_index996 = load i64, i64* %_index_ptr995
  ret i64 %_index996
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
