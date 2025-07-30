//
//
// import 'package:flutter/material.dart';
//
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../assets_helper/app_colors.dart';
// import '../assets_helper/app_fonts.dart';
//
// class CustomTextFormField extends StatelessWidget {
//   final String hintText;
//   final TextEditingController? controller;
//   final TextInputType keyboardType;
//   final bool obscureText;
//   final Widget?  prefixIcon;
//   final Widget?  suffixIcon;
//
//   const CustomTextFormField({
//     Key? key,
//     required this.hintText,
//     this.controller,
//     this.keyboardType = TextInputType.text,
//     this.obscureText = false, this.prefixIcon, this.suffixIcon,
//   }) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//
//       controller: controller,
//       keyboardType: keyboardType,
//       obscureText: obscureText,
//       decoration: InputDecoration(
//
//         prefixIcon: prefixIcon,
//         suffixIcon: suffixIcon,
//         hintText: hintText,
//         contentPadding: EdgeInsets.symmetric(horizontal: 12.w, vertical: 16.h),
//         filled: true,
//         fillColor: Colors.white,
//         hintStyle: TextStyle(color: Colors.grey, fontSize: 14.sp),
//         border: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(7.r),
//           borderSide: BorderSide.none
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(7.r),
//           borderSide: BorderSide.none,
//         ),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(7.r),
//           borderSide: BorderSide.none,
//         ),
//       ),
//       style: TextFontStyle.textStyle12c12175EpoppinsW400.copyWith(color: AppColor.cDADADA,fontSize: 13.sp,),
//     );
//   }
// }
