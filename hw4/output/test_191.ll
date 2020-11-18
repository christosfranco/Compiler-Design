; generated from: oatprograms/run24.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1292 = alloca { i64, [0 x i64] }*
  %_alloca1288 = alloca i64
  store i64 %argc, i64* %_alloca1288
  %_alloca1289 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca1289
  %_raw_array1290 = call i64* @oat_alloc_array(i64 0)
  %_array1291 = bitcast i64* %_raw_array1290 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array1291, { i64, [0 x i64] }** %_a1292
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
