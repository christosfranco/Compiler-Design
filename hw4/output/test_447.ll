; generated from: oatprograms/run35.oat
target triple = "x86_64-unknown-linux"
@a = global { i64, [0 x { i64, [0 x i64] }*] }* null

define i64 @program(i64 %_argc629, { i64, [0 x i8*] }* %_argv627) {
  %_argc630 = alloca i64
  %_argv628 = alloca { i64, [0 x i8*] }*
  %_s654 = alloca i64
  %_i655 = alloca i64
  %_j661 = alloca i64
  store i64 %_argc629, i64* %_argc630
  store { i64, [0 x i8*] }* %_argv627, { i64, [0 x i8*] }** %_argv628
  %_raw_array631 = call i64* @oat_alloc_array(i64 3)
  %_array632 = bitcast i64* %_raw_array631 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array633 = call i64* @oat_alloc_array(i64 4)
  %_array634 = bitcast i64* %_raw_array633 to { i64, [0 x i64] }*
  %_ind635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array634, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind635
  %_ind636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array634, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind636
  %_ind637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array634, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind637
  %_ind638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array634, i32 0, i32 1, i32 3
  store i64 3, i64* %_ind638
  %_ind639 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array632, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array634, { i64, [0 x i64] }** %_ind639
  %_raw_array640 = call i64* @oat_alloc_array(i64 4)
  %_array641 = bitcast i64* %_raw_array640 to { i64, [0 x i64] }*
  %_ind642 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 0
  store i64 4, i64* %_ind642
  %_ind643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 1
  store i64 5, i64* %_ind643
  %_ind644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 2
  store i64 6, i64* %_ind644
  %_ind645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array641, i32 0, i32 1, i32 3
  store i64 7, i64* %_ind645
  %_ind646 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array632, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array641, { i64, [0 x i64] }** %_ind646
  %_raw_array647 = call i64* @oat_alloc_array(i64 4)
  %_array648 = bitcast i64* %_raw_array647 to { i64, [0 x i64] }*
  %_ind649 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array648, i32 0, i32 1, i32 0
  store i64 8, i64* %_ind649
  %_ind650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array648, i32 0, i32 1, i32 1
  store i64 9, i64* %_ind650
  %_ind651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array648, i32 0, i32 1, i32 2
  store i64 10, i64* %_ind651
  %_ind652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array648, i32 0, i32 1, i32 3
  store i64 11, i64* %_ind652
  %_ind653 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array632, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array648, { i64, [0 x i64] }** %_ind653
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array632, { i64, [0 x { i64, [0 x i64] }*] }** @a
  store i64 0, i64* %_s654
  store i64 0, i64* %_i655
  br label %_cond660
_cond660:
  %_i656 = load i64, i64* %_i655
  %_bop657 = icmp slt i64 %_i656, 3
  br i1 %_bop657, label %_body659, label %_post658
_body659:
  store i64 0, i64* %_j661
  br label %_cond666
_cond666:
  %_j662 = load i64, i64* %_j661
  %_bop663 = icmp slt i64 %_j662, 4
  br i1 %_bop663, label %_body665, label %_post664
_body665:
  %_s667 = load i64, i64* %_s654
  %_a668 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** @a
  %_i669 = load i64, i64* %_i655
  %_index_ptr671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a668, i32 0, i32 1, i64 %_i669
  %_index672 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr671
  %_j673 = load i64, i64* %_j661
  %_index_ptr675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index672, i32 0, i32 1, i64 %_j673
  %_index676 = load i64, i64* %_index_ptr675
  %_bop677 = add i64 %_s667, %_index676
  store i64 %_bop677, i64* %_s654
  %_j678 = load i64, i64* %_j661
  %_bop679 = add i64 %_j678, 1
  store i64 %_bop679, i64* %_j661
  br label %_cond666
_post664:
  %_i680 = load i64, i64* %_i655
  %_bop681 = add i64 %_i680, 1
  store i64 %_bop681, i64* %_i655
  br label %_cond660
_post658:
  %_s682 = load i64, i64* %_s654
  ret i64 %_s682
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
