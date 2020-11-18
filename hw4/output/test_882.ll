; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc799, { i64, [0 x i8*] }* %_argv797) {
  %_argc800 = alloca i64
  %_argv798 = alloca { i64, [0 x i8*] }*
  %_a1812 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2824 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3836 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4848 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5854 = alloca { i64, [0 x i64] }*
  store i64 %_argc799, i64* %_argc800
  store { i64, [0 x i8*] }* %_argv797, { i64, [0 x i8*] }** %_argv798
  %_raw_array801 = call i64* @oat_alloc_array(i64 3)
  %_array802 = bitcast i64* %_raw_array801 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array803 = call i64* @oat_alloc_array(i64 1)
  %_array804 = bitcast i64* %_raw_array803 to { i64, [0 x i64] }*
  %_ind805 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array802, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array804, { i64, [0 x i64] }** %_ind805
  %_raw_array806 = call i64* @oat_alloc_array(i64 1)
  %_array807 = bitcast i64* %_raw_array806 to { i64, [0 x i64] }*
  %_ind808 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array802, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array807, { i64, [0 x i64] }** %_ind808
  %_raw_array809 = call i64* @oat_alloc_array(i64 1)
  %_array810 = bitcast i64* %_raw_array809 to { i64, [0 x i64] }*
  %_ind811 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array802, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array810, { i64, [0 x i64] }** %_ind811
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array802, { i64, [0 x { i64, [0 x i64] }*] }** %_a1812
  %_raw_array813 = call i64* @oat_alloc_array(i64 3)
  %_array814 = bitcast i64* %_raw_array813 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array815 = call i64* @oat_alloc_array(i64 1)
  %_array816 = bitcast i64* %_raw_array815 to { i64, [0 x i64] }*
  %_ind817 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array814, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array816, { i64, [0 x i64] }** %_ind817
  %_raw_array818 = call i64* @oat_alloc_array(i64 1)
  %_array819 = bitcast i64* %_raw_array818 to { i64, [0 x i64] }*
  %_ind820 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array814, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array819, { i64, [0 x i64] }** %_ind820
  %_raw_array821 = call i64* @oat_alloc_array(i64 1)
  %_array822 = bitcast i64* %_raw_array821 to { i64, [0 x i64] }*
  %_ind823 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array814, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array822, { i64, [0 x i64] }** %_ind823
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array814, { i64, [0 x { i64, [0 x i64] }*] }** %_a2824
  %_raw_array825 = call i64* @oat_alloc_array(i64 3)
  %_array826 = bitcast i64* %_raw_array825 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array827 = call i64* @oat_alloc_array(i64 1)
  %_array828 = bitcast i64* %_raw_array827 to { i64, [0 x i64] }*
  %_ind829 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array826, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array828, { i64, [0 x i64] }** %_ind829
  %_raw_array830 = call i64* @oat_alloc_array(i64 1)
  %_array831 = bitcast i64* %_raw_array830 to { i64, [0 x i64] }*
  %_ind832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array826, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array831, { i64, [0 x i64] }** %_ind832
  %_raw_array833 = call i64* @oat_alloc_array(i64 1)
  %_array834 = bitcast i64* %_raw_array833 to { i64, [0 x i64] }*
  %_ind835 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array826, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array834, { i64, [0 x i64] }** %_ind835
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array826, { i64, [0 x { i64, [0 x i64] }*] }** %_a3836
  %_raw_array837 = call i64* @oat_alloc_array(i64 3)
  %_array838 = bitcast i64* %_raw_array837 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array839 = call i64* @oat_alloc_array(i64 1)
  %_array840 = bitcast i64* %_raw_array839 to { i64, [0 x i64] }*
  %_ind841 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array838, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array840, { i64, [0 x i64] }** %_ind841
  %_raw_array842 = call i64* @oat_alloc_array(i64 1)
  %_array843 = bitcast i64* %_raw_array842 to { i64, [0 x i64] }*
  %_ind844 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array838, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array843, { i64, [0 x i64] }** %_ind844
  %_raw_array845 = call i64* @oat_alloc_array(i64 1)
  %_array846 = bitcast i64* %_raw_array845 to { i64, [0 x i64] }*
  %_ind847 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array838, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array846, { i64, [0 x i64] }** %_ind847
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array838, { i64, [0 x { i64, [0 x i64] }*] }** %_a4848
  %_raw_array849 = call i64* @oat_alloc_array(i64 3)
  %_array850 = bitcast i64* %_raw_array849 to { i64, [0 x i64] }*
  %_ind851 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array850, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind851
  %_ind852 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array850, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind852
  %_ind853 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array850, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind853
  store { i64, [0 x i64] }* %_array850, { i64, [0 x i64] }** %_a5854
  %_a2855 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2824
  %_index_ptr856 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2855, i32 0, i32 1, i32 0
  %_a5857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5854
  store { i64, [0 x i64] }* %_a5857, { i64, [0 x i64] }** %_index_ptr856
  %_a2858 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2824
  %_index_ptr859 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2858, i32 0, i32 1, i32 0
  %_index860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr859
  %_index_ptr861 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index860, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr861
  %_a2862 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2824
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2862, { i64, [0 x { i64, [0 x i64] }*] }** %_a1812
  %_a1863 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1812
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1863, { i64, [0 x { i64, [0 x i64] }*] }** %_a3836
  %_a4864 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4848
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4864, { i64, [0 x { i64, [0 x i64] }*] }** %_a1812
  %_a3865 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3836
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3865, { i64, [0 x { i64, [0 x i64] }*] }** %_a2824
  %_a2866 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2824
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2866, { i64, [0 x { i64, [0 x i64] }*] }** %_a4848
  %_a4867 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4848
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4867, { i64, [0 x { i64, [0 x i64] }*] }** %_a3836
  %_a3868 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3836
  %_index_ptr869 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3868, i32 0, i32 1, i32 0
  %_index870 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr869
  %_index_ptr871 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index870, i32 0, i32 1, i32 0
  %_index872 = load i64, i64* %_index_ptr871
  ret i64 %_index872
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
