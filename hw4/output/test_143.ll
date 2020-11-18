; generated from: oatprograms/run2.oat
target triple = "x86_64-unknown-linux"
@i = global i64 0
@_constant858 = global i64 0

define i64 @f(i64 %_x841, i64 %_y839) {
  %_x842 = alloca i64
  %_y840 = alloca i64
  %_r843 = alloca i64
  store i64 %_x841, i64* %_x842
  store i64 %_y839, i64* %_y840
  store i64 0, i64* %_r843
  %_x844 = load i64, i64* %_x842
  %_bop845 = icmp sge i64 %_x844, 1
  br i1 %_bop845, label %_then856, label %_else855
_then856:
  %_y846 = load i64, i64* %_y840
  %_x847 = load i64, i64* %_x842
  %_bop848 = sub i64 %_x847, 1
  %_result849 = call i64 @f(i64 %_bop848, i64 %_y846)
  %_bop850 = add i64 1, %_result849
  store i64 %_bop850, i64* %_r843
  br label %_merge854
_else855:
  %_x851 = load i64, i64* %_x842
  %_y852 = load i64, i64* %_y840
  %_bop853 = add i64 %_x851, %_y852
  store i64 %_bop853, i64* %_r843
  br label %_merge854
_merge854:
  %_r857 = load i64, i64* %_r843
  ret i64 %_r857
}

define i64 @program(i64 %_argc830, { i64, [0 x i8*] }* %_argv828) {
  %_argc831 = alloca i64
  %_argv829 = alloca { i64, [0 x i8*] }*
  %_x832 = alloca i64
  %_y833 = alloca i64
  store i64 %_argc830, i64* %_argc831
  store { i64, [0 x i8*] }* %_argv828, { i64, [0 x i8*] }** %_argv829
  store i64 3, i64* %_x832
  store i64 3, i64* %_y833
  %_y834 = load i64, i64* %_y833
  %_x835 = load i64, i64* %_x832
  %_result836 = call i64 @f(i64 %_x835, i64 %_y834)
  %_i837 = load i64, i64* @i
  %_bop838 = add i64 %_result836, %_i837
  ret i64 %_bop838
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
