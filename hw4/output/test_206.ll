; generated from: oatprograms/lib14.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a2179 = alloca { i64, [0 x i64] }*
  %_alloca2165 = alloca i64
  store i64 %argc, i64* %_alloca2165
  %_alloca2166 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca2166
  %_raw_array2167 = call i64* @oat_alloc_array(i64 10)
  %_array2168 = bitcast i64* %_raw_array2167 to { i64, [0 x i64] }*
  %_ind2169 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 0
  store i64 126, i64* %_ind2169
  %_ind2170 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 1
  store i64 125, i64* %_ind2170
  %_ind2171 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 2
  store i64 124, i64* %_ind2171
  %_ind2172 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 3
  store i64 123, i64* %_ind2172
  %_ind2173 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 4
  store i64 122, i64* %_ind2173
  %_ind2174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 5
  store i64 121, i64* %_ind2174
  %_ind2175 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 6
  store i64 120, i64* %_ind2175
  %_ind2176 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 7
  store i64 119, i64* %_ind2176
  %_ind2177 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 8
  store i64 118, i64* %_ind2177
  %_ind2178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2168, i32 0, i32 1, i32 9
  store i64 117, i64* %_ind2178
  store { i64, [0 x i64] }* %_array2168, { i64, [0 x i64] }** %_a2179
  %_a2180 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2179
  %_result2181 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2180)
  call void @print_string(i8* %_result2181)
  ret i64 0
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
