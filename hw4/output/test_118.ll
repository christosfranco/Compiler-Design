; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i1218 = alloca i64
  %_a1224 = alloca { i64, [0 x i64] }*
  %_alloca1216 = alloca i64
  store i64 %argc, i64* %_alloca1216
  %_alloca1217 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1217
  store i64 999, i64* %_i1218
  %_raw_array1219 = call i64* @oat_alloc_array(i64 3)
  %_array1220 = bitcast i64* %_raw_array1219 to { i64, [0 x i64] }*
  %_ind1221 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1221
  %_ind1222 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1222
  %_ind1223 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1220, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1223
  store { i64, [0 x i64] }* %_array1220, { i64, [0 x i64] }** %_a1224
  %_a1225 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1224
  %_index_ptr1227 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1225, i32 0, i32 1, i32 2
  %_index1228 = load i64, i64* %_index_ptr1227
  ret i64 %_index1228
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
