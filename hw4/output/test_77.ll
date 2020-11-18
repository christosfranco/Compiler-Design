; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x101 = alloca { i64, [0 x i64] }*
  %_ans102 = alloca i64
  %_i103 = alloca i64
  %_alloca93 = alloca i64
  store i64 %argc, i64* %_alloca93
  %_alloca94 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca94
  %_raw_array95 = call i64* @oat_alloc_array(i64 4)
  %_array96 = bitcast i64* %_raw_array95 to { i64, [0 x i64] }*
  %_ind97 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind97
  %_ind98 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind98
  %_ind99 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind99
  %_ind100 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array96, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind100
  store { i64, [0 x i64] }* %_array96, { i64, [0 x i64] }** %_x101
  store i64 0, i64* %_ans102
  store i64 0, i64* %_i103
  br label %_cond108
_cond108:
  %_i104 = load i64, i64* %_i103
  %_bop105 = icmp slt i64 %_i104, 4
  br i1 %_bop105, label %_body107, label %_post106
_body107:
  %_x109 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x101
  %_i110 = load i64, i64* %_i103
  %_index_ptr112 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x109, i32 0, i32 1, i64 %_i110
  %_index113 = load i64, i64* %_index_ptr112
  %_x114 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x101
  %_i115 = load i64, i64* %_i103
  %_index_ptr117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x114, i32 0, i32 1, i64 %_i115
  %_index118 = load i64, i64* %_index_ptr117
  %_unop119 = xor i64 %_index118, -1
  %_bop120 = mul i64 %_index113, %_unop119
  store i64 %_bop120, i64* %_ans102
  %_i121 = load i64, i64* %_i103
  %_bop122 = add i64 %_i121, 1
  store i64 %_bop122, i64* %_i103
  br label %_cond108
_post106:
  %_ans123 = load i64, i64* %_ans102
  ret i64 %_ans123
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
