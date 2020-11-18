; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* @_global_arr220
@_global_arr220 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x210 = alloca { i64, [0 x i64] }*
  %_alloca206 = alloca i64
  store i64 %argc, i64* %_alloca206
  %_alloca207 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca207
  %_raw_array208 = call i64* @oat_alloc_array(i64 3)
  %_array209 = bitcast i64* %_raw_array208 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array209, { i64, [0 x i64] }** %_x210
  %_x211 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x210
  store { i64, [0 x i64] }* %_x211, { i64, [0 x i64] }** @arr
  %_x212 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x210
  %_index_ptr214 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x212, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr214
  %_arr215 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr217 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr215, i32 0, i32 1, i32 2
  %_index218 = load i64, i64* %_index_ptr217
  ret i64 %_index218
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
