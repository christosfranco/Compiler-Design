; generated from: oatprograms/globals4.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [4 x i64] }* @_global_arr220
@_global_arr220 = global { i64, [4 x i64] } { i64 4, [4 x i64] [ i64 1, i64 2, i64 3, i64 4 ] }
@_constant219 = global i64 1
@_constant218 = global i64 2
@_constant217 = global i64 3
@_constant216 = global i64 4

define i64 @program(i64 %_argc213, { i64, [0 x i8*] }* %_args211) {
  %_argc214 = alloca i64
  %_args212 = alloca { i64, [0 x i8*] }*
  store i64 %_argc213, i64* %_argc214
  store { i64, [0 x i8*] }* %_args211, { i64, [0 x i8*] }** %_args212
  ret i64 5
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
