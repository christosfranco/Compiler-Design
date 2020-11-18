; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %_argc1031, { i64, [0 x i8*] }* %_argv1029) {
  %_argc1032 = alloca i64
  %_argv1030 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1031, i64* %_argc1032
  store { i64, [0 x i8*] }* %_argv1029, { i64, [0 x i8*] }** %_argv1030
  %_raw_array1033 = call i64* @oat_alloc_array(i64 2)
  %_array1034 = bitcast i64* %_raw_array1033 to { i64, [0 x i64] }*
  %_ind1035 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1034, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind1035
  %_ind1036 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1034, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind1036
  store { i64, [0 x i64] }* %_array1034, { i64, [0 x i64] }** @arr
  %_arr1037 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr1038 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1037, i32 0, i32 1, i32 1
  %_index1039 = load i64, i64* %_index_ptr1038
  ret i64 %_index1039
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
