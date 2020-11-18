; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %argc, { i64, [0 x i8*] }* %argv) {
  %_a1505 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2517 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3529 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4541 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5547 = alloca { i64, [0 x i64] }*
  %_alloca492 = alloca i64
  store i64 %argc, i64* %_alloca492
  %_alloca493 = alloca { i64, [0 x i8*] }*
  store { i64, [0 x i8*] }* %argv, { i64, [0 x i8*] }** %_alloca493
  %_raw_array494 = call i64* @oat_alloc_array(i64 3)
  %_array495 = bitcast i64* %_raw_array494 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array496 = call i64* @oat_alloc_array(i64 1)
  %_array497 = bitcast i64* %_raw_array496 to { i64, [0 x i64] }*
  %_ind498 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array495, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array497, { i64, [0 x i64] }** %_ind498
  %_raw_array499 = call i64* @oat_alloc_array(i64 1)
  %_array500 = bitcast i64* %_raw_array499 to { i64, [0 x i64] }*
  %_ind501 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array495, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array500, { i64, [0 x i64] }** %_ind501
  %_raw_array502 = call i64* @oat_alloc_array(i64 1)
  %_array503 = bitcast i64* %_raw_array502 to { i64, [0 x i64] }*
  %_ind504 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array495, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array503, { i64, [0 x i64] }** %_ind504
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array495, { i64, [0 x { i64, [0 x i64] }*] }** %_a1505
  %_raw_array506 = call i64* @oat_alloc_array(i64 3)
  %_array507 = bitcast i64* %_raw_array506 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array508 = call i64* @oat_alloc_array(i64 1)
  %_array509 = bitcast i64* %_raw_array508 to { i64, [0 x i64] }*
  %_ind510 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array507, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array509, { i64, [0 x i64] }** %_ind510
  %_raw_array511 = call i64* @oat_alloc_array(i64 1)
  %_array512 = bitcast i64* %_raw_array511 to { i64, [0 x i64] }*
  %_ind513 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array507, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array512, { i64, [0 x i64] }** %_ind513
  %_raw_array514 = call i64* @oat_alloc_array(i64 1)
  %_array515 = bitcast i64* %_raw_array514 to { i64, [0 x i64] }*
  %_ind516 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array507, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array515, { i64, [0 x i64] }** %_ind516
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array507, { i64, [0 x { i64, [0 x i64] }*] }** %_a2517
  %_raw_array518 = call i64* @oat_alloc_array(i64 3)
  %_array519 = bitcast i64* %_raw_array518 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array520 = call i64* @oat_alloc_array(i64 1)
  %_array521 = bitcast i64* %_raw_array520 to { i64, [0 x i64] }*
  %_ind522 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array519, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array521, { i64, [0 x i64] }** %_ind522
  %_raw_array523 = call i64* @oat_alloc_array(i64 1)
  %_array524 = bitcast i64* %_raw_array523 to { i64, [0 x i64] }*
  %_ind525 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array519, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array524, { i64, [0 x i64] }** %_ind525
  %_raw_array526 = call i64* @oat_alloc_array(i64 1)
  %_array527 = bitcast i64* %_raw_array526 to { i64, [0 x i64] }*
  %_ind528 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array519, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array527, { i64, [0 x i64] }** %_ind528
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array519, { i64, [0 x { i64, [0 x i64] }*] }** %_a3529
  %_raw_array530 = call i64* @oat_alloc_array(i64 3)
  %_array531 = bitcast i64* %_raw_array530 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array532 = call i64* @oat_alloc_array(i64 1)
  %_array533 = bitcast i64* %_raw_array532 to { i64, [0 x i64] }*
  %_ind534 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array531, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array533, { i64, [0 x i64] }** %_ind534
  %_raw_array535 = call i64* @oat_alloc_array(i64 1)
  %_array536 = bitcast i64* %_raw_array535 to { i64, [0 x i64] }*
  %_ind537 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array531, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array536, { i64, [0 x i64] }** %_ind537
  %_raw_array538 = call i64* @oat_alloc_array(i64 1)
  %_array539 = bitcast i64* %_raw_array538 to { i64, [0 x i64] }*
  %_ind540 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array531, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array539, { i64, [0 x i64] }** %_ind540
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array531, { i64, [0 x { i64, [0 x i64] }*] }** %_a4541
  %_raw_array542 = call i64* @oat_alloc_array(i64 3)
  %_array543 = bitcast i64* %_raw_array542 to { i64, [0 x i64] }*
  %_ind544 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array543, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind544
  %_ind545 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array543, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind545
  %_ind546 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array543, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind546
  store { i64, [0 x i64] }* %_array543, { i64, [0 x i64] }** %_a5547
  %_a2548 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2517
  %_index_ptr550 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2548, i32 0, i32 1, i32 0
  %_a5551 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5547
  store { i64, [0 x i64] }* %_a5551, { i64, [0 x i64] }** %_index_ptr550
  %_a2552 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2517
  %_index_ptr554 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2552, i32 0, i32 1, i32 0
  %_index555 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr554
  %_index_ptr557 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index555, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr557
  %_a2558 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2517
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2558, { i64, [0 x { i64, [0 x i64] }*] }** %_a1505
  %_a1559 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1505
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1559, { i64, [0 x { i64, [0 x i64] }*] }** %_a3529
  %_a4560 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4541
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4560, { i64, [0 x { i64, [0 x i64] }*] }** %_a1505
  %_a3561 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3529
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3561, { i64, [0 x { i64, [0 x i64] }*] }** %_a2517
  %_a2562 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2517
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2562, { i64, [0 x { i64, [0 x i64] }*] }** %_a4541
  %_a4563 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4541
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4563, { i64, [0 x { i64, [0 x i64] }*] }** %_a3529
  %_a3564 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3529
  %_index_ptr566 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3564, i32 0, i32 1, i32 0
  %_index567 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr566
  %_index_ptr569 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index567, i32 0, i32 1, i32 0
  %_index570 = load i64, i64* %_index_ptr569
  ret i64 %_index570
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
