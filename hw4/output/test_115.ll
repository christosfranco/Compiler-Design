; generated from: oatprograms/run10.oat
target triple = "x86_64-unknown-linux"
define { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %arr) {
  %_alloca844 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %arr, { i64, [0 x i64] }** %_alloca844
  %_arr845 = load { i64, [0 x i64] }, { i64, [0 x i64] }* %_alloca844
  ret { i64, [0 x i64] } %_arr845
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_garr833 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr839 = alloca { i64, [0 x i64] }*
  %_alloca817 = alloca i64
  store i64 %argc, i64* %_alloca817
  %_alloca818 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca818
  %_raw_array819 = call i64* @oat_alloc_array(i64 2)
  %_array820 = bitcast i64* %_raw_array819 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array821 = call i64* @oat_alloc_array(i64 3)
  %_array822 = bitcast i64* %_raw_array821 to { i64, [0 x i64] }*
  %_ind823 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array822, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind823
  %_ind824 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array822, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind824
  %_ind825 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array822, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind825
  %_ind826 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array820, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array822, { i64, [0 x i64] }** %_ind826
  %_raw_array827 = call i64* @oat_alloc_array(i64 3)
  %_array828 = bitcast i64* %_raw_array827 to { i64, [0 x i64] }*
  %_ind829 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array828, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind829
  %_ind830 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array828, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind830
  %_ind831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array828, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind831
  %_ind832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array820, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array828, { i64, [0 x i64] }** %_ind832
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array820, { i64, [0 x { i64, [0 x i64] }*] }** %_garr833
  %_garr834 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr833
  %_index_ptr836 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr834, i32 0, i32 1, i32 1
  %_index837 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr836
  %_result838 = call { i64, [0 x i64] }* @f({ i64, [0 x i64] }* %_index837)
  store { i64, [0 x i64] }* %_result838, { i64, [0 x i64] }** %_arr839
  %_arr840 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr839
  %_index_ptr842 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr840, i32 0, i32 1, i32 1
  %_index843 = load i64, i64* %_index_ptr842
  ret i64 %_index843
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
