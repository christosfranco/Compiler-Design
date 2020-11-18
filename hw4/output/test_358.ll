; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc1107, { i64, [0 x i8*] }* %_argv1105) {
  %_argc1108 = alloca i64
  %_argv1106 = alloca { i64, [0 x i8*] }*
  %_arr1121 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1107, i64* %_argc1108
  store { i64, [0 x i8*] }* %_argv1105, { i64, [0 x i8*] }** %_argv1106
  %_raw_array1109 = call i64* @oat_alloc_array(i64 2)
  %_array1110 = bitcast i64* %_raw_array1109 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1111 = call i64* @oat_alloc_array(i64 2)
  %_array1112 = bitcast i64* %_raw_array1111 to { i64, [0 x i64] }*
  %_ind1113 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1112, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1113
  %_ind1114 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1112, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind1114
  %_ind1115 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1110, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1112, { i64, [0 x i64] }** %_ind1115
  %_raw_array1116 = call i64* @oat_alloc_array(i64 2)
  %_array1117 = bitcast i64* %_raw_array1116 to { i64, [0 x i64] }*
  %_ind1118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1117, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind1118
  %_ind1119 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1117, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind1119
  %_ind1120 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1110, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1117, { i64, [0 x i64] }** %_ind1120
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1110, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1121
  %_arr1122 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr1121
  %_index_ptr1124 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr1122, i32 0, i32 1, i32 0
  %_index1125 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1124
  %_index_ptr1127 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1125, i32 0, i32 1, i32 0
  %_index1128 = load i64, i64* %_index_ptr1127
  ret i64 %_index1128
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
