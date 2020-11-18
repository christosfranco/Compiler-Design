; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr727 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_alloca713 = alloca i64
  store i64 %argc, i64* %_alloca713
  %_alloca714 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca714
  %_raw_array715 = call i64* @oat_alloc_array(i64 2)
  %_array716 = bitcast i64* %_raw_array715 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array717 = call i64* @oat_alloc_array(i64 2)
  %_array718 = bitcast i64* %_raw_array717 to { i64, [0 x i64] }*
  %_ind719 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array718, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind719
  %_ind720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array718, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind720
  %_ind721 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array716, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array718, { i64, [0 x i64] }** %_ind721
  %_raw_array722 = call i64* @oat_alloc_array(i64 2)
  %_array723 = bitcast i64* %_raw_array722 to { i64, [0 x i64] }*
  %_ind724 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array723, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind724
  %_ind725 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array723, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind725
  %_ind726 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array716, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array723, { i64, [0 x i64] }** %_ind726
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array716, { i64, [0 x { i64, [0 x i64] }*] }** %_arr727
  %_arr728 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr727
  %_index_ptr730 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr728, i32 0, i32 1, i32 0
  %_index731 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr730
  %_index_ptr733 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index731, i32 0, i32 1, i32 0
  %_index734 = load i64, i64* %_index_ptr733
  ret i64 %_index734
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
