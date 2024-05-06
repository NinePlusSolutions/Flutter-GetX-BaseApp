import 'dart:async';
import 'dart:convert';

import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';
import 'package:get/get_connect/http/src/request/request.dart';

import '../../shared/constants/common.dart';
import '../../shared/utils/common_widget.dart';

FutureOr<dynamic> responseInterceptor(
  Request request,
  Response response,
) async {
  await EasyLoading.dismiss();
  handleResponseStatus(response, request);
  return response;
}

void handleResponseStatus(
  Response response,
  Request request,
) async {
  final finalValue = jsonDecode(response.bodyString!);
  switch (response.statusCode) {
    case 200:
      if (finalValue["status"]) {
        return;
      }
      if (finalValue['messages'].length > 0 &&
          !response.request!.headers.containsKey('qrCode')) {
        CommonWidget.toastAPIError(
            finalValue['messages'][0]['messageCode'] ?? "");
        return;
      }

      CommonWidget.toast(
        finalValue['messages'][0]['messageCode'] ?? "",
      );
      return;

    case 401:
      // await myController.logoutRemoveToken();
      break;
    case 400:
      if (response.request!.headers.containsKey('forgotPassword')) {
        CommonWidget.toastAPIError(CommonConstants.forgotPasswordError.tr);
        return;
      }
      CommonWidget.toastAPIError(CommonConstants.someThingWrongPlsTryAgain.tr);
      break;
    default:
      if (!response.request!.headers.containsKey('type') &&
          request.method != "get") {
        CommonWidget.toastAPIError(
            CommonConstants.someThingWrongPlsTryAgain.tr);
        return;
      }
      if (response.request!.headers.containsKey('qrCode')) {
        CommonWidget.toast(
          CommonConstants.someThingWrongPlsTryAgain.tr,
        );
        return;
      }
      break;
  }
  return;
}
