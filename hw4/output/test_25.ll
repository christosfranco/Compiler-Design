; generated from: oatprograms/run29.oat
target triple = "x86_64-unknown-linux"
@b = global i1 1
@_constant346 = global i1 1

define i64 @program(i64 %_argc338, { i64, [0 x i8*] }* %_argv336) {
  %_argc339 = alloca i64
  %_argv337 = alloca { i64, [0 x i8*] }*
  %_i340 = alloca i64
  store i64 %_argc338, i64* %_argc339
  store { i64, [0 x i8*] }* %_argv336, { i64, [0 x i8*] }** %_argv337
  store i64 0, i64* %_i340
  %_b341 = load i1, i1* @b
  br i1 %_b341, label %_then344, label %_else343
_then344:
  store i64 1, i64* %_i340
  br label %_merge342
_else343:
  br label %_merge342
_merge342:
  %_i345 = load i64, i64* %_i340
  ret i64 %_i345
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
