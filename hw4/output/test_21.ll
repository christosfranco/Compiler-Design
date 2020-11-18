; generated from: oatprograms/run21.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc296, { i64, [0 x i8*] }* %_argv294) {
  %_argc297 = alloca i64
  %_argv295 = alloca { i64, [0 x i8*] }*
  %_i302 = alloca { i64, [0 x i64] }*
  store i64 %_argc296, i64* %_argc297
  store { i64, [0 x i8*] }* %_argv294, { i64, [0 x i8*] }** %_argv295
  %_raw_array298 = call i64* @oat_alloc_array(i64 2)
  %_array299 = bitcast i64* %_raw_array298 to { i64, [0 x i64] }*
  %_ind300 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array299, i32 0, i32 1, i32 0
  store i64 99, i64* %_ind300
  %_ind301 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array299, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind301
  store { i64, [0 x i64] }* %_array299, { i64, [0 x i64] }** %_i302
  %_i303 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_i302
  %_index_ptr305 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_i303, i32 0, i32 1, i32 0
  %_index306 = load i64, i64* %_index_ptr305
  ret i64 %_index306
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
