; generated from: oatprograms/run1.oat
target triple = "x86_64-unknown-linux"
@i = global i64 42
@_constant985 = global i64 42

define i64 @f(i64 %_x982) {
  %_x983 = alloca i64
  store i64 %_x982, i64* %_x983
  %_x984 = load i64, i64* %_x983
  ret i64 %_x984
}

define i64 @g({ i64, [0 x i64] }* %_y977) {
  %_y978 = alloca { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_y977, { i64, [0 x i64] }** %_y978
  %_y979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_y978
  %_index_ptr980 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_y979, i32 0, i32 1, i32 2
  %_index981 = load i64, i64* %_index_ptr980
  ret i64 %_index981
}

define i64 @program(i64 %_argc924, { i64, [0 x i8*] }* %_argv922) {
  %_argc925 = alloca i64
  %_argv923 = alloca { i64, [0 x i8*] }*
  %_garr938 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_arr945 = alloca { i64, [0 x i64] }*
  %_p946 = alloca i64
  %_j947 = alloca i64
  store i64 %_argc924, i64* %_argc925
  store { i64, [0 x i8*] }* %_argv922, { i64, [0 x i8*] }** %_argv923
  %_raw_array926 = call i64* @oat_alloc_array(i64 2)
  %_array927 = bitcast i64* %_raw_array926 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array928 = call i64* @oat_alloc_array(i64 2)
  %_array929 = bitcast i64* %_raw_array928 to { i64, [0 x i64] }*
  %_ind930 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array929, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind930
  %_ind931 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array929, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind931
  %_ind932 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array927, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array929, { i64, [0 x i64] }** %_ind932
  %_raw_array933 = call i64* @oat_alloc_array(i64 2)
  %_array934 = bitcast i64* %_raw_array933 to { i64, [0 x i64] }*
  %_ind935 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array934, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind935
  %_ind936 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array934, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind936
  %_ind937 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array927, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array934, { i64, [0 x i64] }** %_ind937
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array927, { i64, [0 x { i64, [0 x i64] }*] }** %_garr938
  %_raw_array939 = call i64* @oat_alloc_array(i64 4)
  %_array940 = bitcast i64* %_raw_array939 to { i64, [0 x i64] }*
  %_ind941 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind941
  %_ind942 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind942
  %_ind943 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 2
  store i64 3, i64* %_ind943
  %_ind944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array940, i32 0, i32 1, i32 3
  store i64 4, i64* %_ind944
  store { i64, [0 x i64] }* %_array940, { i64, [0 x i64] }** %_arr945
  store i64 0, i64* %_p946
  store i64 0, i64* %_j947
  br label %_cond952
_cond952:
  %_j948 = load i64, i64* %_j947
  %_bop949 = icmp slt i64 %_j948, 100
  br i1 %_bop949, label %_body951, label %_post950
_body951:
  %_p953 = load i64, i64* %_p946
  %_bop954 = add i64 %_p953, 1
  store i64 %_bop954, i64* %_p946
  %_j955 = load i64, i64* %_j947
  %_bop956 = add i64 %_j955, 1
  store i64 %_bop956, i64* %_j947
  br label %_cond952
_post950:
  %_arr957 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr945
  %_result958 = call i64 @g({ i64, [0 x i64] }* %_arr957)
  %_i959 = load i64, i64* @i
  %_result960 = call i64 @f(i64 %_i959)
  %_bop961 = add i64 %_result958, %_result960
  %_arr962 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_arr945
  %_index_ptr963 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_arr962, i32 0, i32 1, i32 3
  %_index964 = load i64, i64* %_index_ptr963
  %_result965 = call i64 @f(i64 %_index964)
  %_bop966 = add i64 %_bop961, %_result965
  %_garr967 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_garr938
  %_index_ptr968 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_garr967, i32 0, i32 1, i32 1
  %_index969 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr968
  %_index_ptr970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index969, i32 0, i32 1, i32 1
  %_index971 = load i64, i64* %_index_ptr970
  %_result972 = call i64 @f(i64 %_index971)
  %_bop973 = add i64 %_bop966, %_result972
  %_p974 = load i64, i64* %_p946
  %_result975 = call i64 @f(i64 %_p974)
  %_bop976 = add i64 %_bop973, %_result975
  ret i64 %_bop976
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
