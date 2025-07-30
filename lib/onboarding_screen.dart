// import 'package:flutter/material.dart';
// import 'package:flutter_screenutil/flutter_screenutil.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:thibaudbdx_flutter/assets_helper/app_colors.dart';
// import 'package:thibaudbdx_flutter/assets_helper/app_fonts.dart';
// import 'package:thibaudbdx_flutter/assets_helper/app_icons.dart';
// import 'package:thibaudbdx_flutter/common_widgets/custom_button.dart';
// import 'package:thibaudbdx_flutter/helpers/all_routes.dart';
// import 'package:thibaudbdx_flutter/helpers/navigation_service.dart';
//
// class OnboardingScreen extends StatefulWidget {
//   @override
//   _OnboardingScreenState createState() => _OnboardingScreenState();
// }
//
// class _OnboardingScreenState extends State<OnboardingScreen> {
//   final PageController _controller = PageController();
//   int _currentPage = 0;
//   List<String> imagepath = [AppIcons.iconsRoute, AppIcons.logo, AppIcons.logo];
//
//   final List<Map<String, String>> _pages = [
//     {
//       'title': 'Welcome to Touchpnt',
//       'description': 'Stay connected with the people who matter most.',
//     },
//     {
//       'title': 'Stay in Touch, Effortlessly',
//       'description':
//           'Set reminders for calls, texts, or meetups. Track your progress and earn badges for staying consistent.',
//     },
//     {
//       'title': 'Ready to Stay Connected?',
//       'description':
//           'Start adding your contacts and set your first touchpoint today!',
//     },
//   ];
//
//   @override
//   Widget build(BuildContext context) {
//     return Scaffold(
//       backgroundColor: AppColor.primary_color,
//       floatingActionButtonLocation: FloatingActionButtonLocation.centerFloat,
//       body: SafeArea(
//         child: Padding(
//           padding: EdgeInsets.symmetric(horizontal: 20.w),
//           child: Column(
//             mainAxisAlignment: MainAxisAlignment.center,
//             crossAxisAlignment: CrossAxisAlignment.center,
//             children: [
//               // Constraining PageView size
//               Expanded(
//                 flex: 5,
//                 child: Container(
//                   child: PageView.builder(
//                     controller: _controller,
//                     itemCount: _pages.length,
//                     onPageChanged: (index) {
//                       setState(() {
//                         _currentPage = index;
//                       });
//                     },
//                     itemBuilder: (context, index) {
//                       return Column(
//                         mainAxisAlignment: MainAxisAlignment.end,
//                         crossAxisAlignment: CrossAxisAlignment.center,
//                         children: [
//                           SvgPicture.asset(
//                             imagepath[index],
//                             height: 250.h,
//                           ), // Image Placeholder
//
//                           SizedBox(height: 40.h),
//
//                           Text(
//                             _pages[index]['title']!,
//                             style: TextFontStyle.textStyle20UrbanistW500
//                                 .copyWith(
//                                   letterSpacing: 0,
//                                   fontSize: 28.sp,
//                                   color: AppColor.cCFD0D5,
//                                   fontWeight: FontWeight.w600,
//                                 ),
//                             textAlign: TextAlign.center,
//                           ),
//
//                           SizedBox(height: 20.h),
//
//                           Wrap(
//                             children: [
//                               Text(
//                                 _pages[index]['description']!,
//                                 style: TextFontStyle.textStyle20UrbanistW500
//                                     .copyWith(
//                                       height: 1.4.h,
//                                       letterSpacing: 0,
//                                       fontSize: 16.sp,
//                                       color: AppColor.cFFFFFF,
//                                       fontWeight: FontWeight.w400,
//                                     ),
//                                 textAlign: TextAlign.center,
//                               ),
//                             ],
//                           ),
//                         ],
//                       );
//                     },
//                   ),
//                 ),
//               ),
//               SizedBox(height: 20.h),
//               // Indicator
//               Expanded(
//                 flex: 1,
//                 child: Container(
//                   child: Wrap(
//                     spacing: 20,
//                     runAlignment: WrapAlignment.start,
//                     alignment: WrapAlignment.center,
//                     crossAxisAlignment: WrapCrossAlignment.center,
//                     children: [
//                       Row(
//                         mainAxisAlignment: MainAxisAlignment.center,
//                         children: List.generate(
//                           _pages.length,
//                           (i) => AnimatedContainer(
//                             duration: Duration(milliseconds: 300),
//                             curve: Curves.easeInOut,
//                             margin: EdgeInsets.symmetric(horizontal: 4.0.w),
//                             height: 8.0,
//                             width: _currentPage == i ? 24.0.w : 8.0.w,
//                             decoration: BoxDecoration(
//                               color:
//                                   _currentPage == i
//                                       ? AppColor.cFFFFFF
//                                       : AppColor.c4F4F4F,
//                               borderRadius: BorderRadius.circular(29.r),
//                             ),
//                           ),
//                         ),
//                       ),
//                       Padding(
//                         padding: EdgeInsets.only(top: 20.h),
//                         child: CustomButton(
//                           text:
//                               _currentPage == _pages.length - 1
//                                   ? 'Get Started'
//                                   : 'Next',
//                           backgroundColor: AppColor.c1570EF,
//                           onPressed: () {
//                             if (_currentPage < _pages.length - 1) {
//                               _controller.nextPage(
//                                 duration: Duration(milliseconds: 300),
//                                 curve: Curves.easeInOut,
//                               );
//                             } else {
//                               NavigationService.navigateTo(
//                                 Routes.choosePlanScreen,
//                               );
//                             }
//                           },
//                           style: TextFontStyle.textStyle20UrbanistW500.copyWith(
//                             fontSize: 18.sp,
//                             color: AppColor.cFFFFFF,
//                             letterSpacing: 0,
//                           ),
//                         ),
//                       ),
//                     ],
//                   ),
//                 ),
//               ),
//             ],
//           ),
//         ),
//       ),
//     );
//   }
// }
