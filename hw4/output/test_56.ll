; generated from: oatprograms/run16.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc1421, { i64, [0 x i8*] }* %_argv1419) {
  %_argc1422 = alloca i64
  %_argv1420 = alloca { i64, [0 x i8*] }*
  %_x1423 = alloca i64
  %_a1471 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_b1473 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  store i64 %_argc1421, i64* %_argc1422
  store { i64, [0 x i8*] }* %_argv1419, { i64, [0 x i8*] }** %_argv1420
  store i64 10, i64* %_x1423
  %_raw_array1424 = call i64* @oat_alloc_array(i64 3)
  %_array1425 = bitcast i64* %_raw_array1424 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array1426 = call i64* @oat_alloc_array(i64 3)
  %_array1427 = bitcast i64* %_raw_array1426 to { i64, [0 x i64] }*
  %_x1428 = load i64, i64* %_x1423
  %_bop1429 = add i64 %_x1428, 0
  %_bop1430 = add i64 %_bop1429, 0
  %_ind1431 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1427, i32 0, i32 1, i32 0
  store i64 %_bop1430, i64* %_ind1431
  %_x1432 = load i64, i64* %_x1423
  %_bop1433 = add i64 %_x1432, 0
  %_bop1434 = add i64 %_bop1433, 1
  %_ind1435 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1427, i32 0, i32 1, i32 1
  store i64 %_bop1434, i64* %_ind1435
  %_x1436 = load i64, i64* %_x1423
  %_bop1437 = add i64 %_x1436, 0
  %_bop1438 = add i64 %_bop1437, 2
  %_ind1439 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1427, i32 0, i32 1, i32 2
  store i64 %_bop1438, i64* %_ind1439
  %_ind1440 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1425, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array1427, { i64, [0 x i64] }** %_ind1440
  %_raw_array1441 = call i64* @oat_alloc_array(i64 3)
  %_array1442 = bitcast i64* %_raw_array1441 to { i64, [0 x i64] }*
  %_x1443 = load i64, i64* %_x1423
  %_bop1444 = add i64 %_x1443, 1
  %_bop1445 = add i64 %_bop1444, 0
  %_ind1446 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 0
  store i64 %_bop1445, i64* %_ind1446
  %_x1447 = load i64, i64* %_x1423
  %_bop1448 = add i64 %_x1447, 1
  %_bop1449 = add i64 %_bop1448, 1
  %_ind1450 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 1
  store i64 %_bop1449, i64* %_ind1450
  %_x1451 = load i64, i64* %_x1423
  %_bop1452 = add i64 %_x1451, 1
  %_bop1453 = add i64 %_bop1452, 2
  %_ind1454 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1442, i32 0, i32 1, i32 2
  store i64 %_bop1453, i64* %_ind1454
  %_ind1455 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1425, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array1442, { i64, [0 x i64] }** %_ind1455
  %_raw_array1456 = call i64* @oat_alloc_array(i64 3)
  %_array1457 = bitcast i64* %_raw_array1456 to { i64, [0 x i64] }*
  %_x1458 = load i64, i64* %_x1423
  %_bop1459 = add i64 %_x1458, 2
  %_bop1460 = add i64 %_bop1459, 0
  %_ind1461 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1457, i32 0, i32 1, i32 0
  store i64 %_bop1460, i64* %_ind1461
  %_x1462 = load i64, i64* %_x1423
  %_bop1463 = add i64 %_x1462, 2
  %_bop1464 = add i64 %_bop1463, 1
  %_ind1465 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1457, i32 0, i32 1, i32 1
  store i64 %_bop1464, i64* %_ind1465
  %_x1466 = load i64, i64* %_x1423
  %_bop1467 = add i64 %_x1466, 2
  %_bop1468 = add i64 %_bop1467, 2
  %_ind1469 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array1457, i32 0, i32 1, i32 2
  store i64 %_bop1468, i64* %_ind1469
  %_ind1470 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array1425, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array1457, { i64, [0 x i64] }** %_ind1470
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array1425, { i64, [0 x { i64, [0 x i64] }*] }** %_a1471
  %_a1472 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1471
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1472, { i64, [0 x { i64, [0 x i64] }*] }** %_b1473
  %_b1474 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_b1473
  %_index_ptr1476 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_b1474, i32 0, i32 1, i32 2
  %_index1477 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr1476
  %_index_ptr1479 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index1477, i32 0, i32 1, i32 1
  %_index1480 = load i64, i64* %_index_ptr1479
  ret i64 %_index1480
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
