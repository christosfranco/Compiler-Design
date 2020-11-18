; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_x144 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans145 = alloca i64
  %_i146 = alloca i64
  %_alloca124 = alloca i64
  store i64 %argc, i64* %_alloca124
  %_alloca125 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca125
  %_raw_array126 = call i64* @oat_alloc_array(i64 4)
  %_array127 = bitcast i64* %_raw_array126 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array128 = call i64* @oat_alloc_array(i64 1)
  %_array129 = bitcast i64* %_raw_array128 to { i64, [0 x i64] }*
  %_ind130 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array129, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind130
  %_ind131 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array129, { i64, [0 x i64] }** %_ind131
  %_raw_array132 = call i64* @oat_alloc_array(i64 1)
  %_array133 = bitcast i64* %_raw_array132 to { i64, [0 x i64] }*
  %_ind134 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array133, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind134
  %_ind135 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array133, { i64, [0 x i64] }** %_ind135
  %_raw_array136 = call i64* @oat_alloc_array(i64 1)
  %_array137 = bitcast i64* %_raw_array136 to { i64, [0 x i64] }*
  %_ind138 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array137, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind138
  %_ind139 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array137, { i64, [0 x i64] }** %_ind139
  %_raw_array140 = call i64* @oat_alloc_array(i64 1)
  %_array141 = bitcast i64* %_raw_array140 to { i64, [0 x i64] }*
  %_ind142 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array141, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind142
  %_ind143 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array127, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array141, { i64, [0 x i64] }** %_ind143
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array127, { i64, [0 x { i64, [0 x i64] }*] }** %_x144
  store i64 0, i64* %_ans145
  store i64 0, i64* %_i146
  br label %_cond151
_cond151:
  %_i147 = load i64, i64* %_i146
  %_bop148 = icmp slt i64 %_i147, 4
  br i1 %_bop148, label %_body150, label %_post149
_body150:
  %_x152 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x144
  %_i153 = load i64, i64* %_i146
  %_index_ptr155 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x152, i32 0, i32 1, i64 %_i153
  %_index156 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr155
  %_index_ptr158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index156, i32 0, i32 1, i32 0
  %_index159 = load i64, i64* %_index_ptr158
  %_ans160 = load i64, i64* %_ans145
  %_bop161 = sub i64 %_index159, %_ans160
  store i64 %_bop161, i64* %_ans145
  %_i162 = load i64, i64* %_i146
  %_bop163 = add i64 %_i162, 1
  store i64 %_bop163, i64* %_i146
  br label %_cond151
_post149:
  %_unop164 = xor i64 5, -1
  %_bop165 = and i64 5, %_unop164
  %_bop166 = or i64 %_bop165, 0
  %_bop167 = icmp ne i64 %_bop166, 0
  br i1 %_bop167, label %_then173, label %_else172
_then173:
  %_ans168 = load i64, i64* %_ans145
  ret i64 %_ans168
_else172:
  %_ans169 = load i64, i64* %_ans145
  %_unop170 = sub i64 0, %_ans169
  ret i64 %_unop170
_merge171:
  %_ans174 = load i64, i64* %_ans145
  ret i64 %_ans174
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
