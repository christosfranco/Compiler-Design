; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1135, { i64, [0 x i8*] }* %_argv1133) {
  %_argc1136 = alloca i64
  %_argv1134 = alloca { i64, [0 x i8*] }*
  %_arr1141 = alloca { i64, [0 x i64] }*
  store i64 %_argc1135, i64* %_argc1136
  store { i64, [0 x i8*] }* %_argv1133, { i64, [0 x i8*] }** %_argv1134
  %_raw_array1137 = call i64* @oat_alloc_array(i64 2)
  %_array1138 = bitcast i64* %_raw_array1137 to { i64, [0 x i64] }*
  %_ind1139 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1138, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1139
  %_ind1140 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1138, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1140
  store { i64, [0 x i64] }* %_array1138, { i64, [0 x i64] }** %_arr1141
  %_arr1142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1141
  %_index_ptr1143 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1142, i32 0, i32 1, i32 1
  %_index1144 = load i64, i64* %_index_ptr1143
  ret i64 %_index1144
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
