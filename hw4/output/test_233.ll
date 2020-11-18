; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc630, { i64, [0 x i8*] }* %_argv628) {
  %_argc631 = alloca i64
  %_argv629 = alloca { i64, [0 x i8*] }*
  %_s655 = alloca i64
  %_i656 = alloca i64
  %_j662 = alloca i64
  store i64 %_argc630, i64* %_argc631
  store { i64, [0 x i8*] }* %_argv628, { i64, [0 x i8*] }** %_argv629
  %_raw_array632 = call i64* @oat_alloc_array(i64 3)
  %_array633 = bitcast i64* %_raw_array632 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array634 = call i64* @oat_alloc_array(i64 4)
  %_array635 = bitcast i64* %_raw_array634 to { i64, [0 x i64] }*
  %_ind636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array635, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind636
  %_ind637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array635, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind637
  %_ind638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array635, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind638
  %_ind639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array635, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind639
  %_ind640 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array633, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array635, { i64, [0 x i64] }** %_ind640
  %_raw_array641 = call i64* @oat_alloc_array(i64 4)
  %_array642 = bitcast i64* %_raw_array641 to { i64, [0 x i64] }*
  %_ind643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array642, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind643
  %_ind644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array642, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind644
  %_ind645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array642, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind645
  %_ind646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array642, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind646
  %_ind647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array633, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array642, { i64, [0 x i64] }** %_ind647
  %_raw_array648 = call i64* @oat_alloc_array(i64 4)
  %_array649 = bitcast i64* %_raw_array648 to { i64, [0 x i64] }*
  %_ind650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array649, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind650
  %_ind651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array649, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind651
  %_ind652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array649, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind652
  %_ind653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array649, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind653
  %_ind654 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array633, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array649, { i64, [0 x i64] }** %_ind654
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array633, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s655
  store i64 0, i64* %_i656
  br label %_cond661
_cond661:
  %_i657 = load i64, i64* %_i656
  %_bop658 = icmp slt i64 %_i657, 3
  br i1 %_bop658, label %_body660, label %_post659
_body660:
  store i64 0, i64* %_j662
  br label %_cond667
_cond667:
  %_j663 = load i64, i64* %_j662
  %_bop664 = icmp slt i64 %_j663, 4
  br i1 %_bop664, label %_body666, label %_post665
_body666:
  %_s668 = load i64, i64* %_s655
  %_a669 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i670 = load i64, i64* %_i656
  %_index_ptr672 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a669, i32 0, i32 1, i64 %_i670
  %_index673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr672
  %_j674 = load i64, i64* %_j662
  %_index_ptr676 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index673, i32 0, i32 1, i64 %_j674
  %_index677 = load i64, i64* %_index_ptr676
  %_bop678 = add i64 %_s668, %_index677
  store i64 %_bop678, i64* %_s655
  %_j679 = load i64, i64* %_j662
  %_bop680 = add i64 %_j679, 1
  store i64 %_bop680, i64* %_j662
  br label %_cond667
_post665:
  %_i681 = load i64, i64* %_i656
  %_bop682 = add i64 %_i681, 1
  store i64 %_bop682, i64* %_i656
  br label %_cond661
_post659:
  %_s683 = load i64, i64* %_s655
  ret i64 %_s683
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
