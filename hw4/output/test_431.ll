; generated from: oatprograms/path3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [4 x i64] }* @_global_arr282
@_global_arr282 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant281 = global i64 1
@_constant280 = global i64 2
@_constant279 = global i64 3
@_constant278 = global i64 4

define i64 @program(i64 %_argc271, { i64, [0 x i8*] }* %_args269) {
  %_argc272 = alloca i64
  %_args270 = alloca { i64, [0 x i8*] }*
  store i64 %_argc271, i64* %_argc272
  store { i64, [0 x i8*] }* %_args269, { i64, [0 x i8*] }** %_args270
  %_arr273 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr
  %_index_ptr275 = getelementptr { i64, [4 x i64] }, { i64, [4 x i64] }* %_arr273, i32 0, i32 1, i32 2
  %_index276 = load i64, i64* %_index_ptr275
  ret i64 %_index276
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
