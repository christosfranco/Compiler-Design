; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0
@_constant1016 = global i64 0

define i64 @f(i64 %_x999, i64 %_y997) {
  %_x1000 = alloca i64
  %_y998 = alloca i64
  %_r1001 = alloca i64
  store i64 %_x999, i64* %_x1000
  store i64 %_y997, i64* %_y998
  store i64 0, i64* %_r1001
  %_x1002 = load i64, i64* %_x1000
  %_bop1003 = icmp sge i64 %_x1002, 1
  br i1 %_bop1003, label %_then1014, label %_else1013
_then1014:
  %_y1004 = load i64, i64* %_y998
  %_x1005 = load i64, i64* %_x1000
  %_bop1006 = sub i64 %_x1005, 1
  %_result1007 = call i64 @f(i64 %_bop1006, i64 %_y1004)
  %_bop1008 = add i64 1, %_result1007
  store i64 %_bop1008, i64* %_r1001
  br label %_merge1012
_else1013:
  %_x1009 = load i64, i64* %_x1000
  %_y1010 = load i64, i64* %_y998
  %_bop1011 = add i64 %_x1009, %_y1010
  store i64 %_bop1011, i64* %_r1001
  br label %_merge1012
_merge1012:
  %_r1015 = load i64, i64* %_r1001
  ret i64 %_r1015
}

define i64 @program(i64 %_argc988, { i64, [0 x i8*] }* %_argv986) {
  %_argc989 = alloca i64
  %_argv987 = alloca { i64, [0 x i8*] }*
  %_x990 = alloca i64
  %_y991 = alloca i64
  store i64 %_argc988, i64* %_argc989
  store { i64, [0 x i8*] }* %_argv986, { i64, [0 x i8*] }** %_argv987
  store i64 3, i64* %_x990
  store i64 3, i64* %_y991
  %_y992 = load i64, i64* %_y991
  %_x993 = load i64, i64* %_x990
  %_result994 = call i64 @f(i64 %_x993, i64 %_y992)
  %_i995 = load i64, i64* @i
  %_bop996 = add i64 %_result994, %_i995
  ret i64 %_bop996
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
