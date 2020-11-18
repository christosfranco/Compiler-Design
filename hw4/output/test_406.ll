; generated from: oatprograms/josh_joyce_test.oat
target triple = "x86_64-unknown-linux"
@arr1 = global { i64, [4 x i64] }* @_global_arr4883
@_global_arr4883 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant4882 = global i64 1
@_constant4881 = global i64 2
@_constant4880 = global i64 3
@_constant4879 = global i64 4
@arr2 = global { i64, [4 x i64] }* @_global_arr4877
@_global_arr4877 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 5 ] }
@_constant4876 = global i64 1
@_constant4875 = global i64 2
@_constant4874 = global i64 3
@_constant4873 = global i64 5

define i64 @arrcheck({ i64, [0 x i64] }* %_ar14845, { i64, [0 x i64] }* %_ar24843, i64 %_len4841) {
  %_ar14846 = alloca { i64, [0 x i64] }*
  %_ar24844 = alloca { i64, [0 x i64] }*
  %_len4842 = alloca i64
  %_val4847 = alloca i64
  %_i4848 = alloca i64
  store { i64, [0 x i64] }* %_ar14845, { i64, [0 x i64] }** %_ar14846
  store { i64, [0 x i64] }* %_ar24843, { i64, [0 x i64] }** %_ar24844
  store i64 %_len4841, i64* %_len4842
  store i64 0, i64* %_val4847
  store i64 0, i64* %_i4848
  br label %_cond4854
_cond4854:
  %_i4849 = load i64, i64* %_i4848
  %_len4850 = load i64, i64* %_len4842
  %_bop4851 = icmp slt i64 %_i4849, %_len4850
  br i1 %_bop4851, label %_body4853, label %_post4852
_body4853:
  %_ar14855 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar14846
  %_i4856 = load i64, i64* %_i4848
  %_index_ptr4858 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar14855, i32 0, i32 1, i64 %_i4856
  %_index4859 = load i64, i64* %_index_ptr4858
  %_ar24860 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_ar24844
  %_i4861 = load i64, i64* %_i4848
  %_index_ptr4863 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_ar24860, i32 0, i32 1, i64 %_i4861
  %_index4864 = load i64, i64* %_index_ptr4863
  %_bop4865 = icmp ne i64 %_index4859, %_index4864
  br i1 %_bop4865, label %_then4868, label %_else4867
_then4868:
  store i64 1, i64* %_val4847
  br label %_merge4866
_else4867:
  br label %_merge4866
_merge4866:
  %_i4869 = load i64, i64* %_i4848
  %_bop4870 = add i64 %_i4869, 1
  store i64 %_bop4870, i64* %_i4848
  br label %_cond4854
_post4852:
  %_val4871 = load i64, i64* %_val4847
  ret i64 %_val4871
}

define i64 @program(i64 %_argc4828, { i64, [0 x i8*] }* %_argv4826) {
  %_argc4829 = alloca i64
  %_argv4827 = alloca { i64, [0 x i8*] }*
  %_val4830 = alloca i64
  store i64 %_argc4828, i64* %_argc4829
  store { i64, [0 x i8*] }* %_argv4826, { i64, [0 x i8*] }** %_argv4827
  store i64 1, i64* %_val4830
  %_arr24831 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr2
  %_cast4832 = bitcast { i64, [4 x i64] }* %_arr24831 to { i64, [0 x i64] }*
  %_arr14833 = load { i64, [4 x i64] }*, { i64, [4 x i64] }** @arr1
  %_cast4834 = bitcast { i64, [4 x i64] }* %_arr14833 to { i64, [0 x i64] }*
  %_result4835 = call i64 @arrcheck({ i64, [0 x i64] }* %_cast4834, { i64, [0 x i64] }* %_cast4832, i64 4)
  %_bop4836 = icmp eq i64 %_result4835, 1
  br i1 %_bop4836, label %_then4839, label %_else4838
_then4839:
  store i64 0, i64* %_val4830
  br label %_merge4837
_else4838:
  br label %_merge4837
_merge4837:
  %_val4840 = load i64, i64* %_val4830
  ret i64 %_val4840
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
