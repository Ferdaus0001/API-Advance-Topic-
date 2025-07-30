

import 'package:auto_animated/auto_animated.dart';

import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';
import '/helpers/all_routes.dart';
import 'assets_helper/app_colors.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'helpers/language.dart';
import 'helpers/navigation_service.dart';
import 'loading.dart';
import 'networks/dio/dio.dart';

void main() async {
  if (kDebugMode) {
    print(
        ':::::::::::::::::::::::::: main Screeen:::::::::::::::::::::::::::::');
  }
  WidgetsFlutterBinding.ensureInitialized();
  await SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown,
  ]);
  await GetStorage.init();
  diSetup();
  // initiInternetChecker();
  DioSingleton.instance.create();
  runApp(
    // DevicePreview(
    //   builder: (context) => MyApp(),
    // ),
    const MyApp(),
  );
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    setInitValue();
    return AnimateIfVisibleWrapper(
      showItemInterval: const Duration(milliseconds: 150),
      child: PopScope(
        canPop: false,
        onPopInvoked: (bool didPop) async {
          // Handle pop event
        },
        child: LayoutBuilder(
          builder: (context, constraints) {
            return const UtillScreenMobile();
          },
        ),
      ),
    );
  }
}

class UtillScreenMobile extends StatelessWidget {
  const UtillScreenMobile({super.key});
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: const Size(412, 852),
      minTextAdapt: true,
      splitScreenMode: true,
      builder: (_, child) {
        return PopScope(
          canPop: false,
          onPopInvoked: (bool didPop) async {
            showMaterialDialog(context);
          },
          child: GetMaterialApp(
            showPerformanceOverlay: false,
            theme: ThemeData(
              appBarTheme: const AppBarTheme(
                backgroundColor: AppColor.blackColor,
                elevation: 0,
              ),
              primaryColor: AppColor.primaryColor,
              scaffoldBackgroundColor: AppColor.blackColor,
              elevatedButtonTheme: ElevatedButtonThemeData(
                style: ElevatedButton.styleFrom(
                  backgroundColor: AppColor.primaryColor,
                  foregroundColor: AppColor.cFFFFFF,
                  shape: RoundedRectangleBorder(
                    borderRadius: BorderRadius.circular(12),
                  ),
                ),
              ),
              inputDecorationTheme: InputDecorationTheme(
                filled: true,
                fillColor: AppColor.cF3F2FF,
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: const BorderSide(color: AppColor.cDFE1E7),
                ),
                focusedBorder: const OutlineInputBorder(
                  borderSide: BorderSide(color: AppColor.primaryColor),
                ),
                hintStyle: const TextStyle(color: AppColor.c848585),
              ),
              textTheme: const TextTheme(
                headlineLarge: TextStyle(
                  fontSize: 24,
                  fontWeight: FontWeight.bold,
                  color: AppColor.c1B1B1D,
                ),
                titleMedium: TextStyle(
                  fontSize: 18,
                  color: AppColor.c1B1B1D,
                ),
                bodyMedium: TextStyle(
                  fontSize: 16,
                  color: AppColor.c848585,
                ),
              ),
            ),
            debugShowCheckedModeBanner: false,
            translations: LocalString(),
            builder: (context, widget) {
              return MediaQuery(data: MediaQuery.of(context), child: widget!);
            },
            navigatorKey: NavigationService.navigatorKey,
            onGenerateRoute: RouteGenerator.generateRoute,
            home: const Loading(),

          ),
        );
      },
    );
  }
}
