// import 'package:flutter/material.dart';
// import 'package:thibaudbdx_flutter/assets_helper/app_colors.dart';
//
// class CustomTextField extends StatefulWidget {
//   final String hintText;
//   final TextEditingController? controller;
//   final bool isPassword;
//   final TextInputType keyboardType;
//   final Color? backgroundColor;
//   final Color? borderColor;
//   final Color? focusedBorderColor;
//   final Color? textColor;
//   final Color? hintColor;
//   final String? Function(String?)? validator; // ✅ ঠিক করা validator টাইপ
//
//   const CustomTextField({
//     Key? key,
//     required this.hintText,
//     this.controller,
//     this.isPassword = false,
//     this.keyboardType = TextInputType.text,
//     this.backgroundColor,
//     this.borderColor,
//     this.focusedBorderColor,
//     this.textColor,
//     this.hintColor,
//     this.validator, // ✅ init
//   }) : super(key: key);
//
//   @override
//   State<CustomTextField> createState() => _CustomTextFieldState();
// }
//
// class _CustomTextFieldState extends State<CustomTextField> {
//   bool _obscureText = true;
//
//   @override
//   void initState() {
//     super.initState();
//     _obscureText = widget.isPassword;
//   }
//
//   @override
//   Widget build(BuildContext context) {
//     return TextFormField(
//       controller: widget.controller,
//       obscureText: widget.isPassword ? _obscureText : false,
//       keyboardType: widget.keyboardType,
//       validator: widget.validator, // ✅ validator এখানে ঠিকভাবে ব্যবহার করা হয়েছে
//       style: TextStyle(color: widget.textColor ?? Colors.black),
//       decoration: InputDecoration(
//         hintText: widget.hintText,
//         hintStyle: TextStyle(color: widget.hintColor ?? Colors.grey),
//         filled: true,
//         fillColor: widget.backgroundColor ?? AppColor.cF3F2FF,
//         contentPadding: EdgeInsets.symmetric(vertical: 16.0, horizontal: 12.0),
//         enabledBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.0),
//           borderSide: BorderSide(
//             color: widget.borderColor ?? AppColor.c464EFF,
//             width: 1.5,
//           ),
//         ),
//         focusedBorder: OutlineInputBorder(
//           borderRadius: BorderRadius.circular(12.0),
//           borderSide: BorderSide(
//             color: widget.focusedBorderColor ?? AppColor.cDFE1E7,
//             width: 2.0,
//           ),
//         ),
//         suffixIcon: widget.isPassword
//             ? IconButton(
//           icon: Icon(
//             _obscureText ? Icons.visibility_off : Icons.visibility,
//             color: Colors.grey,
//           ),
//           onPressed: () {
//             setState(() {
//               _obscureText = !_obscureText;
//             });
//           },
//         )
//             : null,
//       ),
//     );
//   }
// }
