; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2298, { i64, [0 x i8*] }* %_argv2296) {
  %_argc2299 = alloca i64
  %_argv2297 = alloca { i64, [0 x i8*] }*
  %_str2306 = alloca i8*
  store i64 %_argc2298, i64* %_argc2299
  store { i64, [0 x i8*] }* %_argv2296, { i64, [0 x i8*] }** %_argv2297
  %_raw_array2300 = call i64* @oat_alloc_array(i64 3)
  %_array2301 = bitcast i64* %_raw_array2300 to { i64, [0 x i64] }*
  %_ind2302 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2301, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind2302
  %_ind2303 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2301, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind2303
  %_ind2304 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2301, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind2304
  %_result2305 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2301)
  store i8* %_result2305, i8** %_str2306
  %_str2307 = load i8*, i8** %_str2306
  call void @print_string(i8* %_str2307)
  ret i64 0
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
