; generated from: oatprograms/fact.oat
target triple = "x86_64-unknown-linux"
define i64 @fact(i64 %_x746) {
  %_x747 = alloca i64
  %_acc748 = alloca i64
  store i64 %_x746, i64* %_x747
  store i64 1, i64* %_acc748
  br label %_cond753
_cond753:
  %_x749 = load i64, i64* %_x747
  %_bop750 = icmp sgt i64 %_x749, 0
  br i1 %_bop750, label %_body752, label %_post751
_body752:
  %_acc754 = load i64, i64* %_acc748
  %_x755 = load i64, i64* %_x747
  %_bop756 = mul i64 %_acc754, %_x755
  store i64 %_bop756, i64* %_acc748
  %_x757 = load i64, i64* %_x747
  %_bop758 = sub i64 %_x757, 1
  store i64 %_bop758, i64* %_x747
  br label %_cond753
_post751:
  %_acc759 = load i64, i64* %_acc748
  ret i64 %_acc759
}

define i64 @program(i64 %_argc741, { i64, [0 x i8*] }* %_argv739) {
  %_argc742 = alloca i64
  %_argv740 = alloca { i64, [0 x i8*] }*
  store i64 %_argc741, i64* %_argc742
  store { i64, [0 x i8*] }* %_argv739, { i64, [0 x i8*] }** %_argv740
  %_result743 = call i64 @fact(i64 5)
  %_result744 = call i8* @string_of_int(i64 %_result743)
  call void @print_string(i8* %_result744)
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
