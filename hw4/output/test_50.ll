; generated from: oatprograms/run20.oat
target triple = "x86_64-unknown-linux"
define i64 @f() {
  ret i64 19
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1236 = alloca { i64, [0 x i64] }*
  %_alloca1229 = alloca i64
  store i64 %argc, i64* %_alloca1229
  %_alloca1230 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1230
  %_raw_array1231 = call i64* @oat_alloc_array(i64 3)
  %_array1232 = bitcast i64* %_raw_array1231 to { i64, [0 x i64] }*
  %_ind1233 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1233
  %_ind1234 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1234
  %_ind1235 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1232, i32 0, i32 1, i32 2
  store i64 19, i64* %_ind1235
  store { i64, [0 x i64] }* %_array1232, { i64, [0 x i64] }** %_a1236
  %_a1237 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1236
  %_index_ptr1239 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1237, i32 0, i32 1, i32 2
  %_index1240 = load i64, i64* %_index_ptr1239
  ret i64 %_index1240
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
