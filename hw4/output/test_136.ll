; generated from: oatprograms/run42.oat
target triple = "x86_64-unknown-linux"
define i64 @program(i64 %_argc631, { i64, [0 x i8*] }* %_argv629) {
  %_argc632 = alloca i64
  %_argv630 = alloca { i64, [0 x i8*] }*
  %_a1644 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a2656 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a3668 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a4680 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_a5686 = alloca { i64, [0 x i64] }*
  store i64 %_argc631, i64* %_argc632
  store { i64, [0 x i8*] }* %_argv629, { i64, [0 x i8*] }** %_argv630
  %_raw_array633 = call i64* @oat_alloc_array(i64 3)
  %_array634 = bitcast i64* %_raw_array633 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array635 = call i64* @oat_alloc_array(i64 1)
  %_array636 = bitcast i64* %_raw_array635 to { i64, [0 x i64] }*
  %_ind637 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array634, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array636, { i64, [0 x i64] }** %_ind637
  %_raw_array638 = call i64* @oat_alloc_array(i64 1)
  %_array639 = bitcast i64* %_raw_array638 to { i64, [0 x i64] }*
  %_ind640 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array634, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array639, { i64, [0 x i64] }** %_ind640
  %_raw_array641 = call i64* @oat_alloc_array(i64 1)
  %_array642 = bitcast i64* %_raw_array641 to { i64, [0 x i64] }*
  %_ind643 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array634, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array642, { i64, [0 x i64] }** %_ind643
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array634, { i64, [0 x { i64, [0 x i64] }*] }** %_a1644
  %_raw_array645 = call i64* @oat_alloc_array(i64 3)
  %_array646 = bitcast i64* %_raw_array645 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array647 = call i64* @oat_alloc_array(i64 1)
  %_array648 = bitcast i64* %_raw_array647 to { i64, [0 x i64] }*
  %_ind649 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array646, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array648, { i64, [0 x i64] }** %_ind649
  %_raw_array650 = call i64* @oat_alloc_array(i64 1)
  %_array651 = bitcast i64* %_raw_array650 to { i64, [0 x i64] }*
  %_ind652 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array646, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array651, { i64, [0 x i64] }** %_ind652
  %_raw_array653 = call i64* @oat_alloc_array(i64 1)
  %_array654 = bitcast i64* %_raw_array653 to { i64, [0 x i64] }*
  %_ind655 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array646, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array654, { i64, [0 x i64] }** %_ind655
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array646, { i64, [0 x { i64, [0 x i64] }*] }** %_a2656
  %_raw_array657 = call i64* @oat_alloc_array(i64 3)
  %_array658 = bitcast i64* %_raw_array657 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array659 = call i64* @oat_alloc_array(i64 1)
  %_array660 = bitcast i64* %_raw_array659 to { i64, [0 x i64] }*
  %_ind661 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array658, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array660, { i64, [0 x i64] }** %_ind661
  %_raw_array662 = call i64* @oat_alloc_array(i64 1)
  %_array663 = bitcast i64* %_raw_array662 to { i64, [0 x i64] }*
  %_ind664 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array658, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array663, { i64, [0 x i64] }** %_ind664
  %_raw_array665 = call i64* @oat_alloc_array(i64 1)
  %_array666 = bitcast i64* %_raw_array665 to { i64, [0 x i64] }*
  %_ind667 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array658, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array666, { i64, [0 x i64] }** %_ind667
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array658, { i64, [0 x { i64, [0 x i64] }*] }** %_a3668
  %_raw_array669 = call i64* @oat_alloc_array(i64 3)
  %_array670 = bitcast i64* %_raw_array669 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array671 = call i64* @oat_alloc_array(i64 1)
  %_array672 = bitcast i64* %_raw_array671 to { i64, [0 x i64] }*
  %_ind673 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array670, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array672, { i64, [0 x i64] }** %_ind673
  %_raw_array674 = call i64* @oat_alloc_array(i64 1)
  %_array675 = bitcast i64* %_raw_array674 to { i64, [0 x i64] }*
  %_ind676 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array670, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array675, { i64, [0 x i64] }** %_ind676
  %_raw_array677 = call i64* @oat_alloc_array(i64 1)
  %_array678 = bitcast i64* %_raw_array677 to { i64, [0 x i64] }*
  %_ind679 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array670, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array678, { i64, [0 x i64] }** %_ind679
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array670, { i64, [0 x { i64, [0 x i64] }*] }** %_a4680
  %_raw_array681 = call i64* @oat_alloc_array(i64 3)
  %_array682 = bitcast i64* %_raw_array681 to { i64, [0 x i64] }*
  %_ind683 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind683
  %_ind684 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind684
  %_ind685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array682, i32 0, i32 1, i32 2
  store i64 2, i64* %_ind685
  store { i64, [0 x i64] }* %_array682, { i64, [0 x i64] }** %_a5686
  %_a2687 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2656
  %_index_ptr689 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2687, i32 0, i32 1, i32 0
  %_a5690 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a5686
  store { i64, [0 x i64] }* %_a5690, { i64, [0 x i64] }** %_index_ptr689
  %_a2691 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2656
  %_index_ptr693 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a2691, i32 0, i32 1, i32 0
  %_index694 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr693
  %_index_ptr696 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index694, i32 0, i32 1, i32 0
  store i64 2, i64* %_index_ptr696
  %_a2697 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2656
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2697, { i64, [0 x { i64, [0 x i64] }*] }** %_a1644
  %_a1698 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a1644
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a1698, { i64, [0 x { i64, [0 x i64] }*] }** %_a3668
  %_a4699 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4680
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4699, { i64, [0 x { i64, [0 x i64] }*] }** %_a1644
  %_a3700 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3668
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a3700, { i64, [0 x { i64, [0 x i64] }*] }** %_a2656
  %_a2701 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a2656
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a2701, { i64, [0 x { i64, [0 x i64] }*] }** %_a4680
  %_a4702 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a4680
  store { i64, [0 x { i64, [0 x i64] }*] }* %_a4702, { i64, [0 x { i64, [0 x i64] }*] }** %_a3668
  %_a3703 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_a3668
  %_index_ptr705 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_a3703, i32 0, i32 1, i32 0
  %_index706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr705
  %_index_ptr708 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index706, i32 0, i32 1, i32 0
  %_index709 = load i64, i64* %_index_ptr708
  ret i64 %_index709
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
