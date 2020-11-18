; generated from: oatprograms/lib5.oat
target triple = "x86_64-unknown-linux"
@_str_arr2028 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str2029 = alloca i8*
  %_arr2032 = alloca { i64, [0 x i64] }*
  %_s2033 = alloca i64
  %_i2034 = alloca i64
  %_alloca2025 = alloca i64
  store i64 %argc, i64* %_alloca2025
  %_alloca2026 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca2026
  %_str2027 = getelementptr [6 x i8], [6 x i8]* @_str_arr2028, i32 0, i32 0
  store i8* %_str2027, i8** %_str2029
  %_str2030 = load i8*, i8** %_str2029
  %_result2031 = call { i64, [0 x i64] }* @array_of_string(i8* %_str2030)
  store { i64, [0 x i64] }* %_result2031, { i64, [0 x i64] }** %_arr2032
  store i64 0, i64* %_s2033
  store i64 0, i64* %_i2034
  br label %_cond2039
_cond2039:
  %_i2035 = load i64, i64* %_i2034
  %_bop2036 = icmp slt i64 %_i2035, 5
  br i1 %_bop2036, label %_body2038, label %_post2037
_body2038:
  %_s2040 = load i64, i64* %_s2033
  %_arr2041 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2032
  %_i2042 = load i64, i64* %_i2034
  %_index_ptr2044 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2041, i32 0, i32 1, i64 %_i2042
  %_index2045 = load i64, i64* %_index_ptr2044
  %_bop2046 = add i64 %_s2040, %_index2045
  store i64 %_bop2046, i64* %_s2033
  %_i2047 = load i64, i64* %_i2034
  %_bop2048 = add i64 %_i2047, 1
  store i64 %_bop2048, i64* %_i2034
  br label %_cond2039
_post2037:
  %_s2049 = load i64, i64* %_s2033
  ret i64 %_s2049
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
