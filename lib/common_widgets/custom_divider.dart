
import 'package:flutter/material.dart';

class OrDivider extends StatelessWidget {
  final String text;
  final Color lineColor;
  final TextStyle? textStyle;

  const OrDivider({
    super.key,
    this.text = 'or sign in with',
    this.lineColor = const Color(0xFFE8E9EA),
    this.textStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Expanded(child: Divider(color: lineColor)),
        const SizedBox(width: 10),
        Text(
          text,
          style: textStyle ??
              const TextStyle(
                color: Colors.black54,
                fontSize: 14,
              ),
        ),
        const SizedBox(width: 10),
        Expanded(child: Divider(color: lineColor)),
      ],
    );
  }
}
