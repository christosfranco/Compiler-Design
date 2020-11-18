; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_arr1244) {
  %_arr1245 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_arr1244, { i64, [0 x i64] }** %_arr1245
  %_arr1246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1245
  ret { i64, [0 x i64] }* %_arr1246
}

define i64 @program(i64 %_argc1217, { i64, [0 x i8*] }* %_argv1215) {
  %_argc1218 = alloca i64
  %_argv1216 = alloca { i64, [0 x i8*] }*
  %_garr1233 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr1239 = alloca { i64, [0 x i64] }*
  store i64 %_argc1217, i64* %_argc1218
  store { i64, [0 x i8*] }* %_argv1215, { i64, [0 x i8*] }** %_argv1216
  %_raw_array1219 = call i64* @oat_alloc_array(i64 2)
  %_array1220 = bitcast i64* %_raw_array1219 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1221 = call i64* @oat_alloc_array(i64 3)
  %_array1222 = bitcast i64* %_raw_array1221 to { i64, [0 x i64] }*
  %_ind1223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1223
  %_ind1224 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1224
  %_ind1225 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1222, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind1225
  %_ind1226 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1220, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1222, { i64, [0 x i64] }** %_ind1226
  %_raw_array1227 = call i64* @oat_alloc_array(i64 3)
  %_array1228 = bitcast i64* %_raw_array1227 to { i64, [0 x i64] }*
  %_ind1229 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1228, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind1229
  %_ind1230 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1228, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind1230
  %_ind1231 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1228, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind1231
  %_ind1232 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1220, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1228, { i64, [0 x i64] }** %_ind1232
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1220, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1233
  %_garr1234 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr1233
  %_index_ptr1236 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1234, i32 0, i32 1, i32 1
  %_index1237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1236
  %_result1238 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index1237)
  store { i64, [0 x i64] }* %_result1238, { i64, [0 x i64] }** %_arr1239
  %_arr1240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr1239
  %_index_ptr1242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1240, i32 0, i32 1, i32 1
  %_index1243 = load i64, i64* %_index_ptr1242
  ret i64 %_index1243
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
