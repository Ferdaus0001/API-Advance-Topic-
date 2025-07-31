import 'dart:developer';
import 'package:api_test_porject/constants/update_customer.dart';
import 'package:api_test_porject/helpers/di.dart';
import 'package:api_test_porject/networks/dio/dio.dart';
import 'package:api_test_porject/networks/rx_base.dart';
import 'package:api_test_porject/networks/stream_cleaner.dart';
import 'package:dio/dio.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'api.dart';

final class UserLoginRX extends RxResponseInt<Map> {
  String? errorMessage;
  final api = UserSignInApi.instance;

  UserLoginRX({required super.empty, required super.dataFetcher});

  Future<Map<String, dynamic>> UserSignInFun({
    required String email,
    required String password,
  }) async {
    try {
      Map<String, dynamic> data = await api.UserSignInFun(
        email: email,
        password: password,
      );
      log('Response data: $data');
      await handleSuccessWithReturn(data);
      return data;
    } catch (error) {
      log('Error catch is here: ${error.toString()}');
      return await handleErrorWithReturn(error);
    }
  }

  @override
  Future<Map> handleSuccessWithReturn(data) async {
    totalDataClean();

    String? accessToken = data['token'];
    print('Access Token: $accessToken');

    await appData.write(kKeyIsLoggedIn, true);
    await appData.write(kKeyAccessToken, accessToken);

    final prefs = await SharedPreferences.getInstance();
    String token = appData.read(kKeyAccessToken);
    dataFetcher.sink.add(data);
    DioSingleton.instance.update(token);

    return data;
  }

  @override
  Future<Map<String, dynamic>> handleErrorWithReturn(error) async {
    if (error is DioException && error.response != null) {
      final errorData = error.response!.data as Map<String, dynamic>;
      errorMessage = errorData['message'] ?? 'An error occurred';
      dataFetcher.sink.addError(error);
      return errorData;
    }
    errorMessage = 'Unexpected error occurred';
    dataFetcher.sink.addError(error);
    return {'status': 'error', 'message': errorMessage};
  }
}