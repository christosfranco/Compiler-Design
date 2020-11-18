; generated from: oatprograms/path3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [4 x i64] }* @_global_arr283
@_global_arr283 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant282 = global i64 1
@_constant281 = global i64 2
@_constant280 = global i64 3
@_constant279 = global i64 4

define i64 @program(i64 %_argc272, { i64, [0 x i8*] }* %_args270) {
  %_argc273 = alloca i64
  %_args271 = alloca { i64, [0 x i8*] }*
  store i64 %_argc272, i64* %_argc273
  store { i64, [0 x i8*] }* %_args270, { i64, [0 x i8*] }** %_args271
  %_arr274 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr
  %_index_ptr276 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_arr274, i32 0, i32 1, i32 2
  %_index277 = load i64, i64* %_index_ptr276
  ret i64 %_index277
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
