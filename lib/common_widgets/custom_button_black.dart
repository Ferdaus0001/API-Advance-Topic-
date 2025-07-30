
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import '../assets_helper/app_colors.dart';
import '../assets_helper/app_fonts.dart';
import '../helpers/ui_helpers.dart';


class CustomButtonBlack extends StatelessWidget {
  final void Function() onTap;
  final String btnText;
  final String? centerIcon;
  final String? rightIcon;

  const CustomButtonBlack({
    super.key,
    required this.onTap,
    required this.btnText,
    this.centerIcon,
    this.rightIcon,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 56.h,
        padding: EdgeInsets.symmetric(horizontal: 16.w),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(16.r),
          color: AppColor.c010B21,
        ),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Centered Text and First Icon
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  btnText,
                  style: TextFontStyle.textStyle16SatoshiW500.copyWith(fontSize: 18.sp),
                  textAlign: TextAlign.center,
                ),
                if (centerIcon != null) ...[
                  UIHelper.horizontalSpace(12.w),
                  Padding(
                    padding: EdgeInsets.only(top: 6.h),
                    child: SvgPicture.asset(centerIcon!),
                  ),
                ]
              ],
            ),

            // Right-aligned Second Icon
            if (rightIcon != null)
              Positioned(
                right: 0,
                child: SvgPicture.asset(rightIcon!),
              ),
          ],
        ),
      ),
    );
  }
}
