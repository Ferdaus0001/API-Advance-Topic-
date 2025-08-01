
import 'dart:io';

 import 'package:flutter/cupertino.dart';

 import '../features/presentation/auth/presentation/email_otp_screen/presentaton/email_otp_screen.dart';
  import '../features/presentation/auth/presentation/verify_account/presentation/verify_account.dart';
import '../features/presentation/auth/presentation/verify_email_screen/presentation/verify_email_screen.dart';


final class Routes {
  static final Routes _routes = Routes._internal();
  Routes._internal();
  static Routes get instance => _routes;
  static const String choosePlanScreen = '/choosePlanScreen';
  static const String singUpScreen = '/singUpScreen';
  static const String singInScreen = '/singInScreen';
  static const String verifyAccountScreen = '/verifyAccountScreen';
  static const String verifyEmailScreen = '/verifyEmailScreen';
  static const String emailOtpScreen = '/emailOtpScreen';
  static const String buyTicketScreen = '/buyTicketScreen';

}

final class RouteGenerator {
  static final RouteGenerator _routeGenerator = RouteGenerator._internal();
  RouteGenerator._internal();
  static RouteGenerator get instance => _routeGenerator;

  static Route<dynamic>? generateRoute(RouteSettings settings) {
    switch (settings.name) {



  case Routes.verifyAccountScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const VerifyAccountScreen(),
                settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const VerifyAccountScreen());





  case Routes.verifyEmailScreen:
        return Platform.isAndroid
            ? _FadedTransitionRoute(
                widget: const VerifyEmailScreen(),
                settings: settings)
            : CupertinoPageRoute(
                builder: (context) => const VerifyEmailScreen());



    }
  }
}

// ignore: unused_element
class _FadedTransitionRoute extends PageRouteBuilder {
  final Widget widget;
  @override
  final RouteSettings settings;

  _FadedTransitionRoute({required this.widget, required this.settings})
      : super(
          settings: settings,
          reverseTransitionDuration: const Duration(milliseconds: 1),
          pageBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
          ) {
            return widget;
          },
          transitionDuration: const Duration(milliseconds: 1),
          transitionsBuilder: (
            BuildContext context,
            Animation<double> animation,
            Animation<double> secondaryAnimation,
            Widget child,
          ) {
            return FadeTransition(
              opacity: CurvedAnimation(parent: animation, curve: Curves.ease),
              child: child,
            );
          },
        );
}

class ScreenTitle extends StatelessWidget {
  final Widget widget;

  const ScreenTitle({super.key, required this.widget});

  @override
  Widget build(BuildContext context) {
    return TweenAnimationBuilder(
      tween: Tween<double>(begin: .5, end: 1),
      duration: const Duration(milliseconds: 500),
      curve: Curves.bounceIn,
      builder: (context, value, child) {
        return Opacity(opacity: value, child: child);
      },
      child: widget,
    );
  }
}
