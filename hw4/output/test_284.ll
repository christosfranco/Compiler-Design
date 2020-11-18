; generated from: oatprograms/qsort.oat
target triple = "x86_64-unknown-linux"
define void @quick_sort({ i64, [0 x i64] }* %_a2912, i64 %_l2910, i64 %_r2908) {
  %_a2913 = alloca { i64, [0 x i64] }*
  %_l2911 = alloca i64
  %_r2909 = alloca i64
  %_j2914 = alloca i64
  store { i64, [0 x i64] }* %_a2912, { i64, [0 x i64] }** %_a2913
  store i64 %_l2910, i64* %_l2911
  store i64 %_r2908, i64* %_r2909
  store i64 0, i64* %_j2914
  %_l2915 = load i64, i64* %_l2911
  %_r2916 = load i64, i64* %_r2909
  %_bop2917 = icmp slt i64 %_l2915, %_r2916
  br i1 %_bop2917, label %_then2934, label %_else2933
_then2934:
  %_r2918 = load i64, i64* %_r2909
  %_l2919 = load i64, i64* %_l2911
  %_a2920 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2913
  %_result2921 = call i64 @partition({ i64, [0 x i64] }* %_a2920, i64 %_l2919, i64 %_r2918)
  store i64 %_result2921, i64* %_j2914
  %_j2922 = load i64, i64* %_j2914
  %_bop2923 = sub i64 %_j2922, 1
  %_l2924 = load i64, i64* %_l2911
  %_a2925 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2913
  call void @quick_sort({ i64, [0 x i64] }* %_a2925, i64 %_l2924, i64 %_bop2923)
  %_r2927 = load i64, i64* %_r2909
  %_j2928 = load i64, i64* %_j2914
  %_bop2929 = add i64 %_j2928, 1
  %_a2930 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2913
  call void @quick_sort({ i64, [0 x i64] }* %_a2930, i64 %_bop2929, i64 %_r2927)
  br label %_merge2932
_else2933:
  br label %_merge2932
_merge2932:
  ret void
}

define i64 @partition({ i64, [0 x i64] }* %_a2806, i64 %_l2804, i64 %_r2802) {
  %_a2807 = alloca { i64, [0 x i64] }*
  %_l2805 = alloca i64
  %_r2803 = alloca i64
  %_pivot2813 = alloca i64
  %_i2815 = alloca i64
  %_j2818 = alloca i64
  %_t2819 = alloca i64
  %_done2820 = alloca i64
  store { i64, [0 x i64] }* %_a2806, { i64, [0 x i64] }** %_a2807
  store i64 %_l2804, i64* %_l2805
  store i64 %_r2802, i64* %_r2803
  %_a2808 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_l2809 = load i64, i64* %_l2805
  %_index_ptr2811 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2808, i32 0, i32 1, i64 %_l2809
  %_index2812 = load i64, i64* %_index_ptr2811
  store i64 %_index2812, i64* %_pivot2813
  %_l2814 = load i64, i64* %_l2805
  store i64 %_l2814, i64* %_i2815
  %_r2816 = load i64, i64* %_r2803
  %_bop2817 = add i64 %_r2816, 1
  store i64 %_bop2817, i64* %_j2818
  store i64 0, i64* %_t2819
  store i64 0, i64* %_done2820
  br label %_cond2825
_cond2825:
  %_done2821 = load i64, i64* %_done2820
  %_bop2822 = icmp eq i64 %_done2821, 0
  br i1 %_bop2822, label %_body2824, label %_post2823
_body2824:
  %_i2826 = load i64, i64* %_i2815
  %_bop2827 = add i64 %_i2826, 1
  store i64 %_bop2827, i64* %_i2815
  br label %_cond2841
_cond2841:
  %_a2828 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_i2829 = load i64, i64* %_i2815
  %_index_ptr2831 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2828, i32 0, i32 1, i64 %_i2829
  %_index2832 = load i64, i64* %_index_ptr2831
  %_pivot2833 = load i64, i64* %_pivot2813
  %_bop2834 = icmp sle i64 %_index2832, %_pivot2833
  %_i2835 = load i64, i64* %_i2815
  %_r2836 = load i64, i64* %_r2803
  %_bop2837 = icmp sle i64 %_i2835, %_r2836
  %_bop2838 = and i1 %_bop2834, %_bop2837
  br i1 %_bop2838, label %_body2840, label %_post2839
_body2840:
  %_i2842 = load i64, i64* %_i2815
  %_bop2843 = add i64 %_i2842, 1
  store i64 %_bop2843, i64* %_i2815
  br label %_cond2841
_post2839:
  %_j2844 = load i64, i64* %_j2818
  %_bop2845 = sub i64 %_j2844, 1
  store i64 %_bop2845, i64* %_j2818
  br label %_cond2855
_cond2855:
  %_a2846 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_j2847 = load i64, i64* %_j2818
  %_index_ptr2849 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2846, i32 0, i32 1, i64 %_j2847
  %_index2850 = load i64, i64* %_index_ptr2849
  %_pivot2851 = load i64, i64* %_pivot2813
  %_bop2852 = icmp sgt i64 %_index2850, %_pivot2851
  br i1 %_bop2852, label %_body2854, label %_post2853
_body2854:
  %_j2856 = load i64, i64* %_j2818
  %_bop2857 = sub i64 %_j2856, 1
  store i64 %_bop2857, i64* %_j2818
  br label %_cond2855
_post2853:
  %_i2858 = load i64, i64* %_i2815
  %_j2859 = load i64, i64* %_j2818
  %_bop2860 = icmp sge i64 %_i2858, %_j2859
  br i1 %_bop2860, label %_then2863, label %_else2862
_then2863:
  store i64 1, i64* %_done2820
  br label %_merge2861
_else2862:
  br label %_merge2861
_merge2861:
  %_done2864 = load i64, i64* %_done2820
  %_bop2865 = icmp eq i64 %_done2864, 0
  br i1 %_bop2865, label %_then2887, label %_else2886
_then2887:
  %_a2866 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_i2867 = load i64, i64* %_i2815
  %_index_ptr2869 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2866, i32 0, i32 1, i64 %_i2867
  %_index2870 = load i64, i64* %_index_ptr2869
  store i64 %_index2870, i64* %_t2819
  %_a2871 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_i2872 = load i64, i64* %_i2815
  %_index_ptr2874 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2871, i32 0, i32 1, i64 %_i2872
  %_a2875 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_j2876 = load i64, i64* %_j2818
  %_index_ptr2878 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2875, i32 0, i32 1, i64 %_j2876
  %_index2879 = load i64, i64* %_index_ptr2878
  store i64 %_index2879, i64* %_index_ptr2874
  %_a2880 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_j2881 = load i64, i64* %_j2818
  %_index_ptr2883 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2880, i32 0, i32 1, i64 %_j2881
  %_t2884 = load i64, i64* %_t2819
  store i64 %_t2884, i64* %_index_ptr2883
  br label %_merge2885
_else2886:
  br label %_merge2885
_merge2885:
  br label %_cond2825
_post2823:
  %_a2888 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_l2889 = load i64, i64* %_l2805
  %_index_ptr2891 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2888, i32 0, i32 1, i64 %_l2889
  %_index2892 = load i64, i64* %_index_ptr2891
  store i64 %_index2892, i64* %_t2819
  %_a2893 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_l2894 = load i64, i64* %_l2805
  %_index_ptr2896 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2893, i32 0, i32 1, i64 %_l2894
  %_a2897 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_j2898 = load i64, i64* %_j2818
  %_index_ptr2900 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2897, i32 0, i32 1, i64 %_j2898
  %_index2901 = load i64, i64* %_index_ptr2900
  store i64 %_index2901, i64* %_index_ptr2896
  %_a2902 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2807
  %_j2903 = load i64, i64* %_j2818
  %_index_ptr2905 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_a2902, i32 0, i32 1, i64 %_j2903
  %_t2906 = load i64, i64* %_t2819
  store i64 %_t2906, i64* %_index_ptr2905
  %_j2907 = load i64, i64* %_j2818
  ret i64 %_j2907
}

define i64 @program(i64 %_argc2780, { i64, [0 x i8*] }* %_argv2778) {
  %_argc2781 = alloca i64
  %_argv2779 = alloca { i64, [0 x i8*] }*
  %_a2793 = alloca { i64, [0 x i64] }*
  store i64 %_argc2780, i64* %_argc2781
  store { i64, [0 x i8*] }* %_argv2778, { i64, [0 x i8*] }** %_argv2779
  %_raw_array2782 = call i64* @oat_alloc_array(i64 9)
  %_array2783 = bitcast i64* %_raw_array2782 to { i64, [0 x i64] }*
  %_ind2784 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 0
  store i64 107, i64* %_ind2784
  %_ind2785 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 1
  store i64 112, i64* %_ind2785
  %_ind2786 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 2
  store i64 121, i64* %_ind2786
  %_ind2787 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 3
  store i64 102, i64* %_ind2787
  %_ind2788 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 4
  store i64 123, i64* %_ind2788
  %_ind2789 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 5
  store i64 115, i64* %_ind2789
  %_ind2790 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 6
  store i64 104, i64* %_ind2790
  %_ind2791 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 7
  store i64 111, i64* %_ind2791
  %_ind2792 = getelementptr { i64, [0 x i64] }, { i64, [0 x i64] }* %_array2783, i32 0, i32 1, i32 8
  store i64 109, i64* %_ind2792
  store { i64, [0 x i64] }* %_array2783, { i64, [0 x i64] }** %_a2793
  %_a2794 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2793
  %_result2795 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2794)
  call void @print_string(i8* %_result2795)
  %_a2797 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2793
  call void @quick_sort({ i64, [0 x i64] }* %_a2797, i64 0, i64 8)
  %_a2799 = load { i64, [0 x i64] }*, { i64, [0 x i64] }** %_a2793
  %_result2800 = call i8* @string_of_array({ i64, [0 x i64] }* %_a2799)
  call void @print_string(i8* %_result2800)
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
