; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc2498, { i64, [0 x i8*] }* %_argv2496) {
  %_argc2499 = alloca i64
  %_argv2497 = alloca { i64, [0 x i8*] }*
  %_a2512 = alloca { i64, [0 x i64] }*
  store i64 %_argc2498, i64* %_argc2499
  store { i64, [0 x i8*] }* %_argv2496, { i64, [0 x i8*] }** %_argv2497
  %_raw_array2500 = call i64* @oat_alloc_array(i64 10)
  %_array2501 = bitcast i64* %_raw_array2500 to { i64, [0 x i64] }*
  %_ind2502 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind2502
  %_ind2503 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind2503
  %_ind2504 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind2504
  %_ind2505 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind2505
  %_ind2506 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind2506
  %_ind2507 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind2507
  %_ind2508 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind2508
  %_ind2509 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind2509
  %_ind2510 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind2510
  %_ind2511 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2501, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind2511
  store { i64, [0 x i64] }* %_array2501, { i64, [0 x i64] }** %_a2512
  %_a2513 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2512
  %_result2514 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2513)
  call void @print_string(i8* %_result2514)
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
