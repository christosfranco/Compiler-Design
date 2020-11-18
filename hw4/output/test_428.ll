; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* @_global_arr253
@_global_arr253 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %_argc239, { i64, [0 x i8*] }* %_argv237) {
  %_argc240 = alloca i64
  %_argv238 = alloca { i64, [0 x i8*] }*
  %_x243 = alloca { i64, [0 x i64] }*
  store i64 %_argc239, i64* %_argc240
  store { i64, [0 x i8*] }* %_argv237, { i64, [0 x i8*] }** %_argv238
  %_raw_array241 = call i64* @oat_alloc_array(i64 3)
  %_array242 = bitcast i64* %_raw_array241 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array242, { i64, [0 x i64] }** %_x243
  %_x244 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x243
  store { i64, [0 x i64] }* %_x244, { i64, [0 x i64] }** @arr
  %_x245 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x243
  %_index_ptr247 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x245, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr247
  %_arr248 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr250 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr248, i32 0, i32 1, i32 2
  %_index251 = load i64, i64* %_index_ptr250
  ret i64 %_index251
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
