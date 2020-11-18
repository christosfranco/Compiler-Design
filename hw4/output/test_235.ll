; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc700, { i64, [0 x i8*] }* %_argv698) {
  %_argc701 = alloca i64
  %_argv699 = alloca { i64, [0 x i8*] }*
  %_a714 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc700, i64* %_argc701
  store { i64, [0 x i8*] }* %_argv698, { i64, [0 x i8*] }** %_argv699
  %_raw_array702 = call i64* @oat_alloc_array(i64 2)
  %_array703 = bitcast i64* %_raw_array702 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array704 = call i64* @oat_alloc_array(i64 2)
  %_array705 = bitcast i64* %_raw_array704 to { i64, [0 x i64] }*
  %_ind706 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind706
  %_ind707 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array705, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind707
  %_ind708 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array705, { i64, [0 x i64] }** %_ind708
  %_raw_array709 = call i64* @oat_alloc_array(i64 2)
  %_array710 = bitcast i64* %_raw_array709 to { i64, [0 x i64] }*
  %_ind711 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array710, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind711
  %_ind712 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array710, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind712
  %_ind713 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array703, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array710, { i64, [0 x i64] }** %_ind713
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array703, { i64, [0 x { i64, [0 x i64] }*] }** %_a714
  %_a715 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a714
  %_index_ptr717 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a715, i32 0, i32 1, i32 0
  %_index718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr717
  %_index_ptr720 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index718, i32 0, i32 1, i32 1
  %_index721 = load i64, i64* %_index_ptr720
  ret i64 %_index721
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
