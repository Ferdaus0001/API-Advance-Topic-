import 'dart:developer';
import 'package:api_test_porject/helpers/toast.dart';
import 'package:api_test_porject/networks/dio/dio.dart';
import 'package:api_test_porject/networks/exception_handler/data_source.dart';
import 'package:dio/dio.dart';
import '/networks/endpoints.dart';

final class SignUpApi {
  static final SignUpApi _singleton = SignUpApi._internal();
  SignUpApi._internal();
  static SignUpApi get instance => _singleton;

  Future<Map> signUp({
    required String fullName,
    required String email,
    required String password,
    required String confirmPassword,
    required String age,
    required String gender,
  }) async {
    try {
      log("SignUp Payload: $fullName, $email, $password");

      Response response = await postHttp(
        Endpoints.userSignUp(),
        {
          "fullName": fullName,
          "email": email,
          "password": password,
          "confirmPassword": confirmPassword,
          "age": age,
          "gender": gender,
        },
      );

      log('API response: ${response.data}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        ToastUtil.showShortToast("Registration successful. Please verify with OTP.");
        return response.data;
      } else {
        throw DataSource.DEFAULT.getFailure();
      }
    } catch (error, stacktrace) {
      log("Signup Error: $error");
      log("StackTrace: $stacktrace");
      rethrow;
    }
  }
}
