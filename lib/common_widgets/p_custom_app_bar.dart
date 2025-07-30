// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../assets_helper/app_colors.dart';
// import '../assets_helper/app_fonts.dart';
// import '../helpers/navigation_service.dart';
// import '../helpers/ui_helpers.dart';
//
//
// class PCustomAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final String title;
//   final bool showBackIcon;
//   final double height;
//
//   @override
//   Size get preferredSize => Size.fromHeight(height);
//
//   PCustomAppBar({
//     required this.title,
//     this.showBackIcon = true,
//     this.height = kToolbarHeight,
//   });
//
//   @override
//   Widget build(BuildContext context) {
//     return AppBar(
//       backgroundColor: Colors.transparent,
//       automaticallyImplyLeading: false,
//       title: Row(
//         children: [
//           if (showBackIcon) ...[
//             GestureDetector(
//               onTap: () {
//                 NavigationService.goBack();
//               },
//               child: Icon(
//                 Icons.arrow_back_ios_new_outlined,
//                 color: Colors.white,
//                 size: 24,
//               ),
//             ),
//             UIHelper.horizontalSpace(20.w),
//           ] else ...[
//             // Add space when there's no back icon
//             UIHelper.horizontalSpace(10.w),
//           ],
//           Text(
//             title,
//             style: TextFontStyle.textStyle24c4A90E2urbanistW600.copyWith(
//               color: AppColor.cFFFFFF,
//             ),
//           ),
//         ],
//       ),
//     );
//   }
// }
