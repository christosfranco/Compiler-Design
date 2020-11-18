; generated from: oatprograms/lib4.oat
target triple = "x86_64-unknown-linux"
@str = global [6 x i8]* @_str2024
@_str2024 = global [6 x i8] c"hello\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr2003 = alloca { i64, [0 x i64] }*
  %_s2004 = alloca i64
  %_i2005 = alloca i64
  %_alloca1998 = alloca i64
  store i64 %argc, i64* %_alloca1998
  %_alloca1999 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1999
  %_str2000 = load [6 x i8]*, [6 x i8]** @str
  %_cast2001 = bitcast [6 x i8]* %_str2000 to i8*
  %_result2002 = call { i64, [0 x i64] }* @array_of_string(i8* %_cast2001)
  store { i64, [0 x i64] }* %_result2002, { i64, [0 x i64] }** %_arr2003
  store i64 0, i64* %_s2004
  store i64 0, i64* %_i2005
  br label %_cond2010
_cond2010:
  %_i2006 = load i64, i64* %_i2005
  %_bop2007 = icmp slt i64 %_i2006, 5
  br i1 %_bop2007, label %_body2009, label %_post2008
_body2009:
  %_s2011 = load i64, i64* %_s2004
  %_arr2012 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr2003
  %_i2013 = load i64, i64* %_i2005
  %_index_ptr2015 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr2012, i32 0, i32 1, i64 %_i2013
  %_index2016 = load i64, i64* %_index_ptr2015
  %_bop2017 = add i64 %_s2011, %_index2016
  store i64 %_bop2017, i64* %_s2004
  %_i2018 = load i64, i64* %_i2005
  %_bop2019 = add i64 %_i2018, 1
  store i64 %_bop2019, i64* %_i2005
  br label %_cond2010
_post2008:
  %_s2020 = load i64, i64* %_s2004
  call void @print_int(i64 %_s2020)
  %_s2022 = load i64, i64* %_s2004
  ret i64 %_s2022
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
