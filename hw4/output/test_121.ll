; generated from: oatprograms/run23.oat
target triple = "x86_64-unknown-linux"
@_str_arr1264 = global [4 x i8] c"abc\00"
@_str_arr1267 = global [4 x i8] c"def\00"
@_str_arr1273 = global [4 x i8] c"789\00"
@_str_arr1276 = global [4 x i8] c"123\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs1279 = alloca { i64, [0 x { i64, [0 x i8*] }*] }*
  %_alloca1257 = alloca i64
  store i64 %argc, i64* %_alloca1257
  %_alloca1258 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1258
  %_raw_array1259 = call i64* @oat_alloc_array(i64 2)
  %_array1260 = bitcast i64* %_raw_array1259 to { i64, [0 x { i64, [0 x i8*] }*] }*
  %_raw_array1261 = call i64* @oat_alloc_array(i64 2)
  %_array1262 = bitcast i64* %_raw_array1261 to { i64, [0 x i8*] }*
  %_str1263 = getelementptr [4 x i8], [4 x i8]* @_str_arr1264, i32 0, i32 0
  %_ind1265 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1262, i32 0, i32 1, i32 0
  store i8* %_str1263, i8** %_ind1265
  %_str1266 = getelementptr [4 x i8], [4 x i8]* @_str_arr1267, i32 0, i32 0
  %_ind1268 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1262, i32 0, i32 1, i32 1
  store i8* %_str1266, i8** %_ind1268
  %_ind1269 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1260, i32 0, i32 1, i32 0
  store { i64, [0 x i8*] }* %_array1262, { i64, [0 x i8*] }** %_ind1269
  %_raw_array1270 = call i64* @oat_alloc_array(i64 2)
  %_array1271 = bitcast i64* %_raw_array1270 to { i64, [0 x i8*] }*
  %_str1272 = getelementptr [4 x i8], [4 x i8]* @_str_arr1273, i32 0, i32 0
  %_ind1274 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1271, i32 0, i32 1, i32 0
  store i8* %_str1272, i8** %_ind1274
  %_str1275 = getelementptr [4 x i8], [4 x i8]* @_str_arr1276, i32 0, i32 0
  %_ind1277 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1271, i32 0, i32 1, i32 1
  store i8* %_str1275, i8** %_ind1277
  %_ind1278 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_array1260, i32 0, i32 1, i32 1
  store { i64, [0 x i8*] }* %_array1271, { i64, [0 x i8*] }** %_ind1278
  store { i64, [0 x { i64, [0 x i8*] }*] }* %_array1260, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1279
  %_strs1280 = load { i64, [0 x { i64, [0 x i8*] }*] }*, { i64, [0 x { i64, [0 x i8*] }*] }** %_strs1279
  %_index_ptr1282 = getelementptr { i64, [0 x { i64, [0 x i8*] }*] }, { i64, [0 x { i64, [0 x i8*] }*] }* %_strs1280, i32 0, i32 1, i32 1
  %_index1283 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_index_ptr1282
  %_index_ptr1285 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_index1283, i32 0, i32 1, i32 1
  %_index1286 = load i8*, i8** %_index_ptr1285
  call void @print_string(i8* %_index1286)
  ret i64 0
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
