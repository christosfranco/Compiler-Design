; generated from: oatprograms/easyrun10.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc144, { i64, [0 x i8*] }* %_argv142) {
  %_argc145 = alloca i64
  %_argv143 = alloca { i64, [0 x i8*] }*
  %_x164 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_ans165 = alloca i64
  %_i166 = alloca i64
  store i64 %_argc144, i64* %_argc145
  store { i64, [0 x i8*] }* %_argv142, { i64, [0 x i8*] }** %_argv143
  %_raw_array146 = call i64* @oat_alloc_array(i64 4)
  %_array147 = bitcast i64* %_raw_array146 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array148 = call i64* @oat_alloc_array(i64 1)
  %_array149 = bitcast i64* %_raw_array148 to { i64, [0 x i64] }*
  %_ind150 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array149, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind150
  %_ind151 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array147, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array149, { i64, [0 x i64] }** %_ind151
  %_raw_array152 = call i64* @oat_alloc_array(i64 1)
  %_array153 = bitcast i64* %_raw_array152 to { i64, [0 x i64] }*
  %_ind154 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array153, i32 0, i32 1, i32 0
  store i64 2, i64* %_ind154
  %_ind155 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array147, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array153, { i64, [0 x i64] }** %_ind155
  %_raw_array156 = call i64* @oat_alloc_array(i64 1)
  %_array157 = bitcast i64* %_raw_array156 to { i64, [0 x i64] }*
  %_ind158 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array157, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind158
  %_ind159 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array147, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array157, { i64, [0 x i64] }** %_ind159
  %_raw_array160 = call i64* @oat_alloc_array(i64 1)
  %_array161 = bitcast i64* %_raw_array160 to { i64, [0 x i64] }*
  %_ind162 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array161, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind162
  %_ind163 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array147, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array161, { i64, [0 x i64] }** %_ind163
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array147, { i64, [0 x { i64, [0 x i64] }*] }** %_x164
  store i64 0, i64* %_ans165
  store i64 0, i64* %_i166
  br label %_cond171
_cond171:
  %_i167 = load i64, i64* %_i166
  %_bop168 = icmp slt i64 %_i167, 4
  br i1 %_bop168, label %_body170, label %_post169
_body170:
  %_x172 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_x164
  %_i173 = load i64, i64* %_i166
  %_index_ptr175 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_x172, i32 0, i32 1, i64 %_i173
  %_index176 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr175
  %_index_ptr178 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index176, i32 0, i32 1, i32 0
  %_index179 = load i64, i64* %_index_ptr178
  %_ans180 = load i64, i64* %_ans165
  %_bop181 = sub i64 %_index179, %_ans180
  store i64 %_bop181, i64* %_ans165
  %_i182 = load i64, i64* %_i166
  %_bop183 = add i64 %_i182, 1
  store i64 %_bop183, i64* %_i166
  br label %_cond171
_post169:
  %_unop184 = xor i64 5, -1
  %_bop185 = and i64 5, %_unop184
  %_bop186 = or i64 %_bop185, 0
  %_bop187 = icmp ne i64 %_bop186, 0
  br i1 %_bop187, label %_then193, label %_else192
_then193:
  %_ans188 = load i64, i64* %_ans165
  ret i64 %_ans188
_else192:
  %_ans189 = load i64, i64* %_ans165
  %_unop190 = sub i64 0, %_ans189
  ret i64 %_unop190
_merge191:
  %_ans194 = load i64, i64* %_ans165
  ret i64 %_ans194
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
