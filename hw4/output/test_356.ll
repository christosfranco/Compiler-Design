; generated from: oatprograms/run4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %_argc1070, { i64, [0 x i8*] }* %_argv1068) {
  %_argc1071 = alloca i64
  %_argv1069 = alloca { i64, [0 x i8*] }*
  store i64 %_argc1070, i64* %_argc1071
  store { i64, [0 x i8*] }* %_argv1068, { i64, [0 x i8*] }** %_argv1069
  %_raw_array1072 = call i64* @oat_alloc_array(i64 2)
  %_array1073 = bitcast i64* %_raw_array1072 to { i64, [0 x i64] }*
  %_ind1074 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1073, i32 0, i32 1, i32 0
  store i64 17, i64* %_ind1074
  %_ind1075 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1073, i32 0, i32 1, i32 1
  store i64 42, i64* %_ind1075
  store { i64, [0 x i64] }* %_array1073, { i64, [0 x i64] }** @arr
  %_arr1076 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr1078 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr1076, i32 0, i32 1, i32 1
  %_index1079 = load i64, i64* %_index_ptr1078
  ret i64 %_index1079
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
