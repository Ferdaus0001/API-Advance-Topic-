import 'dart:developer';
import 'package:api_test_porject/helpers/toast.dart';
import 'package:api_test_porject/networks/dio/dio.dart';

import 'package:dio/dio.dart';
import '/networks/endpoints.dart';

final class UserSignInApi {
  static final UserSignInApi _singleton = UserSignInApi._internal();
  UserSignInApi._internal();
  static UserSignInApi get instance => _singleton;

  Future<Map<String, dynamic>> UserSignInFun({
    required String email,
    required String password,
  }) async {
    try {
      log("SignIn Payload: $email, $password");

      Response response = await postHttp(Endpoints.userLogin(), {
        "email": email,
        "password": password,
      });

      log('API response: ${response.data}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        ToastUtil.showShortToast("Login successful.");
        return response.data as Map<String, dynamic>;
      } else {
        throw DioException(
          response: response,
          requestOptions: response.requestOptions,
          error: 'Unexpected status code: ${response.statusCode}',
        );
      }
    } catch (error, stacktrace) {
      log("SignIn Error: $error");
      log("StackTrace: $stacktrace");
      if (error is DioException && error.response != null) {
        return error.response!.data as Map<String, dynamic>;
      }
      rethrow;
    }
  }
}