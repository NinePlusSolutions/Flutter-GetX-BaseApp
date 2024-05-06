import 'package:WooPeople/api/api_constants.dart';
import 'package:WooPeople/api/interceptors/auth_interceptor.dart';
import 'package:WooPeople/api/interceptors/request_interceptor.dart';
import 'package:WooPeople/api/interceptors/response_interceptor.dart';
import 'package:WooPeople/shared/utils/app_flavor_helper.dart';
import 'package:get/get.dart';

class BaseProvider extends GetConnect {
  AppFlavor flavor;
  String? _httpBaseUrl;
  String? _originForgotpassword;
  String? _originSignUp;

  BaseProvider(this.flavor) {
    setupEnvironment(flavor);
  }

  void updateEnvironment(AppFlavor newFlavor) {
    this.flavor = newFlavor;
    setupEnvironment(newFlavor);
  }

  String? get httpBaseUrl => _httpBaseUrl;
  String? get originForgotpassword => _originForgotpassword;
  String? get originSignUp => _originSignUp;

  @override
  void onInit() {
    setupEnvironment(flavor);
    _httpBaseUrl = httpClient.baseUrl;
    httpClient.addAuthenticator(authInterceptor);
    httpClient.addRequestModifier(requestInterceptor);
    httpClient.addResponseModifier(responseInterceptor);
    httpClient.timeout = const Duration(seconds: 15);
  }

  void setupEnvironment(AppFlavor flavor) {
    switch (flavor) {
      case AppFlavor.development:
        httpClient.baseUrl = ApiConstants.baseUrlDevelopment;
        break;
      case AppFlavor.production:
        httpClient.baseUrl = ApiConstants.baseUrlProduction;
        break;
    }
    _httpBaseUrl = httpClient.baseUrl;
  }
}
