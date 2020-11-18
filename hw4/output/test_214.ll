; generated from: oatprograms/easyrun8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca79 = alloca i64
  store i64 %argc, i64* %_alloca79
  %_alloca80 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca80
  %_bop81 = icmp ne i64 6, 5
  br i1 %_bop81, label %_then92, label %_else91
_then92:
  %_unop82 = sub i64 0, 6
  %_bop83 = lshr i64 5, %_unop82
  %_bop84 = shl i64 %_bop83, 9
  %_bop85 = ashr i64 %_bop84, 10
  %_unop86 = xor i64 %_bop85, -1
  %_bop87 = mul i64 %_unop86, 2
  %_bop88 = sub i64 %_bop87, 100
  %_bop89 = add i64 %_bop88, 6
  ret i64 %_bop89
_else91:
  ret i64 2
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
