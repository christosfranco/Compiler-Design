; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc827, { i64, [0 x i8*] }* %_argv825) {
  %_argc828 = alloca i64
  %_argv826 = alloca { i64, [0 x i8*] }*
  %_a1840 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2852 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3864 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4876 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5882 = alloca { i64, [0 x i64] }*
  store i64 %_argc827, i64* %_argc828
  store { i64, [0 x i8*] }* %_argv825, { i64, [0 x i8*] }** %_argv826
  %_raw_array829 = call i64* @oat_alloc_array(i64 3)
  %_array830 = bitcast i64* %_raw_array829 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array831 = call i64* @oat_alloc_array(i64 1)
  %_array832 = bitcast i64* %_raw_array831 to { i64, [0 x i64] }*
  %_ind833 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array830, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array832, { i64, [0 x i64] }** %_ind833
  %_raw_array834 = call i64* @oat_alloc_array(i64 1)
  %_array835 = bitcast i64* %_raw_array834 to { i64, [0 x i64] }*
  %_ind836 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array830, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array835, { i64, [0 x i64] }** %_ind836
  %_raw_array837 = call i64* @oat_alloc_array(i64 1)
  %_array838 = bitcast i64* %_raw_array837 to { i64, [0 x i64] }*
  %_ind839 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array830, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array838, { i64, [0 x i64] }** %_ind839
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array830, { i64, [0 x { i64, [0 x i64] }*] }** %_a1840
  %_raw_array841 = call i64* @oat_alloc_array(i64 3)
  %_array842 = bitcast i64* %_raw_array841 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array843 = call i64* @oat_alloc_array(i64 1)
  %_array844 = bitcast i64* %_raw_array843 to { i64, [0 x i64] }*
  %_ind845 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array842, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array844, { i64, [0 x i64] }** %_ind845
  %_raw_array846 = call i64* @oat_alloc_array(i64 1)
  %_array847 = bitcast i64* %_raw_array846 to { i64, [0 x i64] }*
  %_ind848 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array842, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array847, { i64, [0 x i64] }** %_ind848
  %_raw_array849 = call i64* @oat_alloc_array(i64 1)
  %_array850 = bitcast i64* %_raw_array849 to { i64, [0 x i64] }*
  %_ind851 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array842, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array850, { i64, [0 x i64] }** %_ind851
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array842, { i64, [0 x { i64, [0 x i64] }*] }** %_a2852
  %_raw_array853 = call i64* @oat_alloc_array(i64 3)
  %_array854 = bitcast i64* %_raw_array853 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array855 = call i64* @oat_alloc_array(i64 1)
  %_array856 = bitcast i64* %_raw_array855 to { i64, [0 x i64] }*
  %_ind857 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array854, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array856, { i64, [0 x i64] }** %_ind857
  %_raw_array858 = call i64* @oat_alloc_array(i64 1)
  %_array859 = bitcast i64* %_raw_array858 to { i64, [0 x i64] }*
  %_ind860 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array854, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array859, { i64, [0 x i64] }** %_ind860
  %_raw_array861 = call i64* @oat_alloc_array(i64 1)
  %_array862 = bitcast i64* %_raw_array861 to { i64, [0 x i64] }*
  %_ind863 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array854, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array862, { i64, [0 x i64] }** %_ind863
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array854, { i64, [0 x { i64, [0 x i64] }*] }** %_a3864
  %_raw_array865 = call i64* @oat_alloc_array(i64 3)
  %_array866 = bitcast i64* %_raw_array865 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array867 = call i64* @oat_alloc_array(i64 1)
  %_array868 = bitcast i64* %_raw_array867 to { i64, [0 x i64] }*
  %_ind869 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array866, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array868, { i64, [0 x i64] }** %_ind869
  %_raw_array870 = call i64* @oat_alloc_array(i64 1)
  %_array871 = bitcast i64* %_raw_array870 to { i64, [0 x i64] }*
  %_ind872 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array866, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array871, { i64, [0 x i64] }** %_ind872
  %_raw_array873 = call i64* @oat_alloc_array(i64 1)
  %_array874 = bitcast i64* %_raw_array873 to { i64, [0 x i64] }*
  %_ind875 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array866, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array874, { i64, [0 x i64] }** %_ind875
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array866, { i64, [0 x { i64, [0 x i64] }*] }** %_a4876
  %_raw_array877 = call i64* @oat_alloc_array(i64 3)
  %_array878 = bitcast i64* %_raw_array877 to { i64, [0 x i64] }*
  %_ind879 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array878, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind879
  %_ind880 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array878, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind880
  %_ind881 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array878, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind881
  store { i64, [0 x i64] }* %_array878, { i64, [0 x i64] }** %_a5882
  %_a2883 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2852
  %_index_ptr885 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2883, i32 0, i32 1, i32 0
  %_a5886 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5882
  store { i64, [0 x i64] }* %_a5886, { i64, [0 x i64] }** %_index_ptr885
  %_a2887 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2852
  %_index_ptr889 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2887, i32 0, i32 1, i32 0
  %_index890 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr889
  %_index_ptr892 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index890, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr892
  %_a2893 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2852
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2893, { i64, [0 x { i64, [0 x i64] }*] }** %_a1840
  %_a1894 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1840
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1894, { i64, [0 x { i64, [0 x i64] }*] }** %_a3864
  %_a4895 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4876
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4895, { i64, [0 x { i64, [0 x i64] }*] }** %_a1840
  %_a3896 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3864
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3896, { i64, [0 x { i64, [0 x i64] }*] }** %_a2852
  %_a2897 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2852
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2897, { i64, [0 x { i64, [0 x i64] }*] }** %_a4876
  %_a4898 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4876
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4898, { i64, [0 x { i64, [0 x i64] }*] }** %_a3864
  %_a3899 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3864
  %_index_ptr901 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3899, i32 0, i32 1, i32 0
  %_index902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr901
  %_index_ptr904 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index902, i32 0, i32 1, i32 0
  %_index905 = load i64, i64* %_index_ptr904
  ret i64 %_index905
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
