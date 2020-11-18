; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42
@_constant1021 = global i64 42

define i64 @f(i64 %_x1018) {
  %_x1019 = alloca i64
  store i64 %_x1018, i64* %_x1019
  %_x1020 = load i64, i64* %_x1019
  ret i64 %_x1020
}

define i64 @g({ i64, [0 x i64] }* %_y1012) {
  %_y1013 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y1012, { i64, [0 x i64] }** %_y1013
  %_y1014 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1013
  %_index_ptr1016 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1014, i32 0, i32 1, i32 2
  %_index1017 = load i64, i64* %_index_ptr1016
  ret i64 %_index1017
}

define i64 @program(i64 %_argc956, { i64, [0 x i8*] }* %_argv954) {
  %_argc957 = alloca i64
  %_argv955 = alloca { i64, [0 x i8*] }*
  %_garr970 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr977 = alloca { i64, [0 x i64] }*
  %_p978 = alloca i64
  %_j979 = alloca i64
  store i64 %_argc956, i64* %_argc957
  store { i64, [0 x i8*] }* %_argv954, { i64, [0 x i8*] }** %_argv955
  %_raw_array958 = call i64* @oat_alloc_array(i64 2)
  %_array959 = bitcast i64* %_raw_array958 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array960 = call i64* @oat_alloc_array(i64 2)
  %_array961 = bitcast i64* %_raw_array960 to { i64, [0 x i64] }*
  %_ind962 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array961, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind962
  %_ind963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array961, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind963
  %_ind964 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array959, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array961, { i64, [0 x i64] }** %_ind964
  %_raw_array965 = call i64* @oat_alloc_array(i64 2)
  %_array966 = bitcast i64* %_raw_array965 to { i64, [0 x i64] }*
  %_ind967 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array966, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind967
  %_ind968 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array966, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind968
  %_ind969 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array959, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array966, { i64, [0 x i64] }** %_ind969
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array959, { i64, [0 x { i64, [0 x i64] }*] }** %_garr970
  %_raw_array971 = call i64* @oat_alloc_array(i64 4)
  %_array972 = bitcast i64* %_raw_array971 to { i64, [0 x i64] }*
  %_ind973 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array972, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind973
  %_ind974 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array972, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind974
  %_ind975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array972, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind975
  %_ind976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array972, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind976
  store { i64, [0 x i64] }* %_array972, { i64, [0 x i64] }** %_arr977
  store i64 0, i64* %_p978
  store i64 0, i64* %_j979
  br label %_cond984
_cond984:
  %_j980 = load i64, i64* %_j979
  %_bop981 = icmp slt i64 %_j980, 100
  br i1 %_bop981, label %_body983, label %_post982
_body983:
  %_p985 = load i64, i64* %_p978
  %_bop986 = add i64 %_p985, 1
  store i64 %_bop986, i64* %_p978
  %_j987 = load i64, i64* %_j979
  %_bop988 = add i64 %_j987, 1
  store i64 %_bop988, i64* %_j979
  br label %_cond984
_post982:
  %_arr989 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr977
  %_result990 = call i64 @g({ i64, [0 x i64] }* %_arr989)
  %_i991 = load i64, i64* @i
  %_result992 = call i64 @f(i64 %_i991)
  %_bop993 = add i64 %_result990, %_result992
  %_arr994 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr977
  %_index_ptr996 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr994, i32 0, i32 1, i32 3
  %_index997 = load i64, i64* %_index_ptr996
  %_result998 = call i64 @f(i64 %_index997)
  %_bop999 = add i64 %_bop993, %_result998
  %_garr1000 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr970
  %_index_ptr1002 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1000, i32 0, i32 1, i32 1
  %_index1003 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1002
  %_index_ptr1005 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1003, i32 0, i32 1, i32 1
  %_index1006 = load i64, i64* %_index_ptr1005
  %_result1007 = call i64 @f(i64 %_index1006)
  %_bop1008 = add i64 %_bop999, %_result1007
  %_p1009 = load i64, i64* %_p978
  %_result1010 = call i64 @f(i64 %_p1009)
  %_bop1011 = add i64 %_bop1008, %_result1010
  ret i64 %_bop1011
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
