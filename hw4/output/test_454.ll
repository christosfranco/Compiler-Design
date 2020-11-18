; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc826, { i64, [0 x i8*] }* %_argv824) {
  %_argc827 = alloca i64
  %_argv825 = alloca { i64, [0 x i8*] }*
  %_a1839 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2851 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3863 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4875 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5881 = alloca { i64, [0 x i64] }*
  store i64 %_argc826, i64* %_argc827
  store { i64, [0 x i8*] }* %_argv824, { i64, [0 x i8*] }** %_argv825
  %_raw_array828 = call i64* @oat_alloc_array(i64 3)
  %_array829 = bitcast i64* %_raw_array828 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array830 = call i64* @oat_alloc_array(i64 1)
  %_array831 = bitcast i64* %_raw_array830 to { i64, [0 x i64] }*
  %_ind832 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array829, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array831, { i64, [0 x i64] }** %_ind832
  %_raw_array833 = call i64* @oat_alloc_array(i64 1)
  %_array834 = bitcast i64* %_raw_array833 to { i64, [0 x i64] }*
  %_ind835 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array829, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array834, { i64, [0 x i64] }** %_ind835
  %_raw_array836 = call i64* @oat_alloc_array(i64 1)
  %_array837 = bitcast i64* %_raw_array836 to { i64, [0 x i64] }*
  %_ind838 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array829, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array837, { i64, [0 x i64] }** %_ind838
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array829, { i64, [0 x { i64, [0 x i64] }*] }** %_a1839
  %_raw_array840 = call i64* @oat_alloc_array(i64 3)
  %_array841 = bitcast i64* %_raw_array840 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array842 = call i64* @oat_alloc_array(i64 1)
  %_array843 = bitcast i64* %_raw_array842 to { i64, [0 x i64] }*
  %_ind844 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array841, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array843, { i64, [0 x i64] }** %_ind844
  %_raw_array845 = call i64* @oat_alloc_array(i64 1)
  %_array846 = bitcast i64* %_raw_array845 to { i64, [0 x i64] }*
  %_ind847 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array841, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array846, { i64, [0 x i64] }** %_ind847
  %_raw_array848 = call i64* @oat_alloc_array(i64 1)
  %_array849 = bitcast i64* %_raw_array848 to { i64, [0 x i64] }*
  %_ind850 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array841, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array849, { i64, [0 x i64] }** %_ind850
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array841, { i64, [0 x { i64, [0 x i64] }*] }** %_a2851
  %_raw_array852 = call i64* @oat_alloc_array(i64 3)
  %_array853 = bitcast i64* %_raw_array852 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array854 = call i64* @oat_alloc_array(i64 1)
  %_array855 = bitcast i64* %_raw_array854 to { i64, [0 x i64] }*
  %_ind856 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array853, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array855, { i64, [0 x i64] }** %_ind856
  %_raw_array857 = call i64* @oat_alloc_array(i64 1)
  %_array858 = bitcast i64* %_raw_array857 to { i64, [0 x i64] }*
  %_ind859 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array853, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array858, { i64, [0 x i64] }** %_ind859
  %_raw_array860 = call i64* @oat_alloc_array(i64 1)
  %_array861 = bitcast i64* %_raw_array860 to { i64, [0 x i64] }*
  %_ind862 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array853, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array861, { i64, [0 x i64] }** %_ind862
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array853, { i64, [0 x { i64, [0 x i64] }*] }** %_a3863
  %_raw_array864 = call i64* @oat_alloc_array(i64 3)
  %_array865 = bitcast i64* %_raw_array864 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array866 = call i64* @oat_alloc_array(i64 1)
  %_array867 = bitcast i64* %_raw_array866 to { i64, [0 x i64] }*
  %_ind868 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array865, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array867, { i64, [0 x i64] }** %_ind868
  %_raw_array869 = call i64* @oat_alloc_array(i64 1)
  %_array870 = bitcast i64* %_raw_array869 to { i64, [0 x i64] }*
  %_ind871 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array865, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array870, { i64, [0 x i64] }** %_ind871
  %_raw_array872 = call i64* @oat_alloc_array(i64 1)
  %_array873 = bitcast i64* %_raw_array872 to { i64, [0 x i64] }*
  %_ind874 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array865, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array873, { i64, [0 x i64] }** %_ind874
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array865, { i64, [0 x { i64, [0 x i64] }*] }** %_a4875
  %_raw_array876 = call i64* @oat_alloc_array(i64 3)
  %_array877 = bitcast i64* %_raw_array876 to { i64, [0 x i64] }*
  %_ind878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array877, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind878
  %_ind879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array877, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind879
  %_ind880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array877, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind880
  store { i64, [0 x i64] }* %_array877, { i64, [0 x i64] }** %_a5881
  %_a2882 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2851
  %_index_ptr884 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2882, i32 0, i32 1, i32 0
  %_a5885 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5881
  store { i64, [0 x i64] }* %_a5885, { i64, [0 x i64] }** %_index_ptr884
  %_a2886 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2851
  %_index_ptr888 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2886, i32 0, i32 1, i32 0
  %_index889 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr888
  %_index_ptr891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index889, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr891
  %_a2892 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2851
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2892, { i64, [0 x { i64, [0 x i64] }*] }** %_a1839
  %_a1893 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1839
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1893, { i64, [0 x { i64, [0 x i64] }*] }** %_a3863
  %_a4894 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4875
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4894, { i64, [0 x { i64, [0 x i64] }*] }** %_a1839
  %_a3895 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3863
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3895, { i64, [0 x { i64, [0 x i64] }*] }** %_a2851
  %_a2896 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2851
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2896, { i64, [0 x { i64, [0 x i64] }*] }** %_a4875
  %_a4897 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4875
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4897, { i64, [0 x { i64, [0 x i64] }*] }** %_a3863
  %_a3898 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3863
  %_index_ptr900 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3898, i32 0, i32 1, i32 0
  %_index901 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr900
  %_index_ptr903 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index901, i32 0, i32 1, i32 0
  %_index904 = load i64, i64* %_index_ptr903
  ret i64 %_index904
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
