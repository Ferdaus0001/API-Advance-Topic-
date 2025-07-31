

import 'package:flutter/material.dart';

import 'assets_helper/app_colors.dart';

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: AppColor.c010B21,
        body: Container(
          height: double.infinity,
          width: double.infinity,

           decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/splash.png'),
                  fit: BoxFit.cover)),
        ));
  }
}
