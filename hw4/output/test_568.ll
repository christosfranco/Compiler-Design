; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0
@_constant1052 = global i64 0

define i64 @f(i64 %_x1035, i64 %_y1033) {
  %_x1036 = alloca i64
  %_y1034 = alloca i64
  %_r1037 = alloca i64
  store i64 %_x1035, i64* %_x1036
  store i64 %_y1033, i64* %_y1034
  store i64 0, i64* %_r1037
  %_x1038 = load i64, i64* %_x1036
  %_bop1039 = icmp sge i64 %_x1038, 1
  br i1 %_bop1039, label %_then1050, label %_else1049
_then1050:
  %_y1040 = load i64, i64* %_y1034
  %_x1041 = load i64, i64* %_x1036
  %_bop1042 = sub i64 %_x1041, 1
  %_result1043 = call i64 @f(i64 %_bop1042, i64 %_y1040)
  %_bop1044 = add i64 1, %_result1043
  store i64 %_bop1044, i64* %_r1037
  br label %_merge1048
_else1049:
  %_x1045 = load i64, i64* %_x1036
  %_y1046 = load i64, i64* %_y1034
  %_bop1047 = add i64 %_x1045, %_y1046
  store i64 %_bop1047, i64* %_r1037
  br label %_merge1048
_merge1048:
  %_r1051 = load i64, i64* %_r1037
  ret i64 %_r1051
}

define i64 @program(i64 %_argc1024, { i64, [0 x i8*] }* %_argv1022) {
  %_argc1025 = alloca i64
  %_argv1023 = alloca { i64, [0 x i8*] }*
  %_x1026 = alloca i64
  %_y1027 = alloca i64
  store i64 %_argc1024, i64* %_argc1025
  store { i64, [0 x i8*] }* %_argv1022, { i64, [0 x i8*] }** %_argv1023
  store i64 3, i64* %_x1026
  store i64 3, i64* %_y1027
  %_y1028 = load i64, i64* %_y1027
  %_x1029 = load i64, i64* %_x1026
  %_result1030 = call i64 @f(i64 %_x1029, i64 %_y1028)
  %_i1031 = load i64, i64* @i
  %_bop1032 = add i64 %_result1030, %_i1031
  ret i64 %_bop1032
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
