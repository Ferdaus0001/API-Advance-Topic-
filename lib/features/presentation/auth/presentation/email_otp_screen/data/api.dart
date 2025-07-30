import 'dart:developer';
import 'package:api_test_porject/helpers/toast.dart';
import 'package:api_test_porject/networks/dio/dio.dart';
import 'package:api_test_porject/networks/exception_handler/data_source.dart';
import 'package:dio/dio.dart';
import '/networks/endpoints.dart';

final class EmailOtpApi {
  static final EmailOtpApi _singleton = EmailOtpApi._internal();
  EmailOtpApi._internal();
  static EmailOtpApi get instance => _singleton;

  Future<Map> EmailOtpFun({required String otp, required String email}) async {
    try {
      log("SignUp Payload: $otp, $email, $email");

      Response response = await postHttp(Endpoints.EmailOtp(), {
        "otp": otp,
        "email": email,
      });

      log('API response: ${response.data}');

      if (response.statusCode == 200 || response.statusCode == 201) {
        ToastUtil.showShortToast(
          "Registration successful. Please verify with OTP.",
        );
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
