; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2488, { i64, [0 x i8*] }* %_argv2486) {
  %_argc2489 = alloca i64
  %_argv2487 = alloca { i64, [0 x i8*] }*
  %_str2496 = alloca i8*
  store i64 %_argc2488, i64* %_argc2489
  store { i64, [0 x i8*] }* %_argv2486, { i64, [0 x i8*] }** %_argv2487
  %_raw_array2490 = call i64* @oat_alloc_array(i64 3)
  %_array2491 = bitcast i64* %_raw_array2490 to { i64, [0 x i64] }*
  %_ind2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2491, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind2492
  %_ind2493 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2491, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind2493
  %_ind2494 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2491, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind2494
  %_result2495 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2491)
  store i8* %_result2495, i8** %_str2496
  %_str2497 = load i8*, i8** %_str2496
  call void @print_string(i8* %_str2497)
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
