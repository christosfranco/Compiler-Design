; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2292, { i64, [0 x i8*] }* %_argv2290) {
  %_argc2293 = alloca i64
  %_argv2291 = alloca { i64, [0 x i8*] }*
  %_str2300 = alloca i8*
  store i64 %_argc2292, i64* %_argc2293
  store { i64, [0 x i8*] }* %_argv2290, { i64, [0 x i8*] }** %_argv2291
  %_raw_array2294 = call i64* @oat_alloc_array(i64 3)
  %_array2295 = bitcast i64* %_raw_array2294 to { i64, [0 x i64] }*
  %_ind2296 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2295, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind2296
  %_ind2297 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2295, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind2297
  %_ind2298 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2295, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind2298
  %_result2299 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2295)
  store i8* %_result2299, i8** %_str2300
  %_str2301 = load i8*, i8** %_str2300
  call void @print_string(i8* %_str2301)
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
