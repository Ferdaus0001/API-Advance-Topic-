// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
//
// import '../assets_helper/app_colors.dart';
//
// class BeautifulAppBar extends StatelessWidget implements PreferredSizeWidget {
//   final TextEditingController controller;
//   const BeautifulAppBar({super.key, required this.controller});
//   @override
//   Size get preferredSize => Size.fromHeight(180.h); // Adjusted height for your design
//   @override
//   Widget build(BuildContext context) {
//     return Container(
//       padding: EdgeInsets.symmetric(horizontal: 11.w, vertical: 63.h),
//       decoration: BoxDecoration(
//         color: AppColor.c464EFF,
//         borderRadius: BorderRadius.only(
//           bottomLeft: Radius.circular(12.r),
//           bottomRight: Radius.circular(12.r),
//         ),
//       ),
//       child: Padding(
//         padding: EdgeInsets.symmetric(horizontal: 11.w),
//         child: Column(
//           children: [
//             Row(
//               children: [
//                 CircleAvatar(
//                   radius: 30.r,
//                   backgroundImage: NetworkImage(
//                     'https://www.socialnetworkelite.com/hs-fs/hubfs/image2-17.jpg?width=3600&name=image2-17.jpg',
//                   ),
//                 ),
//                 UIHelper.horizontalSpace(7.w),
//                 Column(
//                   crossAxisAlignment: CrossAxisAlignment.start,
//                   children: [
//                     Text(
//                       'Hello',
//                       style: TextFontStyle.textStyle16cFCF9F5poppinsW400.copyWith(fontSize: 13.sp),
//                     ),
//                     Text(
//                       'Sarthak',
//                       style: TextFontStyle.textStyle16cFCF9F5poppinsW400,
//                     ),
//                   ],
//                 ),
//                 Spacer(),
//                 Container(
//                   decoration: BoxDecoration(
//                     border: Border.all(color: Colors.white, width: 1),
//                     borderRadius: BorderRadius.circular(212.r),
//                   ),
//                   child: IconButton(
//                     onPressed: () {},
//                     icon: Icon(Icons.density_medium_rounded, color: Colors.white, size: 22),
//                   ),
//                 ),
//               ],
//             ),
//             UIHelper.verticalSpace(20.h),
//             CustomTextFormField(
//               hintText: 'Find your task here..',
//               controller: controller,
//             ),
//           ],
//         ),
//       ),
//     );
//   }
// }

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';

import '../assets_helper/app_colors.dart';
import '../assets_helper/app_fonts.dart';
import '../assets_helper/app_icons.dart';
import '../helpers/navigation_service.dart';


class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final VoidCallback? onBack;

  const CustomAppBar({
    super.key,
    required this.title,
    this.onBack,
  });

  @override
  Size get preferredSize => Size.fromHeight(90.h);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      toolbarHeight: 90.h,
      backgroundColor: AppColor.cFFFFFF,
      centerTitle: true,
      leading: GestureDetector(
        onTap: onBack ?? () => NavigationService.goBack(),
        child: Padding(
          padding: EdgeInsets.only(left: 33.w),
          child: Transform.scale(
            scale: 2.2,
            child: Card(
              color: AppColor.cFBFAF8,
              shape: const CircleBorder(),
              child: SvgPicture.asset(AppIcons.buttonContiner),
            ),
          ),
        ),
      ),
      title: Text(
        title,
        style: TextFontStyle.textStyle20Satoshic111214W700,
      ),
    );
  }
}
