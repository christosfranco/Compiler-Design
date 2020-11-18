; generated from: oatprograms/lib7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr12094 = alloca { i64, [0 x i64] }*
  %_str2097 = alloca i8*
  %_arr22100 = alloca { i64, [0 x i64] }*
  %_s2101 = alloca i64
  %_i2102 = alloca i64
  %_alloca2085 = alloca i64
  store i64 %argc, i64* %_alloca2085
  %_alloca2086 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca2086
  %_raw_array2087 = call i64* @oat_alloc_array(i64 5)
  %_array2088 = bitcast i64* %_raw_array2087 to { i64, [0 x i64] }*
  %_ind2089 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2088, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2089
  %_ind2090 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2088, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2090
  %_ind2091 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2088, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2091
  %_ind2092 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2088, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2092
  %_ind2093 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2088, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2093
  store { i64, [0 x i64] }* %_array2088, { i64, [0 x i64] }** %_arr12094
  %_arr12095 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12094
  %_result2096 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12095)
  store i8* %_result2096, i8** %_str2097
  %_str2098 = load i8*, i8** %_str2097
  %_result2099 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2098)
  store { i64, [0 x i64] }* %_result2099, { i64, [0 x i64] }** %_arr22100
  store i64 0, i64* %_s2101
  store i64 0, i64* %_i2102
  br label %_cond2107
_cond2107:
  %_i2103 = load i64, i64* %_i2102
  %_bop2104 = icmp slt i64 %_i2103, 5
  br i1 %_bop2104, label %_body2106, label %_post2105
_body2106:
  %_s2108 = load i64, i64* %_s2101
  %_arr22109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22100
  %_i2110 = load i64, i64* %_i2102
  %_index_ptr2112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22109, i32 0, i32 1, i64 %_i2110
  %_index2113 = load i64, i64* %_index_ptr2112
  %_bop2114 = add i64 %_s2108, %_index2113
  store i64 %_bop2114, i64* %_s2101
  %_i2115 = load i64, i64* %_i2102
  %_bop2116 = add i64 %_i2115, 1
  store i64 %_bop2116, i64* %_i2102
  br label %_cond2107
_post2105:
  %_s2117 = load i64, i64* %_s2101
  ret i64 %_s2117
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
