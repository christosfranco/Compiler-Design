; generated from: oatprograms/run33.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc554, { i64, [0 x i8*] }* %_argv552) {
  %_argc555 = alloca i64
  %_argv553 = alloca { i64, [0 x i8*] }*
  %_b560 = alloca { i64, [0 x i1] }*
  %_i561 = alloca i64
  store i64 %_argc554, i64* %_argc555
  store { i64, [0 x i8*] }* %_argv552, { i64, [0 x i8*] }** %_argv553
  %_raw_array556 = call i64* @oat_alloc_array(i64 2)
  %_array557 = bitcast i64* %_raw_array556 to { i64, [0 x i1] }*
  %_ind558 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array557, i32 0, i32 1, i32 0
  store i1 1, i1* %_ind558
  %_ind559 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_array557, i32 0, i32 1, i32 1
  store i1 0, i1* %_ind559
  store { i64, [0 x i1] }* %_array557, { i64, [0 x i1] }** %_b560
  store i64 0, i64* %_i561
  %_b562 = load { i64, [0 x i1] }*, { i64, [0 x i1] }** %_b560
  %_index_ptr564 = getelementptr { i64, [0 x i1] }, { i64, [0 x i1] }* %_b562, i32 0, i32 1, i32 0
  %_index565 = load i1, i1* %_index_ptr564
  br i1 %_index565, label %_then568, label %_else567
_then568:
  store i64 1, i64* %_i561
  br label %_merge566
_else567:
  br label %_merge566
_merge566:
  %_i569 = load i64, i64* %_i561
  ret i64 %_i569
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
