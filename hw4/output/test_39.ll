; generated from: oatprograms/run3.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x i64] }* null

define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_alloca669 = alloca i64
  store i64 %argc, i64* %_alloca669
  %_alloca670 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca670
  %_raw_array671 = call i64* @oat_alloc_array(i64 2)
  %_array672 = bitcast i64* %_raw_array671 to { i64, [0 x i64] }*
  %_ind673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array672, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind673
  %_ind674 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array672, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind674
  store { i64, [0 x i64] }* %_array672, { i64, [0 x i64] }** @arr
  %_arr675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** @arr
  %_index_ptr677 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr675, i32 0, i32 1, i32 1
  %_index678 = load i64, i64* %_index_ptr677
  ret i64 %_index678
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
