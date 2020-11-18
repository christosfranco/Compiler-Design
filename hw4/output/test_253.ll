; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1182, { i64, [0 x i8*] }* %_argv1180) {
  %_argc1183 = alloca i64
  %_argv1181 = alloca { i64, [0 x i8*] }*
  %_arr1188 = alloca { i64, [0 x i64] }*
  store i64 %_argc1182, i64* %_argc1183
  store { i64, [0 x i8*] }* %_argv1180, { i64, [0 x i8*] }** %_argv1181
  %_raw_array1184 = call i64* @oat_alloc_array(i64 2)
  %_array1185 = bitcast i64* %_raw_array1184 to { i64, [0 x i64] }*
  %_ind1186 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1186
  %_ind1187 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1185, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1187
  store { i64, [0 x i64] }* %_array1185, { i64, [0 x i64] }** %_arr1188
  %_arr1189 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1188
  %_index_ptr1191 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1189, i32 0, i32 1, i32 1
  %_index1192 = load i64, i64* %_index_ptr1191
  ret i64 %_index1192
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
