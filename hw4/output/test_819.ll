; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a2700, i64 %_l2698, i64 %_r2696) {
  %_a2701 = alloca { i64, [0 x i64] }*
  %_l2699 = alloca i64
  %_r2697 = alloca i64
  %_j2702 = alloca i64
  store { i64, [0 x i64] }* %_a2700, { i64, [0 x i64] }** %_a2701
  store i64 %_l2698, i64* %_l2699
  store i64 %_r2696, i64* %_r2697
  store i64 0, i64* %_j2702
  %_l2703 = load i64, i64* %_l2699
  %_r2704 = load i64, i64* %_r2697
  %_bop2705 = icmp slt i64 %_l2703, %_r2704
  br i1 %_bop2705, label %_then2722, label %_else2721
_then2722:
  %_r2706 = load i64, i64* %_r2697
  %_l2707 = load i64, i64* %_l2699
  %_a2708 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2701
  %_result2709 = call i64 @partition({ i64, [0 x i64] }* %_a2708, i64 %_l2707, i64 %_r2706)
  store i64 %_result2709, i64* %_j2702
  %_j2710 = load i64, i64* %_j2702
  %_bop2711 = sub i64 %_j2710, 1
  %_l2712 = load i64, i64* %_l2699
  %_a2713 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2701
  call void @quick_sort({ i64, [0 x i64] }* %_a2713, i64 %_l2712, i64 %_bop2711)
  %_r2715 = load i64, i64* %_r2697
  %_j2716 = load i64, i64* %_j2702
  %_bop2717 = add i64 %_j2716, 1
  %_a2718 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2701
  call void @quick_sort({ i64, [0 x i64] }* %_a2718, i64 %_bop2717, i64 %_r2715)
  br label %_merge2720
_else2721:
  br label %_merge2720
_merge2720:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %_a2605, i64 %_l2603, i64 %_r2601) {
  %_a2606 = alloca { i64, [0 x i64] }*
  %_l2604 = alloca i64
  %_r2602 = alloca i64
  %_pivot2611 = alloca i64
  %_i2613 = alloca i64
  %_j2616 = alloca i64
  %_t2617 = alloca i64
  %_done2618 = alloca i64
  store { i64, [0 x i64] }* %_a2605, { i64, [0 x i64] }** %_a2606
  store i64 %_l2603, i64* %_l2604
  store i64 %_r2601, i64* %_r2602
  %_a2607 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_l2608 = load i64, i64* %_l2604
  %_index_ptr2609 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2607, i32 0, i32 1, i64 %_l2608
  %_index2610 = load i64, i64* %_index_ptr2609
  store i64 %_index2610, i64* %_pivot2611
  %_l2612 = load i64, i64* %_l2604
  store i64 %_l2612, i64* %_i2613
  %_r2614 = load i64, i64* %_r2602
  %_bop2615 = add i64 %_r2614, 1
  store i64 %_bop2615, i64* %_j2616
  store i64 0, i64* %_t2617
  store i64 0, i64* %_done2618
  br label %_cond2623
_cond2623:
  %_done2619 = load i64, i64* %_done2618
  %_bop2620 = icmp eq i64 %_done2619, 0
  br i1 %_bop2620, label %_body2622, label %_post2621
_body2622:
  %_i2624 = load i64, i64* %_i2613
  %_bop2625 = add i64 %_i2624, 1
  store i64 %_bop2625, i64* %_i2613
  br label %_cond2638
_cond2638:
  %_a2626 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_i2627 = load i64, i64* %_i2613
  %_index_ptr2628 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2626, i32 0, i32 1, i64 %_i2627
  %_index2629 = load i64, i64* %_index_ptr2628
  %_pivot2630 = load i64, i64* %_pivot2611
  %_bop2631 = icmp sle i64 %_index2629, %_pivot2630
  %_i2632 = load i64, i64* %_i2613
  %_r2633 = load i64, i64* %_r2602
  %_bop2634 = icmp sle i64 %_i2632, %_r2633
  %_bop2635 = and i1 %_bop2631, %_bop2634
  br i1 %_bop2635, label %_body2637, label %_post2636
_body2637:
  %_i2639 = load i64, i64* %_i2613
  %_bop2640 = add i64 %_i2639, 1
  store i64 %_bop2640, i64* %_i2613
  br label %_cond2638
_post2636:
  %_j2641 = load i64, i64* %_j2616
  %_bop2642 = sub i64 %_j2641, 1
  store i64 %_bop2642, i64* %_j2616
  br label %_cond2651
_cond2651:
  %_a2643 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_j2644 = load i64, i64* %_j2616
  %_index_ptr2645 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2643, i32 0, i32 1, i64 %_j2644
  %_index2646 = load i64, i64* %_index_ptr2645
  %_pivot2647 = load i64, i64* %_pivot2611
  %_bop2648 = icmp sgt i64 %_index2646, %_pivot2647
  br i1 %_bop2648, label %_body2650, label %_post2649
_body2650:
  %_j2652 = load i64, i64* %_j2616
  %_bop2653 = sub i64 %_j2652, 1
  store i64 %_bop2653, i64* %_j2616
  br label %_cond2651
_post2649:
  %_i2654 = load i64, i64* %_i2613
  %_j2655 = load i64, i64* %_j2616
  %_bop2656 = icmp sge i64 %_i2654, %_j2655
  br i1 %_bop2656, label %_then2659, label %_else2658
_then2659:
  store i64 1, i64* %_done2618
  br label %_merge2657
_else2658:
  br label %_merge2657
_merge2657:
  %_done2660 = load i64, i64* %_done2618
  %_bop2661 = icmp eq i64 %_done2660, 0
  br i1 %_bop2661, label %_then2679, label %_else2678
_then2679:
  %_a2662 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_i2663 = load i64, i64* %_i2613
  %_index_ptr2664 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2662, i32 0, i32 1, i64 %_i2663
  %_index2665 = load i64, i64* %_index_ptr2664
  store i64 %_index2665, i64* %_t2617
  %_a2666 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_i2667 = load i64, i64* %_i2613
  %_index_ptr2668 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2666, i32 0, i32 1, i64 %_i2667
  %_a2669 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_j2670 = load i64, i64* %_j2616
  %_index_ptr2671 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2669, i32 0, i32 1, i64 %_j2670
  %_index2672 = load i64, i64* %_index_ptr2671
  store i64 %_index2672, i64* %_index_ptr2668
  %_a2673 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_j2674 = load i64, i64* %_j2616
  %_index_ptr2675 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2673, i32 0, i32 1, i64 %_j2674
  %_t2676 = load i64, i64* %_t2617
  store i64 %_t2676, i64* %_index_ptr2675
  br label %_merge2677
_else2678:
  br label %_merge2677
_merge2677:
  br label %_cond2623
_post2621:
  %_a2680 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_l2681 = load i64, i64* %_l2604
  %_index_ptr2682 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2680, i32 0, i32 1, i64 %_l2681
  %_index2683 = load i64, i64* %_index_ptr2682
  store i64 %_index2683, i64* %_t2617
  %_a2684 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_l2685 = load i64, i64* %_l2604
  %_index_ptr2686 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2684, i32 0, i32 1, i64 %_l2685
  %_a2687 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_j2688 = load i64, i64* %_j2616
  %_index_ptr2689 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2687, i32 0, i32 1, i64 %_j2688
  %_index2690 = load i64, i64* %_index_ptr2689
  store i64 %_index2690, i64* %_index_ptr2686
  %_a2691 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2606
  %_j2692 = load i64, i64* %_j2616
  %_index_ptr2693 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2691, i32 0, i32 1, i64 %_j2692
  %_t2694 = load i64, i64* %_t2617
  store i64 %_t2694, i64* %_index_ptr2693
  %_j2695 = load i64, i64* %_j2616
  ret i64 %_j2695
}

define i64 @program(i64 %_argc2579, { i64, [0 x i8*] }* %_argv2577) {
  %_argc2580 = alloca i64
  %_argv2578 = alloca { i64, [0 x i8*] }*
  %_a2592 = alloca { i64, [0 x i64] }*
  store i64 %_argc2579, i64* %_argc2580
  store { i64, [0 x i8*] }* %_argv2577, { i64, [0 x i8*] }** %_argv2578
  %_raw_array2581 = call i64* @oat_alloc_array(i64 9)
  %_array2582 = bitcast i64* %_raw_array2581 to { i64, [0 x i64] }*
  %_ind2583 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind2583
  %_ind2584 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2584
  %_ind2585 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind2585
  %_ind2586 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind2586
  %_ind2587 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind2587
  %_ind2588 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind2588
  %_ind2589 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind2589
  %_ind2590 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2590
  %_ind2591 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2582, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind2591
  store { i64, [0 x i64] }* %_array2582, { i64, [0 x i64] }** %_a2592
  %_a2593 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2592
  %_result2594 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2593)
  call void @print_string(i8* %_result2594)
  %_a2596 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2592
  call void @quick_sort({ i64, [0 x i64] }* %_a2596, i64 0, i64 8)
  %_a2598 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2592
  %_result2599 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2598)
  call void @print_string(i8* %_result2599)
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
