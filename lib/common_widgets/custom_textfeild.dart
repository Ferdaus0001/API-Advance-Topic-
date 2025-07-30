
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../assets_helper/app_colors.dart';

class CustomTextField extends StatelessWidget {
  final String hintText;
  final String? leadingIcon;
  final String? trailingIcon;
  final bool obscureText;
  final bool readOnly;
  final VoidCallback? onTap; // Optional onTap callback for GestureDetector
  final VoidCallback? onTrailingIconPressed;
  final TextEditingController? controller;
  final TextInputType? keyboardType;
  final String? Function(String?)? validator;
  final FocusNode? focusNode;
  final Function(String)? onChanged;
  final TextInputAction? textInputAction;
  final Function(String)? onFieldSubmitted;
  final String? errorText;

  const CustomTextField({
    super.key,
    this.readOnly = false,
    this.onTap, // Default is null
    required this.hintText,
    this.leadingIcon,
    this.trailingIcon,
    this.obscureText = false,
    this.onTrailingIconPressed,
    this.controller,
    this.keyboardType,
    this.validator,
    this.focusNode,
    this.onChanged,
    this.textInputAction,
    this.onFieldSubmitted, 
    this.errorText,
  });
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      child: TextFormField(
        cursorColor: AppColor.c0048FF,
        readOnly: readOnly,
        onTap: onTap,
        controller: controller,
        obscureText: obscureText,
        keyboardType: keyboardType,
        validator: validator,
        focusNode: focusNode,
        onChanged: onChanged,
        textInputAction: textInputAction,
        onFieldSubmitted: onFieldSubmitted,

        style: const TextStyle(color: Colors.grey),

        //autovalidateMode: AutovalidateMode.onUserInteraction,
        showCursor: true,

        //inputFormatters: [FilteringTextInputFormatter.digitsOnly],

        decoration: InputDecoration(
          fillColor: AppColor.cF3F3F4,
          contentPadding:
              EdgeInsets.symmetric(vertical: 16.h, horizontal: 16.w),
          filled: true,
          hintText: hintText,
          hintStyle: const TextStyle(color: Colors.grey),
          prefixIcon: leadingIcon != null
              ? Padding(
                  padding: EdgeInsets.all(9.w),
                  child: SvgPicture.asset(
                    leadingIcon!,
                  ),
                )
              : null,
          suffixIcon: trailingIcon != null
              ? IconButton(
                  icon: SvgPicture.asset(trailingIcon!),
                  // icon: Icon(
                  //   trailingIcon,
                  //   color: Colors.grey,
                  // ),
                  onPressed: onTrailingIconPressed,
                )
              : null,
          border: OutlineInputBorder(
              borderRadius: BorderRadius.circular(19.r),
              borderSide: BorderSide.none),
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(19.r),
            borderSide: BorderSide.none,
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(19.r),
            borderSide: BorderSide.none,
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(19.r),
            borderSide: BorderSide.none,
          ),
          focusedErrorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(19.r),
            borderSide: BorderSide.none,
          ),
          errorText: errorText,
          errorStyle: TextStyle(color: Colors.red, fontSize: 12.sp),
          disabledBorder: InputBorder.none,
        ),
      ),
    );
  }
}
