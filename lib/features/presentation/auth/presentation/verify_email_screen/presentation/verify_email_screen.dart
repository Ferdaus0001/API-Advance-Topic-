
import 'package:api_test_porject/assets_helper/app_colors.dart' show AppColor;
import 'package:api_test_porject/assets_helper/app_fonts.dart';
import 'package:api_test_porject/common_widgets/auth_text_fromFild.dart';
import 'package:api_test_porject/common_widgets/cusomt_couninue_button.dart';
import 'package:api_test_porject/common_widgets/custom_back_button.dart';
import 'package:api_test_porject/helpers/all_routes.dart';
import 'package:api_test_porject/helpers/navigation_service.dart';
import 'package:api_test_porject/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class VerifyEmailScreen extends StatefulWidget {
  const VerifyEmailScreen({super.key});

  @override
  State<VerifyEmailScreen> createState() => _VerifyEmailScreenState();
}

class _VerifyEmailScreenState extends State<VerifyEmailScreen> {
  final TextEditingController _emailController = TextEditingController();

  @override
  void dispose() {
    _emailController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColor.blackColor,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 21.0.w, vertical: 30.h),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomBackButton(
              onTap: () {
                NavigationService.goBack();
              },
            ),
            UIHelper.verticalSpace(29.h),
            Text(
              'Verify your account',
              style: TextFontStyle.headline28cFFFFFFRoboto500,
            ),
            UIHelper.verticalSpace(16.h),
            Text(
              'Enter your email, we will send a verification \ncode to your email',
              style: TextFontStyle.headline16c8D8D8DRoboto400,
            ),
            UIHelper.verticalSpace(26.h),

            Text(
              'Email',
              style: TextFontStyle.headline28cFFFFFFRoboto500.copyWith(fontSize: 17.sp),
            ),
            UIHelper.verticalSpace(16.h),

            AuthCustomTextFormField(
              controller: _emailController,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Email is required';
                }
                return null;
              },
              hintText: 'Enter your email',
            ),
           Spacer(),

        ContinueButton(
          text: 'Continue',
          onTap: () {
            final email = _emailController.text.trim();

            if (email.isEmpty) {
              ScaffoldMessenger.of(context).showSnackBar(
                const SnackBar(content: Text('Please enter your email')),
              );
            } else {
              // Email verification logic here
              print('Email: $email');

              // Navigate only if email is not empty
              NavigationService.navigateTo(Routes.emailOtpScreen);
            }
          },
        ),

            UIHelper.verticalSpace(26.h),
          ],
        ),
      ),
    );
  }
}
