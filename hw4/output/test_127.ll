; generated from: oatprograms/run32.oat
target triple = "x86_64-unknown-linux"
@i = global i64 11
@_constant374 = global i64 11

define i64 @f() {
  %_i372 = alloca i64
  store i64 12, i64* %_i372
  %_i373 = load i64, i64* %_i372
  ret i64 %_i373
}

define i64 @g() {
  %_i370 = alloca i64
  store i64 10, i64* %_i370
  %_i371 = load i64, i64* %_i370
  ret i64 %_i371
}

define i64 @program(i64 %_argc363, { i64, [0 x i8*] }* %_argv361) {
  %_argc364 = alloca i64
  %_argv362 = alloca { i64, [0 x i8*] }*
  store i64 %_argc363, i64* %_argc364
  store { i64, [0 x i8*] }* %_argv361, { i64, [0 x i8*] }** %_argv362
  %_result365 = call i64 @f()
  %_result366 = call i64 @g()
  %_bop367 = add i64 %_result365, %_result366
  %_i368 = load i64, i64* @i
  %_bop369 = add i64 %_bop367, %_i368
  ret i64 %_bop369
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
