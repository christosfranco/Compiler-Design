; generated from: oatprograms/run61.oat
target triple = "x86_64-unknown-linux"
@s = global [3 x i8]* @_str591
@_str591 = global [3 x i8] c"42\00"

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca585 = alloca i64
  store i64 %argc, i64* %_alloca585
  %_alloca586 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca586
  %_s587 = load [3 x i8]*, [3 x i8]** @s
  %_cast588 = bitcast [3 x i8]* %_s587 to i8*
  call void @print_string(i8* %_cast588)
  ret i64 0
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
