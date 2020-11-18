; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1193, { i64, [0 x i8*] }* %_argv1191) {
  %_argc1194 = alloca i64
  %_argv1192 = alloca { i64, [0 x i8*] }*
  %_arr1207 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1193, i64* %_argc1194
  store { i64, [0 x i8*] }* %_argv1191, { i64, [0 x i8*] }** %_argv1192
  %_raw_array1195 = call i64* @oat_alloc_array(i64 2)
  %_array1196 = bitcast i64* %_raw_array1195 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1197 = call i64* @oat_alloc_array(i64 2)
  %_array1198 = bitcast i64* %_raw_array1197 to { i64, [0 x i64] }*
  %_ind1199 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1198, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1199
  %_ind1200 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1198, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1200
  %_ind1201 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1196, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1198, { i64, [0 x i64] }** %_ind1201
  %_raw_array1202 = call i64* @oat_alloc_array(i64 2)
  %_array1203 = bitcast i64* %_raw_array1202 to { i64, [0 x i64] }*
  %_ind1204 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1203, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1204
  %_ind1205 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1203, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1205
  %_ind1206 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1196, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1203, { i64, [0 x i64] }** %_ind1206
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1196, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1207
  %_arr1208 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1207
  %_index_ptr1210 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1208, i32 0, i32 1, i32 1
  %_index1211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1210
  %_index_ptr1213 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1211, i32 0, i32 1, i32 1
  %_index1214 = load i64, i64* %_index_ptr1213
  ret i64 %_index1214
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
