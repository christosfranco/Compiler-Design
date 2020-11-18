; generated from: oatprograms/run7.oat
target triple = "x86_64-unknown-linux"
@arr = global { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* null

define i64 @program(i64 %_argc936, { i64, [0 x i8*] }* %_argv934) {
  %_argc937 = alloca i64
  %_argv935 = alloca { i64, [0 x i8*] }*
  store i64 %_argc936, i64* %_argc937
  store { i64, [0 x i8*] }* %_argv934, { i64, [0 x i8*] }** %_argv935
  %_raw_array938 = call i64* @oat_alloc_array(i64 3)
  %_array939 = bitcast i64* %_raw_array938 to { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*
  %_raw_array940 = call i64* @oat_alloc_array(i64 2)
  %_array941 = bitcast i64* %_raw_array940 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array942 = call i64* @oat_alloc_array(i64 2)
  %_array943 = bitcast i64* %_raw_array942 to { i64, [0 x i64] }*
  %_ind944 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array943, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind944
  %_ind945 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array943, i32 0, i32 1, i32 1
  store i64 2, i64* %_ind945
  %_ind946 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array941, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array943, { i64, [0 x i64] }** %_ind946
  %_raw_array947 = call i64* @oat_alloc_array(i64 2)
  %_array948 = bitcast i64* %_raw_array947 to { i64, [0 x i64] }*
  %_ind949 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array948, i32 0, i32 1, i32 0
  store i64 3, i64* %_ind949
  %_ind950 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array948, i32 0, i32 1, i32 1
  store i64 4, i64* %_ind950
  %_ind951 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array941, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array948, { i64, [0 x i64] }** %_ind951
  %_ind952 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array939, i32 0, i32 1, i32 0
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array941, { i64, [0 x { i64, [0 x i64] }*] }** %_ind952
  %_raw_array953 = call i64* @oat_alloc_array(i64 1)
  %_array954 = bitcast i64* %_raw_array953 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array955 = call i64* @oat_alloc_array(i64 1)
  %_array956 = bitcast i64* %_raw_array955 to { i64, [0 x i64] }*
  %_ind957 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array956, i32 0, i32 1, i32 0
  store i64 5, i64* %_ind957
  %_ind958 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array954, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array956, { i64, [0 x i64] }** %_ind958
  %_ind959 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array939, i32 0, i32 1, i32 1
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array954, { i64, [0 x { i64, [0 x i64] }*] }** %_ind959
  %_raw_array960 = call i64* @oat_alloc_array(i64 2)
  %_array961 = bitcast i64* %_raw_array960 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array962 = call i64* @oat_alloc_array(i64 2)
  %_array963 = bitcast i64* %_raw_array962 to { i64, [0 x i64] }*
  %_ind964 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 0
  store i64 10, i64* %_ind964
  %_ind965 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array963, i32 0, i32 1, i32 1
  store i64 20, i64* %_ind965
  %_ind966 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array961, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array963, { i64, [0 x i64] }** %_ind966
  %_raw_array967 = call i64* @oat_alloc_array(i64 2)
  %_array968 = bitcast i64* %_raw_array967 to { i64, [0 x i64] }*
  %_ind969 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 0
  store i64 30, i64* %_ind969
  %_ind970 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array968, i32 0, i32 1, i32 1
  store i64 40, i64* %_ind970
  %_ind971 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array961, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array968, { i64, [0 x i64] }** %_ind971
  %_ind972 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array939, i32 0, i32 1, i32 2
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array961, { i64, [0 x { i64, [0 x i64] }*] }** %_ind972
  store { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_array939, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_arr973 = load { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }*, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }** @arr
  %_index_ptr975 = getelementptr { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }, { i64, [0 x { i64, [0 x { i64, [0 x i64] }*] }*] }* %_arr973, i32 0, i32 1, i32 2
  %_index976 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_index_ptr975
  %_index_ptr978 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_index976, i32 0, i32 1, i32 0
  %_index979 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr978
  %_index_ptr981 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index979, i32 0, i32 1, i32 1
  %_index982 = load i64, i64* %_index_ptr981
  ret i64 %_index982
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
