; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1180, { i64, [0 x i8*] }* %_argv1178) {
  %_argc1181 = alloca i64
  %_argv1179 = alloca { i64, [0 x i8*] }*
  %_arr1186 = alloca { i64, [0 x i64] }*
  store i64 %_argc1180, i64* %_argc1181
  store { i64, [0 x i8*] }* %_argv1178, { i64, [0 x i8*] }** %_argv1179
  %_raw_array1182 = call i64* @oat_alloc_array(i64 2)
  %_array1183 = bitcast i64* %_raw_array1182 to { i64, [0 x i64] }*
  %_ind1184 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1184
  %_ind1185 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1183, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1185
  store { i64, [0 x i64] }* %_array1183, { i64, [0 x i64] }** %_arr1186
  %_arr1187 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1186
  %_index_ptr1189 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1187, i32 0, i32 1, i32 1
  %_index1190 = load i64, i64* %_index_ptr1189
  ret i64 %_index1190
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
