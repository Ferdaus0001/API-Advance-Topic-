import 'dart:developer';
import 'package:api_test_porject/constants/update_customer.dart';
import 'package:api_test_porject/helpers/di.dart';
import 'package:api_test_porject/networks/rx_base.dart';
import 'package:api_test_porject/networks/stream_cleaner.dart';
import 'package:dio/dio.dart';
import 'api.dart';

final class SignUpRX extends RxResponseInt<Map> {
  String? errorMessage;
  final api = SignUpApi.instance;

  SignUpRX({required super.empty, required super.dataFetcher});

  Future<bool> signUp({
    required String fullName,
    required String email,
    required String password,
    required String confirmPassword,
    required String age,
    required String gender,
  }) async {
    try {
      Map data = await api.signUp(
        fullName: fullName,
        email: email,
        password: password,
        confirmPassword: confirmPassword,
        age: age,
        gender: gender,
      );
      log('Response data: $data');
      return handleSuccessWithReturn(data);
    } catch (error) {
      log('Error caught in RX: ${error.toString()}');
      return handleErrorWithReturn(error);
    }
  }

  @override
  handleSuccessWithReturn(data) async {
    totalDataClean();
    await appData.write(kKeyIsLoggedIn, true);

    dataFetcher.sink.add(data);
    return true;
  }

  @override
  handleErrorWithReturn(error) {
    if (error is DioException) {
      try {
        errorMessage = error.response?.data['message'] ?? "Unknown error";
      } catch (_) {
        errorMessage = "Something went wrong";
      }
    } else {
      errorMessage = "Unexpected error occurred";
    }

    dataFetcher.sink.addError(errorMessage ?? "Error");
    return false;
  }
}
