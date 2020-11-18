; generated from: oatprograms/run53.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_str1995 = alloca i8*
  %_alloca1987 = alloca i64
  store i64 %argc, i64* %_alloca1987
  %_alloca1988 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1988
  %_raw_array1989 = call i64* @oat_alloc_array(i64 3)
  %_array1990 = bitcast i64* %_raw_array1989 to { i64, [0 x i64] }*
  %_ind1991 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1990, i32 0, i32 1, i32 0
  store i64 110, i64* %_ind1991
  %_ind1992 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1990, i32 0, i32 1, i32 1
  store i64 110, i64* %_ind1992
  %_ind1993 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1990, i32 0, i32 1, i32 2
  store i64 110, i64* %_ind1993
  %_result1994 = call i8* @string_of_array({ i64, [0 x i64] }* %_array1990)
  store i8* %_result1994, i8** %_str1995
  %_str1996 = load i8*, i8** %_str1995
  call void @print_string(i8* %_str1996)
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
