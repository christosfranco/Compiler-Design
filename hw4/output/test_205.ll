; generated from: oatprograms/lib11.oat
target triple = "x86_64-unknown-linux"
@_str_arr2132 = global [11 x i8] c"1234967890\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr2134 = alloca { i64, [0 x i64] }*
  %_sum2135 = alloca i64
  %_i2136 = alloca i64
  %_i2149 = alloca i64
  %_alloca2129 = alloca i64
  store i64 %argc, i64* %_alloca2129
  %_alloca2130 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca2130
  %_str2131 = getelementptr [11 x i8], [11 x i8]* @_str_arr2132, i32 0, i32 0
  %_result2133 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2131)
  store { i64, [0 x i64] }* %_result2133, { i64, [0 x i64] }** %_arr2134
  store i64 0, i64* %_sum2135
  store i64 0, i64* %_i2136
  br label %_cond2141
_cond2141:
  %_i2137 = load i64, i64* %_i2136
  %_bop2138 = icmp slt i64 %_i2137, 10
  br i1 %_bop2138, label %_body2140, label %_post2139
_body2140:
  %_arr2142 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2134
  %_i2143 = load i64, i64* %_i2136
  %_index_ptr2145 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2142, i32 0, i32 1, i64 %_i2143
  %_i2146 = load i64, i64* %_i2136
  store i64 %_i2146, i64* %_index_ptr2145
  %_i2147 = load i64, i64* %_i2136
  %_bop2148 = add i64 %_i2147, 1
  store i64 %_bop2148, i64* %_i2136
  br label %_cond2141
_post2139:
  store i64 0, i64* %_i2149
  br label %_cond2154
_cond2154:
  %_i2150 = load i64, i64* %_i2149
  %_bop2151 = icmp slt i64 %_i2150, 10
  br i1 %_bop2151, label %_body2153, label %_post2152
_body2153:
  %_sum2155 = load i64, i64* %_sum2135
  %_arr2156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2134
  %_i2157 = load i64, i64* %_i2149
  %_index_ptr2159 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2156, i32 0, i32 1, i64 %_i2157
  %_index2160 = load i64, i64* %_index_ptr2159
  %_bop2161 = add i64 %_sum2155, %_index2160
  store i64 %_bop2161, i64* %_sum2135
  %_i2162 = load i64, i64* %_i2149
  %_bop2163 = add i64 %_i2162, 1
  store i64 %_bop2163, i64* %_i2149
  br label %_cond2154
_post2152:
  %_sum2164 = load i64, i64* %_sum2135
  ret i64 %_sum2164
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
