; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca680 = alloca i64
  store i64 %argc, i64* %_alloca680
  %_alloca681 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca681
  %_raw_array682 = call i64* @oat_alloc_array(i64 2)
  %_array683 = bitcast i64* %_raw_array682 to { i64, [0 x i64] }*
  %_ind684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind684
  %_ind685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array683, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind685
  store { i64, [0 x i64] }* %_array683, { i64, [0 x i64] }** @arr
  %_arr686 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr688 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr686, i32 0, i32 1, i32 1
  %_index689 = load i64, i64* %_index_ptr688
  ret i64 %_index689
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
