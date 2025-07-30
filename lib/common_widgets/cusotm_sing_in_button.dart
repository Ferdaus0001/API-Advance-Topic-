
import 'package:api_test_porject/assets_helper/app_colors.dart';
import 'package:api_test_porject/assets_helper/app_fonts.dart' show TextFontStyle;
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../helpers/ui_helpers.dart';


class SocialContinueButton extends StatelessWidget {
  final String text;
  final Widget iconPath;
  final VoidCallback? onTap;
  final Color borderColor;
  final Color backgroundColor;

  const SocialContinueButton({
    super.key,
    required this.text,
    this.onTap,
    this.borderColor = const Color(0xFF3A3A3A),
    this.backgroundColor = Colors.black, required this.iconPath,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 11.h),
        decoration: BoxDecoration(
          border: Border.all(color: borderColor),
          borderRadius: BorderRadius.circular(48.r),
          color: backgroundColor,
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CircleAvatar(
              radius: 22.r,
              backgroundColor: AppColor.c353535,
              child:iconPath,
            ),
            UIHelper.horizontalSpace(16.h),
            Text(
              text,
              style: TextFontStyle.headline28cFFFFFFRoboto500.copyWith(fontSize: 17.sp),
            ),
          ],
        ),
      ),
    );
  }
}
