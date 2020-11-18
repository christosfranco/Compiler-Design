; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42
@_constant1023 = global i64 42

define i64 @f(i64 %_x1020) {
  %_x1021 = alloca i64
  store i64 %_x1020, i64* %_x1021
  %_x1022 = load i64, i64* %_x1021
  ret i64 %_x1022
}

define i64 @g({ i64, [0 x i64] }* %_y1014) {
  %_y1015 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y1014, { i64, [0 x i64] }** %_y1015
  %_y1016 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y1015
  %_index_ptr1018 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y1016, i32 0, i32 1, i32 2
  %_index1019 = load i64, i64* %_index_ptr1018
  ret i64 %_index1019
}

define i64 @program(i64 %_argc958, { i64, [0 x i8*] }* %_argv956) {
  %_argc959 = alloca i64
  %_argv957 = alloca { i64, [0 x i8*] }*
  %_garr972 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr979 = alloca { i64, [0 x i64] }*
  %_p980 = alloca i64
  %_j981 = alloca i64
  store i64 %_argc958, i64* %_argc959
  store { i64, [0 x i8*] }* %_argv956, { i64, [0 x i8*] }** %_argv957
  %_raw_array960 = call i64* @oat_alloc_array(i64 2)
  %_array961 = bitcast i64* %_raw_array960 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array962 = call i64* @oat_alloc_array(i64 2)
  %_array963 = bitcast i64* %_raw_array962 to { i64, [0 x i64] }*
  %_ind964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind964
  %_ind965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind965
  %_ind966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array961, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array963, { i64, [0 x i64] }** %_ind966
  %_raw_array967 = call i64* @oat_alloc_array(i64 2)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x i64] }*
  %_ind969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind969
  %_ind970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind970
  %_ind971 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array961, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array968, { i64, [0 x i64] }** %_ind971
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array961, { i64, [0 x { i64, [0 x i64] }*] }** %_garr972
  %_raw_array973 = call i64* @oat_alloc_array(i64 4)
  %_array974 = bitcast i64* %_raw_array973 to { i64, [0 x i64] }*
  %_ind975 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array974, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind975
  %_ind976 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array974, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind976
  %_ind977 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array974, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind977
  %_ind978 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array974, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind978
  store { i64, [0 x i64] }* %_array974, { i64, [0 x i64] }** %_arr979
  store i64 0, i64* %_p980
  store i64 0, i64* %_j981
  br label %_cond986
_cond986:
  %_j982 = load i64, i64* %_j981
  %_bop983 = icmp slt i64 %_j982, 100
  br i1 %_bop983, label %_body985, label %_post984
_body985:
  %_p987 = load i64, i64* %_p980
  %_bop988 = add i64 %_p987, 1
  store i64 %_bop988, i64* %_p980
  %_j989 = load i64, i64* %_j981
  %_bop990 = add i64 %_j989, 1
  store i64 %_bop990, i64* %_j981
  br label %_cond986
_post984:
  %_arr991 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr979
  %_result992 = call i64 @g({ i64, [0 x i64] }* %_arr991)
  %_i993 = load i64, i64* @i
  %_result994 = call i64 @f(i64 %_i993)
  %_bop995 = add i64 %_result992, %_result994
  %_arr996 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr979
  %_index_ptr998 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr996, i32 0, i32 1, i32 3
  %_index999 = load i64, i64* %_index_ptr998
  %_result1000 = call i64 @f(i64 %_index999)
  %_bop1001 = add i64 %_bop995, %_result1000
  %_garr1002 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr972
  %_index_ptr1004 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr1002, i32 0, i32 1, i32 1
  %_index1005 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1004
  %_index_ptr1007 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1005, i32 0, i32 1, i32 1
  %_index1008 = load i64, i64* %_index_ptr1007
  %_result1009 = call i64 @f(i64 %_index1008)
  %_bop1010 = add i64 %_bop1001, %_result1009
  %_p1011 = load i64, i64* %_p980
  %_result1012 = call i64 @f(i64 %_p1011)
  %_bop1013 = add i64 %_bop1010, %_result1012
  ret i64 %_bop1013
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
