import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CurvedImageWidget extends StatelessWidget {
  final String imagePath;
  final double height;

  const CurvedImageWidget({
    super.key,
    required this.imagePath,
    this.height = 300,
  });

  @override
  Widget build(BuildContext context) {
    return ClipPath(

      clipper: BottomCurveClipper(),
      child: Container(
        height: height.h,
        width: double.infinity,
        decoration: BoxDecoration(
          image: DecorationImage(
            image: AssetImage(imagePath),
            fit: BoxFit.cover,
          ),
        ),
      ),
    );
  }
}

// Custom Clipper for bottom curve
class BottomCurveClipper extends CustomClipper<Path> {
  @override
  Path getClip(Size size) {
    var path = Path();
    path.lineTo(0, size.height - 60);
    path.quadraticBezierTo(
      size.width / 2, size.height,
      size.width, size.height - 60,
    );
    path.lineTo(size.width, 0);
    path.close();
    return path;
  }

  @override
  bool shouldReclip(CustomClipper<Path> oldClipper) => false;
}
