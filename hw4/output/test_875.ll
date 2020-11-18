; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc607, { i64, [0 x i8*] }* %_argv605) {
  %_argc608 = alloca i64
  %_argv606 = alloca { i64, [0 x i8*] }*
  %_s632 = alloca i64
  %_i633 = alloca i64
  %_j639 = alloca i64
  store i64 %_argc607, i64* %_argc608
  store { i64, [0 x i8*] }* %_argv605, { i64, [0 x i8*] }** %_argv606
  %_raw_array609 = call i64* @oat_alloc_array(i64 3)
  %_array610 = bitcast i64* %_raw_array609 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array611 = call i64* @oat_alloc_array(i64 4)
  %_array612 = bitcast i64* %_raw_array611 to { i64, [0 x i64] }*
  %_ind613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind613
  %_ind614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind614
  %_ind615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind615
  %_ind616 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array612, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind616
  %_ind617 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array610, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array612, { i64, [0 x i64] }** %_ind617
  %_raw_array618 = call i64* @oat_alloc_array(i64 4)
  %_array619 = bitcast i64* %_raw_array618 to { i64, [0 x i64] }*
  %_ind620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind620
  %_ind621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind621
  %_ind622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind622
  %_ind623 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array619, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind623
  %_ind624 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array610, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array619, { i64, [0 x i64] }** %_ind624
  %_raw_array625 = call i64* @oat_alloc_array(i64 4)
  %_array626 = bitcast i64* %_raw_array625 to { i64, [0 x i64] }*
  %_ind627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array626, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind627
  %_ind628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array626, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind628
  %_ind629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array626, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind629
  %_ind630 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array626, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind630
  %_ind631 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array610, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array626, { i64, [0 x i64] }** %_ind631
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array610, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s632
  store i64 0, i64* %_i633
  br label %_cond638
_cond638:
  %_i634 = load i64, i64* %_i633
  %_bop635 = icmp slt i64 %_i634, 3
  br i1 %_bop635, label %_body637, label %_post636
_body637:
  store i64 0, i64* %_j639
  br label %_cond644
_cond644:
  %_j640 = load i64, i64* %_j639
  %_bop641 = icmp slt i64 %_j640, 4
  br i1 %_bop641, label %_body643, label %_post642
_body643:
  %_s645 = load i64, i64* %_s632
  %_a646 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i647 = load i64, i64* %_i633
  %_index_ptr648 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a646, i32 0, i32 1, i64 %_i647
  %_index649 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr648
  %_j650 = load i64, i64* %_j639
  %_index_ptr651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index649, i32 0, i32 1, i64 %_j650
  %_index652 = load i64, i64* %_index_ptr651
  %_bop653 = add i64 %_s645, %_index652
  store i64 %_bop653, i64* %_s632
  %_j654 = load i64, i64* %_j639
  %_bop655 = add i64 %_j654, 1
  store i64 %_bop655, i64* %_j639
  br label %_cond644
_post642:
  %_i656 = load i64, i64* %_i633
  %_bop657 = add i64 %_i656, 1
  store i64 %_bop657, i64* %_i633
  br label %_cond638
_post636:
  %_s658 = load i64, i64* %_s632
  ret i64 %_s658
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
