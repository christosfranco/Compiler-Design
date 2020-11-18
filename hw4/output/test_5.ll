; generated from: oatprograms/easyrun6.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca57 = alloca i64
  store i64 %argc, i64* %_alloca57
  %_alloca58 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca58
  %_unop59 = icmp eq i1 1, 0
  %_unop60 = sub i64 0, 4
  %_bop61 = add i64 %_unop60, 5
  %_bop62 = icmp sgt i64 %_bop61, 0
  %_bop63 = mul i64 6, 4
  %_bop64 = icmp slt i64 %_bop63, 25
  %_bop65 = and i1 %_bop62, %_bop64
  %_bop66 = or i1 %_unop59, %_bop65
  br i1 %_bop66, label %_then69, label %_else68
_then69:
  ret i64 9
_else68:
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
