; generated from: oatprograms/globals7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* @_global_arr247
@_global_arr247 = global { i64, [0 x i64] } { i64 0, [0 x i64] [  ] }

define i64 @program(i64 %_argc235, { i64, [0 x i8*] }* %_argv233) {
  %_argc236 = alloca i64
  %_argv234 = alloca { i64, [0 x i8*] }*
  %_x239 = alloca { i64, [0 x i64] }*
  store i64 %_argc235, i64* %_argc236
  store { i64, [0 x i8*] }* %_argv233, { i64, [0 x i8*] }** %_argv234
  %_raw_array237 = call i64* @oat_alloc_array(i64 3)
  %_array238 = bitcast i64* %_raw_array237 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array238, { i64, [0 x i64] }** %_x239
  %_x240 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x239
  store { i64, [0 x i64] }* %_x240, { i64, [0 x i64] }** @arr
  %_x241 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x239
  %_index_ptr242 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x241, i32 0, i32 1, i32 2
  store i64 3, i64* %_index_ptr242
  %_arr243 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr244 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr243, i32 0, i32 1, i32 2
  %_index245 = load i64, i64* %_index_ptr244
  ret i64 %_index245
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
