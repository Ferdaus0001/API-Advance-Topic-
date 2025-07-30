
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../assets_helper/app_fonts.dart';

class CustomHeadingText extends StatelessWidget {
  final String heading;
  const CustomHeadingText({super.key, required this.heading});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: SizedBox(
        width: double
            .infinity, // Ensures the container takes up all available space
        child: Text(
          heading,
          style: TextFontStyle.textStyle16SatoshiW700,
          textAlign: TextAlign.start, // Aligns text to the start (left for LTR)
        ),
      ),
    );
  }
}
