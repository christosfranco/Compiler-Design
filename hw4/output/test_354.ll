; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0
@_constant1054 = global i64 0

define i64 @f(i64 %_x1037, i64 %_y1035) {
  %_x1038 = alloca i64
  %_y1036 = alloca i64
  %_r1039 = alloca i64
  store i64 %_x1037, i64* %_x1038
  store i64 %_y1035, i64* %_y1036
  store i64 0, i64* %_r1039
  %_x1040 = load i64, i64* %_x1038
  %_bop1041 = icmp sge i64 %_x1040, 1
  br i1 %_bop1041, label %_then1052, label %_else1051
_then1052:
  %_y1042 = load i64, i64* %_y1036
  %_x1043 = load i64, i64* %_x1038
  %_bop1044 = sub i64 %_x1043, 1
  %_result1045 = call i64 @f(i64 %_bop1044, i64 %_y1042)
  %_bop1046 = add i64 1, %_result1045
  store i64 %_bop1046, i64* %_r1039
  br label %_merge1050
_else1051:
  %_x1047 = load i64, i64* %_x1038
  %_y1048 = load i64, i64* %_y1036
  %_bop1049 = add i64 %_x1047, %_y1048
  store i64 %_bop1049, i64* %_r1039
  br label %_merge1050
_merge1050:
  %_r1053 = load i64, i64* %_r1039
  ret i64 %_r1053
}

define i64 @program(i64 %_argc1026, { i64, [0 x i8*] }* %_argv1024) {
  %_argc1027 = alloca i64
  %_argv1025 = alloca { i64, [0 x i8*] }*
  %_x1028 = alloca i64
  %_y1029 = alloca i64
  store i64 %_argc1026, i64* %_argc1027
  store { i64, [0 x i8*] }* %_argv1024, { i64, [0 x i8*] }** %_argv1025
  store i64 3, i64* %_x1028
  store i64 3, i64* %_y1029
  %_y1030 = load i64, i64* %_y1029
  %_x1031 = load i64, i64* %_x1028
  %_result1032 = call i64 @f(i64 %_x1031, i64 %_y1030)
  %_i1033 = load i64, i64* @i
  %_bop1034 = add i64 %_result1032, %_i1033
  ret i64 %_bop1034
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
