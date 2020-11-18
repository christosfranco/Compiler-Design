; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca736 = alloca i64
  store i64 %argc, i64* %_alloca736
  %_alloca737 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca737
  %_raw_array738 = call i64* @oat_alloc_array(i64 3)
  %_array739 = bitcast i64* %_raw_array738 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array740 = call i64* @oat_alloc_array(i64 2)
  %_array741 = bitcast i64* %_raw_array740 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array742 = call i64* @oat_alloc_array(i64 2)
  %_array743 = bitcast i64* %_raw_array742 to { i64, [0 x i64] }*
  %_ind744 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array743, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind744
  %_ind745 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array743, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind745
  %_ind746 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array741, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array743, { i64, [0 x i64] }** %_ind746
  %_raw_array747 = call i64* @oat_alloc_array(i64 2)
  %_array748 = bitcast i64* %_raw_array747 to { i64, [0 x i64] }*
  %_ind749 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array748, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind749
  %_ind750 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array748, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind750
  %_ind751 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array741, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array748, { i64, [0 x i64] }** %_ind751
  %_ind752 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array739, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array741, { i64, [0 x { i64, [0 x i64] }*] }** %_ind752
  %_raw_array753 = call i64* @oat_alloc_array(i64 1)
  %_array754 = bitcast i64* %_raw_array753 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array755 = call i64* @oat_alloc_array(i64 1)
  %_array756 = bitcast i64* %_raw_array755 to { i64, [0 x i64] }*
  %_ind757 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array756, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind757
  %_ind758 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array754, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array756, { i64, [0 x i64] }** %_ind758
  %_ind759 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array739, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array754, { i64, [0 x { i64, [0 x i64] }*] }** %_ind759
  %_raw_array760 = call i64* @oat_alloc_array(i64 2)
  %_array761 = bitcast i64* %_raw_array760 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array762 = call i64* @oat_alloc_array(i64 2)
  %_array763 = bitcast i64* %_raw_array762 to { i64, [0 x i64] }*
  %_ind764 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array763, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind764
  %_ind765 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array763, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind765
  %_ind766 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array761, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array763, { i64, [0 x i64] }** %_ind766
  %_raw_array767 = call i64* @oat_alloc_array(i64 2)
  %_array768 = bitcast i64* %_raw_array767 to { i64, [0 x i64] }*
  %_ind769 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array768, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind769
  %_ind770 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array768, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind770
  %_ind771 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array761, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array768, { i64, [0 x i64] }** %_ind771
  %_ind772 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array739, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array761, { i64, [0 x { i64, [0 x i64] }*] }** %_ind772
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array739, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr773 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr775 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr773, i32 0, i32 1, i32 2
  %_index776 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr775
  %_index_ptr778 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index776, i32 0, i32 1, i32 0
  %_index779 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr778
  %_index_ptr781 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index779, i32 0, i32 1, i32 1
  %_index782 = load i64, i64* %_index_ptr781
  ret i64 %_index782
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
