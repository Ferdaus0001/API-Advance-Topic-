
import 'package:api_test_porject/splash_screen.dart';

import 'package:flutter/material.dart';

import 'constants/update_customer.dart';


import 'features/presentation/auth/sing_in/presentation/sing_in_screen.dart';
import 'helpers/di.dart';
import 'helpers/helper_methods.dart';
import 'networks/dio/dio.dart';

final class Loading extends StatefulWidget {
  const Loading({super.key});

  @override
  State<Loading> createState() => _LoadingState();
}

class _LoadingState extends State<Loading> {
  bool _isLoading = true;

  @override
  void initState() {
    loadInitialData();

    super.initState();
  }


  loadInitialData() async {
    await setInitValue();
    bool data = appData.read(kKeyIsLoggedIn) ?? false;

    bool data2 = appData.read(kKeyIsLoggedIn2) ?? false;
    if (data) {
      String token = appData.read(kKeyAccessToken);
      DioSingleton.instance.update(token);
    } else if (data2) {
      String token = appData.read(kKeyAccessToken2);
      DioSingleton.instance.update(token);
    } else {
      // DioSingleton.instance.update("");
    }
    setState(() {
      _isLoading = false;
    });
  }

  @override
  Widget build(BuildContext context) {
    if (_isLoading) {
      return const SplashScreen();
    } else {

      return SignInScreen();

    }
  }
}
