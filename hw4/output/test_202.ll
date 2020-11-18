; generated from: oatprograms/lib6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr12059 = alloca { i64, [0 x i64] }*
  %_str2062 = alloca i8*
  %_arr22065 = alloca { i64, [0 x i64] }*
  %_s2066 = alloca i64
  %_i2067 = alloca i64
  %_alloca2050 = alloca i64
  store i64 %argc, i64* %_alloca2050
  %_alloca2051 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca2051
  %_raw_array2052 = call i64* @oat_alloc_array(i64 5)
  %_array2053 = bitcast i64* %_raw_array2052 to { i64, [0 x i64] }*
  %_ind2054 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2053, i32 0, i32 1, i32 0
  store i64 111, i64* %_ind2054
  %_ind2055 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2053, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2055
  %_ind2056 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2053, i32 0, i32 1, i32 2
  store i64 113, i64* %_ind2056
  %_ind2057 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2053, i32 0, i32 1, i32 3
  store i64 114, i64* %_ind2057
  %_ind2058 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2053, i32 0, i32 1, i32 4
  store i64 115, i64* %_ind2058
  store { i64, [0 x i64] }* %_array2053, { i64, [0 x i64] }** %_arr12059
  %_arr12060 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr12059
  %_result2061 = call i8* @string_of_array({ i64, [0 x i64] }* %_arr12060)
  store i8* %_result2061, i8** %_str2062
  %_str2063 = load i8*, i8** %_str2062
  %_result2064 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2063)
  store { i64, [0 x i64] }* %_result2064, { i64, [0 x i64] }** %_arr22065
  store i64 0, i64* %_s2066
  store i64 0, i64* %_i2067
  br label %_cond2072
_cond2072:
  %_i2068 = load i64, i64* %_i2067
  %_bop2069 = icmp slt i64 %_i2068, 5
  br i1 %_bop2069, label %_body2071, label %_post2070
_body2071:
  %_s2073 = load i64, i64* %_s2066
  %_arr22074 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr22065
  %_i2075 = load i64, i64* %_i2067
  %_index_ptr2077 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr22074, i32 0, i32 1, i64 %_i2075
  %_index2078 = load i64, i64* %_index_ptr2077
  %_bop2079 = add i64 %_s2073, %_index2078
  store i64 %_bop2079, i64* %_s2066
  %_i2080 = load i64, i64* %_i2067
  %_bop2081 = add i64 %_i2080, 1
  store i64 %_bop2081, i64* %_i2067
  br label %_cond2072
_post2070:
  %_s2082 = load i64, i64* %_s2066
  call void @print_int(i64 %_s2082)
  %_s2084 = load i64, i64* %_s2066
  ret i64 %_s2084
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
