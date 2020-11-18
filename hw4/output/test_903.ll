; generated from: oatprograms/run19.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1616, { i64, [0 x i8*] }* %_argv1614) {
  %_argc1617 = alloca i64
  %_argv1615 = alloca { i64, [0 x i8*] }*
  %_i1618 = alloca i64
  %_a1624 = alloca { i64, [0 x i64] }*
  store i64 %_argc1616, i64* %_argc1617
  store { i64, [0 x i8*] }* %_argv1614, { i64, [0 x i8*] }** %_argv1615
  store i64 999, i64* %_i1618
  %_raw_array1619 = call i64* @oat_alloc_array(i64 3)
  %_array1620 = bitcast i64* %_raw_array1619 to { i64, [0 x i64] }*
  %_ind1621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind1621
  %_ind1622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 1
  store i64 100, i64* %_ind1622
  %_ind1623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1620, i32 0, i32 1, i32 2
  store i64 999, i64* %_ind1623
  store { i64, [0 x i64] }* %_array1620, { i64, [0 x i64] }** %_a1624
  %_a1625 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a1624
  %_index_ptr1626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a1625, i32 0, i32 1, i32 2
  %_index1627 = load i64, i64* %_index_ptr1626
  ret i64 %_index1627
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
