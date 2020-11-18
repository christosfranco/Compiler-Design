; generated from: oatprograms/run6.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc911, { i64, [0 x i8*] }* %_argv909) {
  %_argc912 = alloca i64
  %_argv910 = alloca { i64, [0 x i8*] }*
  %_arr925 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc911, i64* %_argc912
  store { i64, [0 x i8*] }* %_argv909, { i64, [0 x i8*] }** %_argv910
  %_raw_array913 = call i64* @oat_alloc_array(i64 2)
  %_array914 = bitcast i64* %_raw_array913 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array915 = call i64* @oat_alloc_array(i64 2)
  %_array916 = bitcast i64* %_raw_array915 to { i64, [0 x i64] }*
  %_ind917 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array916, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind917
  %_ind918 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array916, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind918
  %_ind919 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array916, { i64, [0 x i64] }** %_ind919
  %_raw_array920 = call i64* @oat_alloc_array(i64 2)
  %_array921 = bitcast i64* %_raw_array920 to { i64, [0 x i64] }*
  %_ind922 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array921, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind922
  %_ind923 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array921, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind923
  %_ind924 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array914, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array921, { i64, [0 x i64] }** %_ind924
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array914, { i64, [0 x { i64, [0 x i64] }*] }** %_arr925
  %_arr926 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_arr925
  %_index_ptr928 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_arr926, i32 0, i32 1, i32 0
  %_index929 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr928
  %_index_ptr931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index929, i32 0, i32 1, i32 0
  %_index932 = load i64, i64* %_index_ptr931
  ret i64 %_index932
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
