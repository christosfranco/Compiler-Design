; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1105, { i64, [0 x i8*] }* %_argv1103) {
  %_argc1106 = alloca i64
  %_argv1104 = alloca { i64, [0 x i8*] }*
  %_arr1119 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1105, i64* %_argc1106
  store { i64, [0 x i8*] }* %_argv1103, { i64, [0 x i8*] }** %_argv1104
  %_raw_array1107 = call i64* @oat_alloc_array(i64 2)
  %_array1108 = bitcast i64* %_raw_array1107 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1109 = call i64* @oat_alloc_array(i64 2)
  %_array1110 = bitcast i64* %_raw_array1109 to { i64, [0 x i64] }*
  %_ind1111 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1110, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1111
  %_ind1112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1110, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1112
  %_ind1113 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1108, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1110, { i64, [0 x i64] }** %_ind1113
  %_raw_array1114 = call i64* @oat_alloc_array(i64 2)
  %_array1115 = bitcast i64* %_raw_array1114 to { i64, [0 x i64] }*
  %_ind1116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1116
  %_ind1117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1115, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1117
  %_ind1118 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1108, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1115, { i64, [0 x i64] }** %_ind1118
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1108, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1119
  %_arr1120 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1119
  %_index_ptr1122 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1120, i32 0, i32 1, i32 0
  %_index1123 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1122
  %_index_ptr1125 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1123, i32 0, i32 1, i32 0
  %_index1126 = load i64, i64* %_index_ptr1125
  ret i64 %_index1126
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
