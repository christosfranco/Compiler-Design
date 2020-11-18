; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr809 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_alloca795 = alloca i64
  store i64 %argc, i64* %_alloca795
  %_alloca796 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca796
  %_raw_array797 = call i64* @oat_alloc_array(i64 2)
  %_array798 = bitcast i64* %_raw_array797 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array799 = call i64* @oat_alloc_array(i64 2)
  %_array800 = bitcast i64* %_raw_array799 to { i64, [0 x i64] }*
  %_ind801 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array800, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind801
  %_ind802 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array800, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind802
  %_ind803 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array800, { i64, [0 x i64] }** %_ind803
  %_raw_array804 = call i64* @oat_alloc_array(i64 2)
  %_array805 = bitcast i64* %_raw_array804 to { i64, [0 x i64] }*
  %_ind806 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array805, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind806
  %_ind807 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array805, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind807
  %_ind808 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array798, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array805, { i64, [0 x i64] }** %_ind808
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array798, { i64, [0 x { i64, [0 x i64] }*] }** %_arr809
  %_arr810 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr809
  %_index_ptr812 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr810, i32 0, i32 1, i32 1
  %_index813 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr812
  %_index_ptr815 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index813, i32 0, i32 1, i32 1
  %_index816 = load i64, i64* %_index_ptr815
  ret i64 %_index816
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
