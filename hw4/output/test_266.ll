; generated from: oatprograms/run47.oat
target triple = "x86_64-unknown-linux"
@a = global i64 1
@_constant1957 = global i64 1

define i64 @f() {
  %_a1954 = load i64, i64* @a
  %_bop1955 = add i64 %_a1954, 1
  store i64 %_bop1955, i64* @a
  %_a1956 = load i64, i64* @a
  ret i64 %_a1956
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_b1936 = alloca { i64, [0 x i64] }*
  %_alloca1931 = alloca i64
  store i64 %argc, i64* %_alloca1931
  %_alloca1932 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1932
  %_result1933 = call i64 @f()
  %_raw_array1934 = call i64* @oat_alloc_array(i64 %_result1933)
  %_array1935 = bitcast i64* %_raw_array1934 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1935, { i64, [0 x i64] }** %_b1936
  %_b1937 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1936
  %_index_ptr1939 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1937, i32 0, i32 1, i32 0
  store i64 0, i64* %_index_ptr1939
  %_b1940 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1936
  %_index_ptr1942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1940, i32 0, i32 1, i32 1
  store i64 1, i64* %_index_ptr1942
  %_a1943 = load i64, i64* @a
  %_b1944 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1936
  %_index_ptr1946 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1944, i32 0, i32 1, i32 0
  %_index1947 = load i64, i64* %_index_ptr1946
  %_bop1948 = add i64 %_a1943, %_index1947
  %_b1949 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_b1936
  %_index_ptr1951 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_b1949, i32 0, i32 1, i32 1
  %_index1952 = load i64, i64* %_index_ptr1951
  %_bop1953 = add i64 %_bop1948, %_index1952
  ret i64 %_bop1953
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
