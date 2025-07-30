import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SelectableCard extends StatelessWidget {
  final bool isSelected;
  final String title;
  final String iconPath;
  final VoidCallback onTap;

  const SelectableCard({
    super.key,
    required this.isSelected,
    required this.title,
    required this.iconPath,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            width: 120.w,
            height: 120.h,
            decoration: BoxDecoration(
              color: isSelected ? null : Colors.white,
              borderRadius: BorderRadius.circular(25.r),
              gradient: isSelected
                  ? const LinearGradient(
                colors: [
                  Color(0xFF723D76),
                  Color(0xFFC89A4F),
                ],
              )
                  : null,
            ),
            child: Stack(
              children: [
                if (isSelected)
                  Positioned(
                    top: 8,
                    right: 8,
                    child: SvgPicture.asset(
                      'assets/icons/check-circle.svg',
                      width: 24.w,
                      height: 24.h,
                    ),
                  ),
                Center(
                  child: SvgPicture.asset(
                    iconPath,
                    color: isSelected ? Colors.white : Colors.black,
                    width: 48.w,
                    height: 48.h,
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 10.h),
          Text(
            title,
            style: TextStyle(
              color: isSelected ? const Color(0xFF723D76) : Colors.black,
              fontWeight: FontWeight.w600,
            ),
          ),
        ],
      ),
    );
  }
}
