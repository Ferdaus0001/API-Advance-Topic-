import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class ContinueButton extends StatelessWidget {
  final VoidCallback? onTap;
  final String text;
  final Color? textColor;
  final Gradient? backgroundGradient;

  const ContinueButton({
    super.key,
    this.onTap,
    this.text = 'CONTINUE',
    this.textColor,
    this.backgroundGradient,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 9.h),
        decoration: BoxDecoration(
          gradient: backgroundGradient ??
              const LinearGradient(
                begin: Alignment.topLeft,
                end: Alignment.bottomRight,
                colors: [Color(0xFF66307B), Color(0xFFC89A4F)],
              ),
          borderRadius: BorderRadius.circular(50.r),
          boxShadow: const [
            BoxShadow(
              color: Colors.black26,
              blurRadius: 10,
              offset: Offset(5, 5),
            ),
          ],
        ),
        child: Row(
          children: [
            Expanded(
              child: Center(
                child: Text(
                  text,
                  style: TextStyle(
                    color: textColor ?? Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w500,
                    letterSpacing: 2,
                  ),
                ),
              ),
            ),
            CircleAvatar(
              radius: 25.r,
              backgroundColor: Colors.white,
              child: Icon(
                Icons.arrow_forward_ios,
                color: Colors.black,
                size: 20.h,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
