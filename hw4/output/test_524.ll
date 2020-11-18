; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc69, { i64, [0 x i8*] }* %_argv67) {
  %_argc70 = alloca i64
  %_argv68 = alloca { i64, [0 x i8*] }*
  store i64 %_argc69, i64* %_argc70
  store { i64, [0 x i8*] }* %_argv67, { i64, [0 x i8*] }** %_argv68
  %_unop71 = icmp eq i1 1, 0
  %_unop72 = sub i64 0, 4
  %_bop73 = add i64 %_unop72, 5
  %_bop74 = icmp sgt i64 %_bop73, 0
  %_bop75 = mul i64 6, 4
  %_bop76 = icmp slt i64 %_bop75, 25
  %_bop77 = and i1 %_bop74, %_bop76
  %_bop78 = or i1 %_unop71, %_bop77
  br i1 %_bop78, label %_then81, label %_else80
_then81:
  ret i64 9
_else80:
  ret i64 4
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
