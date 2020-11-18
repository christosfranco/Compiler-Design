; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11
@_constant313 = global i64 11

define i64 @f() {
  %_i311 = alloca i64
  store i64 12, i64* %_i311
  %_i312 = load i64, i64* %_i311
  ret i64 %_i312
}

define i64 @g() {
  %_i309 = alloca i64
  store i64 10, i64* %_i309
  %_i310 = load i64, i64* %_i309
  ret i64 %_i310
}

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca302 = alloca i64
  store i64 %argc, i64* %_alloca302
  %_alloca303 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca303
  %_result304 = call i64 @f()
  %_result305 = call i64 @g()
  %_bop306 = add i64 %_result304, %_result305
  %_i307 = load i64, i64* @i
  %_bop308 = add i64 %_bop306, %_i307
  ret i64 %_bop308
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
