; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2486, { i64, [0 x i8*] }* %_argv2484) {
  %_argc2487 = alloca i64
  %_argv2485 = alloca { i64, [0 x i8*] }*
  %_str2494 = alloca i8*
  store i64 %_argc2486, i64* %_argc2487
  store { i64, [0 x i8*] }* %_argv2484, { i64, [0 x i8*] }** %_argv2485
  %_raw_array2488 = call i64* @oat_alloc_array(i64 3)
  %_array2489 = bitcast i64* %_raw_array2488 to { i64, [0 x i64] }*
  %_ind2490 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind2490
  %_ind2491 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind2491
  %_ind2492 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2489, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind2492
  %_result2493 = call i8* @string_of_array({ i64, [0 x i64] }* %_array2489)
  store i8* %_result2493, i8** %_str2494
  %_str2495 = load i8*, i8** %_str2494
  call void @print_string(i8* %_str2495)
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
