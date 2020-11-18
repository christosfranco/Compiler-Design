; generated from: oatprograms/run22.oat
target triple = "x86_64-unknown-linux"
@_str_arr1246 = global [4 x i8] c"abc\00"
@_str_arr1249 = global [4 x i8] c"def\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_strs1251 = alloca { i64, [0 x i8*] }*
  %_alloca1241 = alloca i64
  store i64 %argc, i64* %_alloca1241
  %_alloca1242 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1242
  %_raw_array1243 = call i64* @oat_alloc_array(i64 2)
  %_array1244 = bitcast i64* %_raw_array1243 to { i64, [0 x i8*] }*
  %_str1245 = getelementptr [4 x i8], [4 x i8]* @_str_arr1246, i32 0, i32 0
  %_ind1247 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1244, i32 0, i32 1, i32 0
  store i8* %_str1245, i8** %_ind1247
  %_str1248 = getelementptr [4 x i8], [4 x i8]* @_str_arr1249, i32 0, i32 0
  %_ind1250 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_array1244, i32 0, i32 1, i32 1
  store i8* %_str1248, i8** %_ind1250
  store { i64, [0 x i8*] }* %_array1244, { i64, [0 x i8*] }** %_strs1251
  %_strs1252 = load { i64, [0 x i8*] }*, { i64, [0 x i8*] }** %_strs1251
  %_index_ptr1254 = getelementptr { i64, [0 x i8*] }, { i64, [0 x i8*] }* %_strs1252, i32 0, i32 1, i32 0
  %_index1255 = load i8*, i8** %_index_ptr1254
  call void @print_string(i8* %_index1255)
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
