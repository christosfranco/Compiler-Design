; generated from: oatprograms/run18.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1211 = alloca { i64, [0 x i64] }*
  %_alloca1204 = alloca i64
  store i64 %argc, i64* %_alloca1204
  %_alloca1205 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1205
  %_raw_array1206 = call i64* @oat_alloc_array(i64 3)
  %_array1207 = bitcast i64* %_raw_array1206 to { i64, [0 x i64] }*
  %_ind1208 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1207, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1208
  %_ind1209 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1207, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1209
  %_ind1210 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1207, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1210
  store { i64, [0 x i64] }* %_array1207, { i64, [0 x i64] }** %_a1211
  %_a1212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1211
  %_index_ptr1214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1212, i32 0, i32 1, i32 2
  %_index1215 = load i64, i64* %_index_ptr1214
  ret i64 %_index1215
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
