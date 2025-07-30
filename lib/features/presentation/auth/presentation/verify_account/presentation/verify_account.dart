
import 'package:api_test_porject/assets_helper/app_colors.dart' show AppColor;
import 'package:api_test_porject/assets_helper/app_fonts.dart';
import 'package:api_test_porject/common_widgets/custom_back_button.dart';
import 'package:api_test_porject/common_widgets/verify_button.dart';
import 'package:api_test_porject/helpers/all_routes.dart';
import 'package:api_test_porject/helpers/navigation_service.dart';
import 'package:api_test_porject/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyAccountScreen extends StatefulWidget {
  const VerifyAccountScreen({super.key});

  @override
  State<VerifyAccountScreen> createState() => _VerifyAccountScreenState();
}

class _VerifyAccountScreenState extends State<VerifyAccountScreen> {
  String selectedOption = '';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 30.h),
        child: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomBackButton(
                onTap: () {
                  NavigationService.goBack;
                },
              ),
              UIHelper.verticalSpace(29.h),
              Text(
                'Verify your account',
                style: TextFontStyle.headline28cFFFFFFRoboto500,
              ),
              UIHelper.verticalSpace(16.h),
              Text(
                'Select which contact details should we use \nto verify your account',
                style: TextFontStyle.headline16c8D8D8DRoboto400,
              ),
              UIHelper.verticalSpace(26.h),

              /// ✅ Email Button
              VerifyButton(
                isTapped: selectedOption == 'email',
                onTap: () {
                  setState(() {
                    selectedOption = 'email';
                  });
                    NavigationService.navigateTo(Routes.verifyEmailScreen);
      
                },
                title: 'Email',
                subtitle: 'rishabh@fluttertop.studio',
              ),
              UIHelper.verticalSpace(20.h),

              /// ✅ Phone Button
              VerifyButton(
                isTapped: selectedOption == 'phone',
                onTap: () {
                  setState(() {
                    selectedOption = 'phone';
                  });
                  NavigationService.navigateTo(Routes.verifyEmailScreen);
                },
                title: 'Phone Number',
                subtitle: '01XXXXXXXX',
              ),
            ],
          ),
        ),
      ),
    );
  }
}
