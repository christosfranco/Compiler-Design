; generated from: oatprograms/life.oat
target triple = "x86_64-unknown-linux"
@len = global i64 4
@_constant4841 = global i64 4

define i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4813, i64 %_i4811, i64 %_j4809, i64 %_count4807) {
  %_board4814 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4812 = alloca i64
  %_j4810 = alloca i64
  %_count4808 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4813, { i64, [0 x { i64, [0 x i64] }*] }** %_board4814
  store i64 %_i4811, i64* %_i4812
  store i64 %_j4809, i64* %_j4810
  store i64 %_count4807, i64* %_count4808
  %_i4815 = load i64, i64* %_i4812
  %_bop4816 = icmp sge i64 %_i4815, 0
  %_j4817 = load i64, i64* %_j4810
  %_bop4818 = icmp sge i64 %_j4817, 0
  %_bop4819 = and i1 %_bop4816, %_bop4818
  %_i4820 = load i64, i64* %_i4812
  %_len4821 = load i64, i64* @len
  %_bop4822 = icmp slt i64 %_i4820, %_len4821
  %_bop4823 = and i1 %_bop4819, %_bop4822
  %_j4824 = load i64, i64* %_j4810
  %_len4825 = load i64, i64* @len
  %_bop4826 = icmp slt i64 %_j4824, %_len4825
  %_bop4827 = and i1 %_bop4823, %_bop4826
  br i1 %_bop4827, label %_then4840, label %_else4839
_then4840:
  %_count4828 = load i64, i64* %_count4808
  %_board4829 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4814
  %_i4830 = load i64, i64* %_i4812
  %_index_ptr4831 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board4829, i32 0, i32 1, i64 %_i4830
  %_index4832 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4831
  %_j4833 = load i64, i64* %_j4810
  %_index_ptr4834 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4832, i32 0, i32 1, i64 %_j4833
  %_index4835 = load i64, i64* %_index_ptr4834
  %_bop4836 = add i64 %_count4828, %_index4835
  ret i64 %_bop4836
_else4839:
  %_count4837 = load i64, i64* %_count4808
  ret i64 %_count4837
}

define i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4724, i64 %_i4722, i64 %_j4720) {
  %_board4725 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4723 = alloca i64
  %_j4721 = alloca i64
  %_alive4733 = alloca i64
  %_count4734 = alloca i64
  store { i64, [0 x { i64, [0 x i64] }*] }* %_board4724, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  store i64 %_i4722, i64* %_i4723
  store i64 %_j4720, i64* %_j4721
  %_board4726 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_i4727 = load i64, i64* %_i4723
  %_index_ptr4728 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_board4726, i32 0, i32 1, i64 %_i4727
  %_index4729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4728
  %_j4730 = load i64, i64* %_j4721
  %_index_ptr4731 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4729, i32 0, i32 1, i64 %_j4730
  %_index4732 = load i64, i64* %_index_ptr4731
  store i64 %_index4732, i64* %_alive4733
  store i64 0, i64* %_count4734
  %_count4735 = load i64, i64* %_count4734
  %_j4736 = load i64, i64* %_j4721
  %_bop4737 = sub i64 %_j4736, 1
  %_i4738 = load i64, i64* %_i4723
  %_bop4739 = sub i64 %_i4738, 1
  %_board4740 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4741 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4740, i64 %_bop4739, i64 %_bop4737, i64 %_count4735)
  store i64 %_result4741, i64* %_count4734
  %_count4742 = load i64, i64* %_count4734
  %_j4743 = load i64, i64* %_j4721
  %_i4744 = load i64, i64* %_i4723
  %_bop4745 = sub i64 %_i4744, 1
  %_board4746 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4747 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4746, i64 %_bop4745, i64 %_j4743, i64 %_count4742)
  store i64 %_result4747, i64* %_count4734
  %_count4748 = load i64, i64* %_count4734
  %_j4749 = load i64, i64* %_j4721
  %_bop4750 = add i64 %_j4749, 1
  %_i4751 = load i64, i64* %_i4723
  %_bop4752 = sub i64 %_i4751, 1
  %_board4753 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4754 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4753, i64 %_bop4752, i64 %_bop4750, i64 %_count4748)
  store i64 %_result4754, i64* %_count4734
  %_count4755 = load i64, i64* %_count4734
  %_j4756 = load i64, i64* %_j4721
  %_bop4757 = sub i64 %_j4756, 1
  %_i4758 = load i64, i64* %_i4723
  %_board4759 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4760 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4759, i64 %_i4758, i64 %_bop4757, i64 %_count4755)
  store i64 %_result4760, i64* %_count4734
  %_count4761 = load i64, i64* %_count4734
  %_j4762 = load i64, i64* %_j4721
  %_bop4763 = add i64 %_j4762, 1
  %_i4764 = load i64, i64* %_i4723
  %_board4765 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4766 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4765, i64 %_i4764, i64 %_bop4763, i64 %_count4761)
  store i64 %_result4766, i64* %_count4734
  %_count4767 = load i64, i64* %_count4734
  %_j4768 = load i64, i64* %_j4721
  %_bop4769 = sub i64 %_j4768, 1
  %_i4770 = load i64, i64* %_i4723
  %_bop4771 = add i64 %_i4770, 1
  %_board4772 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4773 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4772, i64 %_bop4771, i64 %_bop4769, i64 %_count4767)
  store i64 %_result4773, i64* %_count4734
  %_count4774 = load i64, i64* %_count4734
  %_j4775 = load i64, i64* %_j4721
  %_i4776 = load i64, i64* %_i4723
  %_bop4777 = add i64 %_i4776, 1
  %_board4778 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4779 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4778, i64 %_bop4777, i64 %_j4775, i64 %_count4774)
  store i64 %_result4779, i64* %_count4734
  %_count4780 = load i64, i64* %_count4734
  %_j4781 = load i64, i64* %_j4721
  %_bop4782 = add i64 %_j4781, 1
  %_i4783 = load i64, i64* %_i4723
  %_bop4784 = add i64 %_i4783, 1
  %_board4785 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4725
  %_result4786 = call i64 @check({ i64, [0 x { i64, [0 x i64] }*] }* %_board4785, i64 %_bop4784, i64 %_bop4782, i64 %_count4780)
  store i64 %_result4786, i64* %_count4734
  %_alive4787 = load i64, i64* %_alive4733
  %_bop4788 = icmp eq i64 %_alive4787, 1
  br i1 %_bop4788, label %_then4801, label %_else4800
_then4801:
  %_count4789 = load i64, i64* %_count4734
  %_bop4790 = icmp slt i64 %_count4789, 2
  br i1 %_bop4790, label %_then4798, label %_else4797
_then4798:
  ret i64 0
_else4797:
  %_count4791 = load i64, i64* %_count4734
  %_bop4792 = icmp slt i64 %_count4791, 4
  br i1 %_bop4792, label %_then4795, label %_else4794
_then4795:
  ret i64 1
_else4794:
  br label %_merge4793
_merge4793:
  br label %_merge4796
_merge4796:
  ret i64 0
_else4800:
  br label %_merge4799
_merge4799:
  %_count4802 = load i64, i64* %_count4734
  %_bop4803 = icmp eq i64 %_count4802, 3
  br i1 %_bop4803, label %_then4806, label %_else4805
_then4806:
  ret i64 1
_else4805:
  ret i64 0
_merge4804:
  ret i64 0
}

define i64 @program(i64 %_argc4599, { i64, [0 x i8*] }* %_argv4597) {
  %_argc4600 = alloca i64
  %_argv4598 = alloca { i64, [0 x i8*] }*
  %_board4631 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_new_board4662 = alloca { i64, [0 x { i64, [0 x i64] }*] }*
  %_i4663 = alloca i64
  %_j4674 = alloca i64
  %_i4694 = alloca i64
  %_j4701 = alloca i64
  store i64 %_argc4599, i64* %_argc4600
  store { i64, [0 x i8*] }* %_argv4597, { i64, [0 x i8*] }** %_argv4598
  %_raw_array4601 = call i64* @oat_alloc_array(i64 4)
  %_array4602 = bitcast i64* %_raw_array4601 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4603 = call i64* @oat_alloc_array(i64 4)
  %_array4604 = bitcast i64* %_raw_array4603 to { i64, [0 x i64] }*
  %_ind4605 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4604, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4605
  %_ind4606 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4604, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4606
  %_ind4607 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4604, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4607
  %_ind4608 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4604, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4608
  %_ind4609 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4602, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4604, { i64, [0 x i64] }** %_ind4609
  %_raw_array4610 = call i64* @oat_alloc_array(i64 4)
  %_array4611 = bitcast i64* %_raw_array4610 to { i64, [0 x i64] }*
  %_ind4612 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4611, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4612
  %_ind4613 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4611, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4613
  %_ind4614 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4611, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4614
  %_ind4615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4611, i32 0, i32 1, i32 3
  store i64 1, i64* %_ind4615
  %_ind4616 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4602, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4611, { i64, [0 x i64] }** %_ind4616
  %_raw_array4617 = call i64* @oat_alloc_array(i64 4)
  %_array4618 = bitcast i64* %_raw_array4617 to { i64, [0 x i64] }*
  %_ind4619 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 0
  store i64 1, i64* %_ind4619
  %_ind4620 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 1
  store i64 1, i64* %_ind4620
  %_ind4621 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 2
  store i64 1, i64* %_ind4621
  %_ind4622 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4618, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4622
  %_ind4623 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4602, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4618, { i64, [0 x i64] }** %_ind4623
  %_raw_array4624 = call i64* @oat_alloc_array(i64 4)
  %_array4625 = bitcast i64* %_raw_array4624 to { i64, [0 x i64] }*
  %_ind4626 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4625, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4626
  %_ind4627 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4625, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4627
  %_ind4628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4625, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4628
  %_ind4629 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4625, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4629
  %_ind4630 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4602, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4625, { i64, [0 x i64] }** %_ind4630
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4602, { i64, [0 x { i64, [0 x i64] }*] }** %_board4631
  %_raw_array4632 = call i64* @oat_alloc_array(i64 4)
  %_array4633 = bitcast i64* %_raw_array4632 to { i64, [0 x { i64, [0 x i64] }*] }*
  %_raw_array4634 = call i64* @oat_alloc_array(i64 4)
  %_array4635 = bitcast i64* %_raw_array4634 to { i64, [0 x i64] }*
  %_ind4636 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4635, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4636
  %_ind4637 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4635, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4637
  %_ind4638 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4635, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4638
  %_ind4639 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4635, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4639
  %_ind4640 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4633, i32 0, i32 1, i32 0
  store { i64, [0 x i64] }* %_array4635, { i64, [0 x i64] }** %_ind4640
  %_raw_array4641 = call i64* @oat_alloc_array(i64 4)
  %_array4642 = bitcast i64* %_raw_array4641 to { i64, [0 x i64] }*
  %_ind4643 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4643
  %_ind4644 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4644
  %_ind4645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4645
  %_ind4646 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4642, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4646
  %_ind4647 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4633, i32 0, i32 1, i32 1
  store { i64, [0 x i64] }* %_array4642, { i64, [0 x i64] }** %_ind4647
  %_raw_array4648 = call i64* @oat_alloc_array(i64 4)
  %_array4649 = bitcast i64* %_raw_array4648 to { i64, [0 x i64] }*
  %_ind4650 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4649, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4650
  %_ind4651 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4649, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4651
  %_ind4652 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4649, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4652
  %_ind4653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4649, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4653
  %_ind4654 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4633, i32 0, i32 1, i32 2
  store { i64, [0 x i64] }* %_array4649, { i64, [0 x i64] }** %_ind4654
  %_raw_array4655 = call i64* @oat_alloc_array(i64 4)
  %_array4656 = bitcast i64* %_raw_array4655 to { i64, [0 x i64] }*
  %_ind4657 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4656, i32 0, i32 1, i32 0
  store i64 0, i64* %_ind4657
  %_ind4658 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4656, i32 0, i32 1, i32 1
  store i64 0, i64* %_ind4658
  %_ind4659 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4656, i32 0, i32 1, i32 2
  store i64 0, i64* %_ind4659
  %_ind4660 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array4656, i32 0, i32 1, i32 3
  store i64 0, i64* %_ind4660
  %_ind4661 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_array4633, i32 0, i32 1, i32 3
  store { i64, [0 x i64] }* %_array4656, { i64, [0 x i64] }** %_ind4661
  store { i64, [0 x { i64, [0 x i64] }*] }* %_array4633, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4662
  store i64 0, i64* %_i4663
  br label %_cond4668
_cond4668:
  %_i4664 = load i64, i64* %_i4663
  %_bop4665 = icmp slt i64 %_i4664, 4
  br i1 %_bop4665, label %_body4667, label %_post4666
_body4667:
  %_new_board4669 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4662
  %_i4670 = load i64, i64* %_i4663
  %_index_ptr4671 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4669, i32 0, i32 1, i64 %_i4670
  %_raw_array4672 = call i64* @oat_alloc_array(i64 4)
  %_array4673 = bitcast i64* %_raw_array4672 to { i64, [0 x i64] }*
  store { i64, [0 x i64] }* %_array4673, { i64, [0 x i64] }** %_index_ptr4671
  store i64 0, i64* %_j4674
  br label %_cond4679
_cond4679:
  %_j4675 = load i64, i64* %_j4674
  %_bop4676 = icmp slt i64 %_j4675, 4
  br i1 %_bop4676, label %_body4678, label %_post4677
_body4678:
  %_new_board4680 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4662
  %_i4681 = load i64, i64* %_i4663
  %_index_ptr4682 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4680, i32 0, i32 1, i64 %_i4681
  %_index4683 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4682
  %_j4684 = load i64, i64* %_j4674
  %_index_ptr4685 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4683, i32 0, i32 1, i64 %_j4684
  %_j4686 = load i64, i64* %_j4674
  %_i4687 = load i64, i64* %_i4663
  %_board4688 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_board4631
  %_result4689 = call i64 @val_at({ i64, [0 x { i64, [0 x i64] }*] }* %_board4688, i64 %_i4687, i64 %_j4686)
  store i64 %_result4689, i64* %_index_ptr4685
  %_j4690 = load i64, i64* %_j4674
  %_bop4691 = add i64 %_j4690, 1
  store i64 %_bop4691, i64* %_j4674
  br label %_cond4679
_post4677:
  %_i4692 = load i64, i64* %_i4663
  %_bop4693 = add i64 %_i4692, 1
  store i64 %_bop4693, i64* %_i4663
  br label %_cond4668
_post4666:
  store i64 0, i64* %_i4694
  br label %_cond4700
_cond4700:
  %_i4695 = load i64, i64* %_i4694
  %_len4696 = load i64, i64* @len
  %_bop4697 = icmp slt i64 %_i4695, %_len4696
  br i1 %_bop4697, label %_body4699, label %_post4698
_body4699:
  store i64 0, i64* %_j4701
  br label %_cond4707
_cond4707:
  %_j4702 = load i64, i64* %_j4701
  %_len4703 = load i64, i64* @len
  %_bop4704 = icmp slt i64 %_j4702, %_len4703
  br i1 %_bop4704, label %_body4706, label %_post4705
_body4706:
  %_new_board4708 = load { i64, [0 x { i64, [0 x i64] }*] }*, { i64, [0 x { i64, [0 x i64] }*] }** %_new_board4662
  %_i4709 = load i64, i64* %_i4694
  %_index_ptr4710 = getelementptr { i64, [0 x { i64, [0 x i64] }*] }, { i64, [0 x { i64, [0 x i64] }*] }* %_new_board4708, i32 0, i32 1, i64 %_i4709
  %_index4711 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_index_ptr4710
  %_j4712 = load i64, i64* %_j4701
  %_index_ptr4713 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_index4711, i32 0, i32 1, i64 %_j4712
  %_index4714 = load i64, i64* %_index_ptr4713
  call void @print_int(i64 %_index4714)
  %_j4716 = load i64, i64* %_j4701
  %_bop4717 = add i64 %_j4716, 1
  store i64 %_bop4717, i64* %_j4701
  br label %_cond4707
_post4705:
  %_i4718 = load i64, i64* %_i4694
  %_bop4719 = add i64 %_i4718, 1
  store i64 %_bop4719, i64* %_i4694
  br label %_cond4700
_post4698:
  ret i64 0
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
