; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1195, { i64, [0 x i8*] }* %_argv1193) {
  %_argc1196 = alloca i64
  %_argv1194 = alloca { i64, [0 x i8*] }*
  %_arr1209 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1195, i64* %_argc1196
  store { i64, [0 x i8*] }* %_argv1193, { i64, [0 x i8*] }** %_argv1194
  %_raw_array1197 = call i64* @oat_alloc_array(i64 2)
  %_array1198 = bitcast i64* %_raw_array1197 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1199 = call i64* @oat_alloc_array(i64 2)
  %_array1200 = bitcast i64* %_raw_array1199 to { i64, [0 x i64] }*
  %_ind1201 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1200, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1201
  %_ind1202 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1200, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1202
  %_ind1203 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1198, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1200, { i64, [0 x i64] }** %_ind1203
  %_raw_array1204 = call i64* @oat_alloc_array(i64 2)
  %_array1205 = bitcast i64* %_raw_array1204 to { i64, [0 x i64] }*
  %_ind1206 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1206
  %_ind1207 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1205, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1207
  %_ind1208 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1198, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1205, { i64, [0 x i64] }** %_ind1208
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1198, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1209
  %_arr1210 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1209
  %_index_ptr1212 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1210, i32 0, i32 1, i32 1
  %_index1213 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1212
  %_index_ptr1215 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1213, i32 0, i32 1, i32 1
  %_index1216 = load i64, i64* %_index_ptr1215
  ret i64 %_index1216
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
