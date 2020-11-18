; generated from: oatprograms/easyrun7.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca70 = alloca i64
  store i64 %argc, i64* %_alloca70
  %_alloca71 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca71
  %_unop72 = xor i64 5, -1
  %_bop73 = and i64 %_unop72, 6
  %_bop74 = or i64 2, 0
  %_bop75 = icmp sge i64 %_bop73, %_bop74
  br i1 %_bop75, label %_then78, label %_else77
_then78:
  ret i64 23
_else77:
  ret i64 46
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
