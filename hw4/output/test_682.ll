; generated from: oatprograms/run9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1147, { i64, [0 x i8*] }* %_argv1145) {
  %_argc1148 = alloca i64
  %_argv1146 = alloca { i64, [0 x i8*] }*
  %_arr1161 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1147, i64* %_argc1148
  store { i64, [0 x i8*] }* %_argv1145, { i64, [0 x i8*] }** %_argv1146
  %_raw_array1149 = call i64* @oat_alloc_array(i64 2)
  %_array1150 = bitcast i64* %_raw_array1149 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1151 = call i64* @oat_alloc_array(i64 2)
  %_array1152 = bitcast i64* %_raw_array1151 to { i64, [0 x i64] }*
  %_ind1153 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1152, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1153
  %_ind1154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1152, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1154
  %_ind1155 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1150, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1152, { i64, [0 x i64] }** %_ind1155
  %_raw_array1156 = call i64* @oat_alloc_array(i64 2)
  %_array1157 = bitcast i64* %_raw_array1156 to { i64, [0 x i64] }*
  %_ind1158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1157, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1158
  %_ind1159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1157, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1159
  %_ind1160 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1150, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1157, { i64, [0 x i64] }** %_ind1160
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1150, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1161
  %_arr1162 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1161
  %_index_ptr1163 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1162, i32 0, i32 1, i32 1
  %_index1164 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1163
  %_index_ptr1165 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1164, i32 0, i32 1, i32 1
  %_index1166 = load i64, i64* %_index_ptr1165
  ret i64 %_index1166
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
