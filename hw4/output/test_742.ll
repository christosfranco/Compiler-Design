; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc142, { i64, [0 x i8*] }* %_argv140) {
  %_argc143 = alloca i64
  %_argv141 = alloca { i64, [0 x i8*] }*
  %_x162 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans163 = alloca i64
  %_i164 = alloca i64
  store i64 %_argc142, i64* %_argc143
  store { i64, [0 x i8*] }* %_argv140, { i64, [0 x i8*] }** %_argv141
  %_raw_array144 = call i64* @oat_alloc_array(i64 4)
  %_array145 = bitcast i64* %_raw_array144 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array146 = call i64* @oat_alloc_array(i64 1)
  %_array147 = bitcast i64* %_raw_array146 to { i64, [0 x i64] }*
  %_ind148 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array147, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind148
  %_ind149 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array145, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array147, { i64, [0 x i64] }** %_ind149
  %_raw_array150 = call i64* @oat_alloc_array(i64 1)
  %_array151 = bitcast i64* %_raw_array150 to { i64, [0 x i64] }*
  %_ind152 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array151, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind152
  %_ind153 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array145, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array151, { i64, [0 x i64] }** %_ind153
  %_raw_array154 = call i64* @oat_alloc_array(i64 1)
  %_array155 = bitcast i64* %_raw_array154 to { i64, [0 x i64] }*
  %_ind156 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array155, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind156
  %_ind157 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array145, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array155, { i64, [0 x i64] }** %_ind157
  %_raw_array158 = call i64* @oat_alloc_array(i64 1)
  %_array159 = bitcast i64* %_raw_array158 to { i64, [0 x i64] }*
  %_ind160 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array159, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind160
  %_ind161 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array145, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array159, { i64, [0 x i64] }** %_ind161
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array145, { i64, [0 x { i64, [0 x i64] }*] }** %_x162
  store i64 0, i64* %_ans163
  store i64 0, i64* %_i164
  br label %_cond169
_cond169:
  %_i165 = load i64, i64* %_i164
  %_bop166 = icmp slt i64 %_i165, 4
  br i1 %_bop166, label %_body168, label %_post167
_body168:
  %_x170 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x162
  %_i171 = load i64, i64* %_i164
  %_index_ptr172 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x170, i32 0, i32 1, i64 %_i171
  %_index173 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr172
  %_index_ptr174 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index173, i32 0, i32 1, i32 0
  %_index175 = load i64, i64* %_index_ptr174
  %_ans176 = load i64, i64* %_ans163
  %_bop177 = sub i64 %_index175, %_ans176
  store i64 %_bop177, i64* %_ans163
  %_i178 = load i64, i64* %_i164
  %_bop179 = add i64 %_i178, 1
  store i64 %_bop179, i64* %_i164
  br label %_cond169
_post167:
  %_unop180 = xor i64 5, -1
  %_bop181 = and i64 5, %_unop180
  %_bop182 = or i64 %_bop181, 0
  %_bop183 = icmp ne i64 %_bop182, 0
  br i1 %_bop183, label %_then189, label %_else188
_then189:
  %_ans184 = load i64, i64* %_ans163
  ret i64 %_ans184
_else188:
  %_ans185 = load i64, i64* %_ans163
  %_unop186 = sub i64 0, %_ans185
  ret i64 %_unop186
_merge187:
  %_ans190 = load i64, i64* %_ans163
  ret i64 %_ans190
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
