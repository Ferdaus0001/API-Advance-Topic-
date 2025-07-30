import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class MyCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final Widget? leading;
  final Widget? title;
  final Widget? action;

  const MyCustomAppBar({
    super.key,
    this.leading,
    this.title,
    this.action,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 130.0,
      padding: EdgeInsets.symmetric(horizontal: 16.w),
      alignment: Alignment.center,
      child: Transform.translate(
        offset: const Offset(0, 25),
        child: Stack(
          alignment: Alignment.center,
          children: [
            // Centered Title
            Center(child: title ?? const SizedBox()),

            // Leading at start
            Positioned(
              left: 0,
              child: leading ?? const SizedBox(),
            ),

            // Action at end
            Positioned(
              right: 0,
              child: action ?? const SizedBox(),
            ),
          ],
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(130.0);
}
