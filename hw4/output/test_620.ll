; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] }* @_global_arr4880
@_global_arr4880 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant4879 = global i64 1
@_constant4878 = global i64 2
@_constant4877 = global i64 3
@_constant4876 = global i64 4
@arr2 = global { i64, [4 x i64] }* @_global_arr4874
@_global_arr4874 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_constant4873 = global i64 1
@_constant4872 = global i64 2
@_constant4871 = global i64 3
@_constant4870 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %_ar14842, { i64, [0 x i64] }* %_ar24840, i64 %_len4838) {
  %_ar14843 = alloca { i64, [0 x i64] }*
  %_ar24841 = alloca { i64, [0 x i64] }*
  %_len4839 = alloca i64
  %_val4844 = alloca i64
  %_i4845 = alloca i64
  store { i64, [0 x i64] }* %_ar14842, { i64, [0 x i64] }** %_ar14843
  store { i64, [0 x i64] }* %_ar24840, { i64, [0 x i64] }** %_ar24841
  store i64 %_len4838, i64* %_len4839
  store i64 0, i64* %_val4844
  store i64 0, i64* %_i4845
  br label %_cond4851
_cond4851:
  %_i4846 = load i64, i64* %_i4845
  %_len4847 = load i64, i64* %_len4839
  %_bop4848 = icmp slt i64 %_i4846, %_len4847
  br i1 %_bop4848, label %_body4850, label %_post4849
_body4850:
  %_ar14852 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14843
  %_i4853 = load i64, i64* %_i4845
  %_index_ptr4855 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar14852, i32 0, i32 1, i64 %_i4853
  %_index4856 = load i64, i64* %_index_ptr4855
  %_ar24857 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24841
  %_i4858 = load i64, i64* %_i4845
  %_index_ptr4860 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar24857, i32 0, i32 1, i64 %_i4858
  %_index4861 = load i64, i64* %_index_ptr4860
  %_bop4862 = icmp ne i64 %_index4856, %_index4861
  br i1 %_bop4862, label %_then4865, label %_else4864
_then4865:
  store i64 1, i64* %_val4844
  br label %_merge4863
_else4864:
  br label %_merge4863
_merge4863:
  %_i4866 = load i64, i64* %_i4845
  %_bop4867 = add i64 %_i4866, 1
  store i64 %_bop4867, i64* %_i4845
  br label %_cond4851
_post4849:
  %_val4868 = load i64, i64* %_val4844
  ret i64 %_val4868
}

define i64 @program(i64 %_argc4825, { i64, [0 x i8*] }* %_argv4823) {
  %_argc4826 = alloca i64
  %_argv4824 = alloca { i64, [0 x i8*] }*
  %_val4827 = alloca i64
  store i64 %_argc4825, i64* %_argc4826
  store { i64, [0 x i8*] }* %_argv4823, { i64, [0 x i8*] }** %_argv4824
  store i64 1, i64* %_val4827
  %_arr24828 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_cast4829 = bitcast { i64, [4 x i64] }* %_arr24828 to { i64, [0 x i64] }*
  %_arr14830 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_cast4831 = bitcast { i64, [4 x i64] }* %_arr14830 to { i64, [0 x i64] }*
  %_result4832 = call i64 @arrcheck({ i64, [0 x i64] }* %_cast4831, { i64, [0 x i64] }* %_cast4829, i64 4)
  %_bop4833 = icmp eq i64 %_result4832, 1
  br i1 %_bop4833, label %_then4836, label %_else4835
_then4836:
  store i64 0, i64* %_val4827
  br label %_merge4834
_else4835:
  br label %_merge4834
_merge4834:
  %_val4837 = load i64, i64* %_val4827
  ret i64 %_val4837
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
