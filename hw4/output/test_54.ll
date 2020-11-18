; generated from: oatprograms/run25.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1300 = alloca { i64, [0 x i64] }*
  %_str1303 = alloca i8*
  %_alloca1293 = alloca i64
  store i64 %argc, i64* %_alloca1293
  %_alloca1294 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1294
  %_raw_array1295 = call i64* @oat_alloc_array(i64 3)
  %_array1296 = bitcast i64* %_raw_array1295 to { i64, [0 x i64] }*
  %_ind1297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1296, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1297
  %_ind1298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1296, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1298
  %_ind1299 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1296, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1299
  store { i64, [0 x i64] }* %_array1296, { i64, [0 x i64] }** %_a1300
  %_a1301 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1300
  %_result1302 = call i8* @string_of_array({ i64, [0 x i64] }* %_a1301)
  store i8* %_result1302, i8** %_str1303
  %_str1304 = load i8*, i8** %_str1303
  call void @print_string(i8* %_str1304)
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
