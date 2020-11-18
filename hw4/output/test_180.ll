; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a2716, i64 %_l2714, i64 %_r2712) {
  %_a2717 = alloca { i64, [0 x i64] }*
  %_l2715 = alloca i64
  %_r2713 = alloca i64
  %_j2718 = alloca i64
  store { i64, [0 x i64] }* %_a2716, { i64, [0 x i64] }** %_a2717
  store i64 %_l2714, i64* %_l2715
  store i64 %_r2712, i64* %_r2713
  store i64 0, i64* %_j2718
  %_l2719 = load i64, i64* %_l2715
  %_r2720 = load i64, i64* %_r2713
  %_bop2721 = icmp slt i64 %_l2719, %_r2720
  br i1 %_bop2721, label %_then2738, label %_else2737
_then2738:
  %_r2722 = load i64, i64* %_r2713
  %_l2723 = load i64, i64* %_l2715
  %_a2724 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  %_result2725 = call i64 @partition({ i64, [0 x i64] }* %_a2724, i64 %_l2723, i64 %_r2722)
  store i64 %_result2725, i64* %_j2718
  %_j2726 = load i64, i64* %_j2718
  %_bop2727 = sub i64 %_j2726, 1
  %_l2728 = load i64, i64* %_l2715
  %_a2729 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  call void @quick_sort({ i64, [0 x i64] }* %_a2729, i64 %_l2728, i64 %_bop2727)
  %_r2731 = load i64, i64* %_r2713
  %_j2732 = load i64, i64* %_j2718
  %_bop2733 = add i64 %_j2732, 1
  %_a2734 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2717
  call void @quick_sort({ i64, [0 x i64] }* %_a2734, i64 %_bop2733, i64 %_r2731)
  br label %_merge2736
_else2737:
  br label %_merge2736
_merge2736:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %_a2610, i64 %_l2608, i64 %_r2606) {
  %_a2611 = alloca { i64, [0 x i64] }*
  %_l2609 = alloca i64
  %_r2607 = alloca i64
  %_pivot2617 = alloca i64
  %_i2619 = alloca i64
  %_j2622 = alloca i64
  %_t2623 = alloca i64
  %_done2624 = alloca i64
  store { i64, [0 x i64] }* %_a2610, { i64, [0 x i64] }** %_a2611
  store i64 %_l2608, i64* %_l2609
  store i64 %_r2606, i64* %_r2607
  %_a2612 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_l2613 = load i64, i64* %_l2609
  %_index_ptr2615 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2612, i32 0, i32 1, i64 %_l2613
  %_index2616 = load i64, i64* %_index_ptr2615
  store i64 %_index2616, i64* %_pivot2617
  %_l2618 = load i64, i64* %_l2609
  store i64 %_l2618, i64* %_i2619
  %_r2620 = load i64, i64* %_r2607
  %_bop2621 = add i64 %_r2620, 1
  store i64 %_bop2621, i64* %_j2622
  store i64 0, i64* %_t2623
  store i64 0, i64* %_done2624
  br label %_cond2629
_cond2629:
  %_done2625 = load i64, i64* %_done2624
  %_bop2626 = icmp eq i64 %_done2625, 0
  br i1 %_bop2626, label %_body2628, label %_post2627
_body2628:
  %_i2630 = load i64, i64* %_i2619
  %_bop2631 = add i64 %_i2630, 1
  store i64 %_bop2631, i64* %_i2619
  br label %_cond2645
_cond2645:
  %_a2632 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_i2633 = load i64, i64* %_i2619
  %_index_ptr2635 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2632, i32 0, i32 1, i64 %_i2633
  %_index2636 = load i64, i64* %_index_ptr2635
  %_pivot2637 = load i64, i64* %_pivot2617
  %_bop2638 = icmp sle i64 %_index2636, %_pivot2637
  %_i2639 = load i64, i64* %_i2619
  %_r2640 = load i64, i64* %_r2607
  %_bop2641 = icmp sle i64 %_i2639, %_r2640
  %_bop2642 = and i1 %_bop2638, %_bop2641
  br i1 %_bop2642, label %_body2644, label %_post2643
_body2644:
  %_i2646 = load i64, i64* %_i2619
  %_bop2647 = add i64 %_i2646, 1
  store i64 %_bop2647, i64* %_i2619
  br label %_cond2645
_post2643:
  %_j2648 = load i64, i64* %_j2622
  %_bop2649 = sub i64 %_j2648, 1
  store i64 %_bop2649, i64* %_j2622
  br label %_cond2659
_cond2659:
  %_a2650 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_j2651 = load i64, i64* %_j2622
  %_index_ptr2653 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2650, i32 0, i32 1, i64 %_j2651
  %_index2654 = load i64, i64* %_index_ptr2653
  %_pivot2655 = load i64, i64* %_pivot2617
  %_bop2656 = icmp sgt i64 %_index2654, %_pivot2655
  br i1 %_bop2656, label %_body2658, label %_post2657
_body2658:
  %_j2660 = load i64, i64* %_j2622
  %_bop2661 = sub i64 %_j2660, 1
  store i64 %_bop2661, i64* %_j2622
  br label %_cond2659
_post2657:
  %_i2662 = load i64, i64* %_i2619
  %_j2663 = load i64, i64* %_j2622
  %_bop2664 = icmp sge i64 %_i2662, %_j2663
  br i1 %_bop2664, label %_then2667, label %_else2666
_then2667:
  store i64 1, i64* %_done2624
  br label %_merge2665
_else2666:
  br label %_merge2665
_merge2665:
  %_done2668 = load i64, i64* %_done2624
  %_bop2669 = icmp eq i64 %_done2668, 0
  br i1 %_bop2669, label %_then2691, label %_else2690
_then2691:
  %_a2670 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_i2671 = load i64, i64* %_i2619
  %_index_ptr2673 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2670, i32 0, i32 1, i64 %_i2671
  %_index2674 = load i64, i64* %_index_ptr2673
  store i64 %_index2674, i64* %_t2623
  %_a2675 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_i2676 = load i64, i64* %_i2619
  %_index_ptr2678 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2675, i32 0, i32 1, i64 %_i2676
  %_a2679 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_j2680 = load i64, i64* %_j2622
  %_index_ptr2682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2679, i32 0, i32 1, i64 %_j2680
  %_index2683 = load i64, i64* %_index_ptr2682
  store i64 %_index2683, i64* %_index_ptr2678
  %_a2684 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_j2685 = load i64, i64* %_j2622
  %_index_ptr2687 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2684, i32 0, i32 1, i64 %_j2685
  %_t2688 = load i64, i64* %_t2623
  store i64 %_t2688, i64* %_index_ptr2687
  br label %_merge2689
_else2690:
  br label %_merge2689
_merge2689:
  br label %_cond2629
_post2627:
  %_a2692 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_l2693 = load i64, i64* %_l2609
  %_index_ptr2695 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2692, i32 0, i32 1, i64 %_l2693
  %_index2696 = load i64, i64* %_index_ptr2695
  store i64 %_index2696, i64* %_t2623
  %_a2697 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_l2698 = load i64, i64* %_l2609
  %_index_ptr2700 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2697, i32 0, i32 1, i64 %_l2698
  %_a2701 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_j2702 = load i64, i64* %_j2622
  %_index_ptr2704 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2701, i32 0, i32 1, i64 %_j2702
  %_index2705 = load i64, i64* %_index_ptr2704
  store i64 %_index2705, i64* %_index_ptr2700
  %_a2706 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2611
  %_j2707 = load i64, i64* %_j2622
  %_index_ptr2709 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2706, i32 0, i32 1, i64 %_j2707
  %_t2710 = load i64, i64* %_t2623
  store i64 %_t2710, i64* %_index_ptr2709
  %_j2711 = load i64, i64* %_j2622
  ret i64 %_j2711
}

define i64 @program(i64 %_argc2584, { i64, [0 x i8*] }* %_argv2582) {
  %_argc2585 = alloca i64
  %_argv2583 = alloca { i64, [0 x i8*] }*
  %_a2597 = alloca { i64, [0 x i64] }*
  store i64 %_argc2584, i64* %_argc2585
  store { i64, [0 x i8*] }* %_argv2582, { i64, [0 x i8*] }** %_argv2583
  %_raw_array2586 = call i64* @oat_alloc_array(i64 9)
  %_array2587 = bitcast i64* %_raw_array2586 to { i64, [0 x i64] }*
  %_ind2588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind2588
  %_ind2589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2589
  %_ind2590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind2590
  %_ind2591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind2591
  %_ind2592 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind2592
  %_ind2593 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind2593
  %_ind2594 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind2594
  %_ind2595 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2595
  %_ind2596 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2587, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind2596
  store { i64, [0 x i64] }* %_array2587, { i64, [0 x i64] }** %_a2597
  %_a2598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2597
  %_result2599 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2598)
  call void @print_string(i8* %_result2599)
  %_a2601 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2597
  call void @quick_sort({ i64, [0 x i64] }* %_a2601, i64 0, i64 8)
  %_a2603 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2597
  %_result2604 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2603)
  call void @print_string(i8* %_result2604)
  ret i64 255
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
