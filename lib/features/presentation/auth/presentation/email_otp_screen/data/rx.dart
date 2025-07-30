import 'dart:developer';

import 'package:api_test_porject/constants/update_customer.dart';
import 'package:api_test_porject/helpers/di.dart';
import 'package:api_test_porject/networks/rx_base.dart';
import 'package:api_test_porject/networks/stream_cleaner.dart';
import 'package:dio/dio.dart';
import 'api.dart';

final class EmailOtpRx extends RxResponseInt<Map> {
  String? errorMessage;
  final api = EmailOtpApi.instance;

  EmailOtpRx({required super.empty, required super.dataFetcher});

  Future<bool> EmailOtpFun({required String email, required String otp}) async {
    try {
      Map data = await api.EmailOtpFun(email: email, otp: otp);
      log('Response data: $data');
      await handleSuccessWithReturn(data);
      return true;
    } catch (error) {
      log('Error catch is here : ${error.toString()}');
      return handleErrorWithReturn(error);
    }
  }

  @override
  handleSuccessWithReturn(data) async {
    totalDataClean();

    await appData.write(kKeyIsLoggedIn, true);

    return data;
  }

  @override
  handleErrorWithReturn(error) {
    if (error is DioException) {
      if (error.response!.statusCode == 400) {
        errorMessage = error.response!.data['message'];
      } else if (error.response!.data['code'] == 403) {
        errorMessage = error.response!.data['message'];
      } else {
        errorMessage = error.response!.data['message'];
      }
    }
    dataFetcher.sink.addError(error);
    return false;
  }
}
