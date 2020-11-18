; generated from: oatprograms/run48.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant1986 = global i64 1

define i64 @f() {
  %_a1983 = load i64, i64* @a
  %_bop1984 = add i64 %_a1983, 1
  store i64 %_bop1984, i64* @a
  %_a1985 = load i64, i64* @a
  ret i64 %_a1985
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1963 = alloca { i64, [0 x i64] }*
  %_alloca1958 = alloca i64
  store i64 %argc, i64* %_alloca1958
  %_alloca1959 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1959
  %_result1960 = call i64 @f()
  %_raw_array1961 = call i64* @oat_alloc_array(i64 %_result1960)
  %_array1962 = bitcast i64* %_raw_array1961 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1962, { i64, [0 x i64] }** %_b1963
  %_b1964 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1963
  %_index_ptr1966 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1964, i32 0, i32 1, i32 0
  %_result1967 = call i64 @f()
  store i64 %_result1967, i64* %_index_ptr1966
  %_b1968 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1963
  %_index_ptr1970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1968, i32 0, i32 1, i32 1
  %_result1971 = call i64 @f()
  store i64 %_result1971, i64* %_index_ptr1970
  %_a1972 = load i64, i64* @a
  %_b1973 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1963
  %_index_ptr1975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1973, i32 0, i32 1, i32 0
  %_index1976 = load i64, i64* %_index_ptr1975
  %_bop1977 = add i64 %_a1972, %_index1976
  %_b1978 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1963
  %_index_ptr1980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1978, i32 0, i32 1, i32 1
  %_index1981 = load i64, i64* %_index_ptr1980
  %_bop1982 = add i64 %_bop1977, %_index1981
  ret i64 %_bop1982
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
