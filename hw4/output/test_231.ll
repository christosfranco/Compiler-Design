; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1
@_constant291 = global i1 1

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_i285 = alloca i64
  %_alloca283 = alloca i64
  store i64 %argc, i64* %_alloca283
  %_alloca284 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca284
  store i64 0, i64* %_i285
  %_b286 = load i1, i1* @b
  br i1 %_b286, label %_then289, label %_else288
_then289:
  store i64 1, i64* %_i285
  br label %_merge287
_else288:
  br label %_merge287
_merge287:
  %_i290 = load i64, i64* %_i285
  ret i64 %_i290
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
