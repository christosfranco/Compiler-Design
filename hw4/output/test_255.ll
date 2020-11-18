; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1246) {
  %_arr1247 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1246, { i64, [0 x i64] }** %_arr1247
  %_arr1248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1247
  ret { i64, [0 x i64] }* %_arr1248
}

define i64 @program(i64 %_argc1219, { i64, [0 x i8*] }* %_argv1217) {
  %_argc1220 = alloca i64
  %_argv1218 = alloca { i64, [0 x i8*] }*
  %_garr1235 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1241 = alloca { i64, [0 x i64] }*
  store i64 %_argc1219, i64* %_argc1220
  store { i64, [0 x i8*] }* %_argv1217, { i64, [0 x i8*] }** %_argv1218
  %_raw_array1221 = call i64* @oat_alloc_array(i64 2)
  %_array1222 = bitcast i64* %_raw_array1221 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1223 = call i64* @oat_alloc_array(i64 3)
  %_array1224 = bitcast i64* %_raw_array1223 to { i64, [0 x i64] }*
  %_ind1225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1225
  %_ind1226 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1226
  %_ind1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1224, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1227
  %_ind1228 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1222, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1224, { i64, [0 x i64] }** %_ind1228
  %_raw_array1229 = call i64* @oat_alloc_array(i64 3)
  %_array1230 = bitcast i64* %_raw_array1229 to { i64, [0 x i64] }*
  %_ind1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1231
  %_ind1232 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1232
  %_ind1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1230, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1233
  %_ind1234 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1222, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1230, { i64, [0 x i64] }** %_ind1234
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1222, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1235
  %_garr1236 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1235
  %_index_ptr1238 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1236, i32 0, i32 1, i32 1
  %_index1239 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1238
  %_result1240 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index1239)
  store { i64, [0 x i64] }* %_result1240, { i64, [0 x i64] }** %_arr1241
  %_arr1242 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1241
  %_index_ptr1244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1242, i32 0, i32 1, i32 1
  %_index1245 = load i64, i64* %_index_ptr1244
  ret i64 %_index1245
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
