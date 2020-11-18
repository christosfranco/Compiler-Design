; generated from: oatprograms/run8.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_arr790 = alloca { i64, [0 x i64] }*
  %_alloca784 = alloca i64
  store i64 %argc, i64* %_alloca784
  %_alloca785 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca785
  %_raw_array786 = call i64* @oat_alloc_array(i64 2)
  %_array787 = bitcast i64* %_raw_array786 to { i64, [0 x i64] }*
  %_ind788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array787, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind788
  %_ind789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array787, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind789
  store { i64, [0 x i64] }* %_array787, { i64, [0 x i64] }** %_arr790
  %_arr791 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr790
  %_index_ptr793 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr791, i32 0, i32 1, i32 1
  %_index794 = load i64, i64* %_index_ptr793
  ret i64 %_index794
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
