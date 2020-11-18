; generated from: oatprograms/easyrun9.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc111, { i64, [0 x i8*] }* %_argv109) {
  %_argc112 = alloca i64
  %_argv110 = alloca { i64, [0 x i8*] }*
  %_x119 = alloca { i64, [0 x i64] }*
  %_ans120 = alloca i64
  %_i121 = alloca i64
  store i64 %_argc111, i64* %_argc112
  store { i64, [0 x i8*] }* %_argv109, { i64, [0 x i8*] }** %_argv110
  %_raw_array113 = call i64* @oat_alloc_array(i64 4)
  %_array114 = bitcast i64* %_raw_array113 to { i64, [0 x i64] }*
  %_ind115 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array114, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind115
  %_ind116 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array114, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind116
  %_ind117 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array114, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind117
  %_ind118 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array114, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind118
  store { i64, [0 x i64] }* %_array114, { i64, [0 x i64] }** %_x119
  store i64 0, i64* %_ans120
  store i64 0, i64* %_i121
  br label %_cond126
_cond126:
  %_i122 = load i64, i64* %_i121
  %_bop123 = icmp slt i64 %_i122, 4
  br i1 %_bop123, label %_body125, label %_post124
_body125:
  %_x127 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x119
  %_i128 = load i64, i64* %_i121
  %_index_ptr129 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x127, i32 0, i32 1, i64 %_i128
  %_index130 = load i64, i64* %_index_ptr129
  %_x131 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_x119
  %_i132 = load i64, i64* %_i121
  %_index_ptr133 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_x131, i32 0, i32 1, i64 %_i132
  %_index134 = load i64, i64* %_index_ptr133
  %_unop135 = xor i64 %_index134, -1
  %_bop136 = mul i64 %_index130, %_unop135
  store i64 %_bop136, i64* %_ans120
  %_i137 = load i64, i64* %_i121
  %_bop138 = add i64 %_i137, 1
  store i64 %_bop138, i64* %_i121
  br label %_cond126
_post124:
  %_ans139 = load i64, i64* %_ans120
  ret i64 %_ans139
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
