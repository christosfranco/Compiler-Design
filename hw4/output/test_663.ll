; generated from: oatprograms/run37.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc674, { i64, [0 x i8*] }* %_argv672) {
  %_argc675 = alloca i64
  %_argv673 = alloca { i64, [0 x i8*] }*
  %_a688 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc674, i64* %_argc675
  store { i64, [0 x i8*] }* %_argv672, { i64, [0 x i8*] }** %_argv673
  %_raw_array676 = call i64* @oat_alloc_array(i64 2)
  %_array677 = bitcast i64* %_raw_array676 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array678 = call i64* @oat_alloc_array(i64 2)
  %_array679 = bitcast i64* %_raw_array678 to { i64, [0 x i64] }*
  %_ind680 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array679, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind680
  %_ind681 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array679, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind681
  %_ind682 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array679, { i64, [0 x i64] }** %_ind682
  %_raw_array683 = call i64* @oat_alloc_array(i64 2)
  %_array684 = bitcast i64* %_raw_array683 to { i64, [0 x i64] }*
  %_ind685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array684, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind685
  %_ind686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array684, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind686
  %_ind687 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array677, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array684, { i64, [0 x i64] }** %_ind687
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array677, { i64, [0 x { i64, [0 x i64] }*] }** %_a688
  %_a689 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a688
  %_index_ptr690 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a689, i32 0, i32 1, i32 0
  %_index691 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr690
  %_index_ptr692 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index691, i32 0, i32 1, i32 1
  %_index693 = load i64, i64* %_index_ptr692
  ret i64 %_index693
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
