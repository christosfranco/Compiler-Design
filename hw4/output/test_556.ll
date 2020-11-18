; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc699, { i64, [0 x i8*] }* %_argv697) {
  %_argc700 = alloca i64
  %_argv698 = alloca { i64, [0 x i8*] }*
  %_a713 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc699, i64* %_argc700
  store { i64, [0 x i8*] }* %_argv697, { i64, [0 x i8*] }** %_argv698
  %_raw_array701 = call i64* @oat_alloc_array(i64 2)
  %_array702 = bitcast i64* %_raw_array701 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array703 = call i64* @oat_alloc_array(i64 2)
  %_array704 = bitcast i64* %_raw_array703 to { i64, [0 x i64] }*
  %_ind705 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array704, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind705
  %_ind706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array704, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind706
  %_ind707 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array702, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array704, { i64, [0 x i64] }** %_ind707
  %_raw_array708 = call i64* @oat_alloc_array(i64 2)
  %_array709 = bitcast i64* %_raw_array708 to { i64, [0 x i64] }*
  %_ind710 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array709, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind710
  %_ind711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array709, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind711
  %_ind712 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array702, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array709, { i64, [0 x i64] }** %_ind712
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array702, { i64, [0 x { i64, [0 x i64] }*] }** %_a713
  %_a714 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a713
  %_index_ptr716 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a714, i32 0, i32 1, i32 0
  %_index717 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr716
  %_index_ptr719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index717, i32 0, i32 1, i32 1
  %_index720 = load i64, i64* %_index_ptr719
  ret i64 %_index720
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
