; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* @_global_arr254
@_global_arr254 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %_argc240, { i64, [0 x i8*] }* %_argv238) {
  %_argc241 = alloca i64
  %_argv239 = alloca { i64, [0 x i8*] }*
  %_x244 = alloca { i64, [0 x i64] }*
  store i64 %_argc240, i64* %_argc241
  store { i64, [0 x i8*] }* %_argv238, { i64, [0 x i8*] }** %_argv239
  %_raw_array242 = call i64* @oat_alloc_array(i64 3)
  %_array243 = bitcast i64* %_raw_array242 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array243, { i64, [0 x i64] }** %_x244
  %_x245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x244
  store { i64, [0 x i64] }* %_x245, { i64, [0 x i64] }** @arr
  %_x246 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x244
  %_index_ptr248 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x246, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr248
  %_arr249 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr251 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr249, i32 0, i32 1, i32 2
  %_index252 = load i64, i64* %_index_ptr251
  ret i64 %_index252
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
