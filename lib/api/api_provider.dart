// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:WooPeople/models/request/ads_agent/ads_agent_request.dart';
import 'package:WooPeople/models/request/inquiry_request/change_status_read_request.dart';
import 'package:WooPeople/models/request/inquiry_request/inquiry_request.dart';
import 'package:WooPeople/models/request/inquiry_request/is_read_request.dart';
import 'package:WooPeople/models/request/joint_event_request/join_event_request.dart';
import 'package:WooPeople/models/request/refresh_token_request/refresh_token_request.dart';
import 'package:WooPeople/models/request/reward/purchase_product_request/purchase_product_request.dart';
import 'package:get/get.dart';

import 'package:dio/dio.dart' as dio;
import 'package:shared_preferences/shared_preferences.dart';
import '../models/request/auth_request/change_password_request/change_password_request.dart';
import '../models/request/auth_request/confirm_password_request/confirm_forgot_password_request.dart';
import '../models/request/auth_request/forgot_password_request/forgot_password_request.dart';
import '../models/request/auth_request/login_request/login_request.dart';
import '../models/request/auth_request/register_request/register_request.dart';
import '../models/request/auth_request/social_login_request/social_login_request.dart';
import '../models/request/auth_request/social_sign_up_request/social_sign_up_request.dart';
import '../models/request/auth_request/verify_otp_forgot_password_request/verify_otp_forgot_password_request.dart';
import '../models/request/auth_request/verify_otp_request/verify_otp_request.dart';
import '../models/request/event/follow_event_request/follow_event_request.dart';
import '../models/request/home_page_request/change_profile_request/change_profile_request.dart';
import '../shared/constants/storage.dart';
import '../shared/utils/app_flavor_helper.dart';
import 'api_constants.dart';
import 'base_provider.dart';

class ApiProvider extends BaseProvider {
  ApiProvider(AppFlavor flavor) : super(flavor);
  static ApiProvider get to => Get.find();

  Future<Response> login(String path, LoginRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> inquiryRequest(String path, InquiryRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> changePassword(String path, ChangePasswordRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> register(String path, RegisterRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> refreshToken(String path, RefreshTokenRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> socialLogin(String path, SocialLoginRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> socialSignUp(String path, SocialSignUpRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> verifyOTP(String path, VerifyOTPRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> verifyOTPForgotPassword(
      String path, VerifyOTPForgotPasswordRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> confirmForgotPassword(
      String path, ConfirmForgotPasswordRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> forgotPassword(String path, ForgotPasswordRequest data) {
    Map<String, String> headers = {};
    headers['forgotPassword'] = 'forgotPassword';
    return post(path, data.toJson(), headers: headers);
  }

  Future<Response> getUsers(String path) {
    return get(path);
  }

  Future<Response> getUserInfo(String path) {
    return get(path);
  }

  Future<Response> deleteUserAccount(String path) {
    return delete(path);
  }

  Future<Response> cancelFollowEvent(String path) {
    return delete(path);
  }

  Future<Response> deleteTokenFCM(String path) {
    return delete(path);
  }

  Future<Response> getData(String path) {
    return get(path);
  }

  Future<Response> getFAQ(String path) {
    return get(path);
  }

  Future<Response> joinEvent(String path, JoinEventRequest data) {
    return post(path, data.toJson());
  }

  // edit profile
  Future<Response> changeProfile(String path, ChangeProfileRequest data) {
    return put(path, data.toJson());
  }

  Future<Response> changeStatusRead(String path, ChangeStatusReadRequest data) {
    return put(path, data.toJson());
  }

  Future<Response> isRead(String path, IsReadRequest data) {
    Map<String, String> headers = {};
    headers['type'] = 'isRead';
    return put(path, data.toJson(), headers: headers);
  }

  Future<dio.Response> postFormData(String path, dio.FormData data) async {
    BaseProvider baseProvider = Get.find();

    final dio.Dio _dio = dio.Dio(
      dio.BaseOptions(
        baseUrl: baseProvider.httpBaseUrl ?? ApiConstants.baseUrlProduction,
      ),
    );
    final prefs = await SharedPreferences.getInstance();
    final accessToken = prefs.getString(StorageConstants.token);

    final headers = {
      'access-token': accessToken,
      'prefix': 'Bearer',
    };
    dio.Options options = dio.Options(
      headers: {
        'Authorization': 'Bearer $accessToken',
      },
    );
    try {
      final response = await _dio.post(path, data: data, options: options);
      return response;
    } on dio.DioError catch (e) {
      throw Exception(e.response?.data['message'] ?? 'Error uploading data');
    }
  }

  Future<Response> uploadImage(String path, dio.FormData formData) {
    return post(path, formData);
  }

  // notification
  Future<Response> turnOnOffNotification(String path, bool isOnNotification) {
    Map<String, String> headers = {};
    headers['type'] = 'notification';
    return put(path, isOnNotification.toString(), headers: headers);
  }

  Future<Response> deviceNotification(String path, String data) {
    Map<String, String> headers = {};
    headers['type'] = 'notification';

    return post(path, "\"$data\"", headers: headers);
  }

  //reward
  Future<Response> purchaseProduct(String path, PurchaseProductRequest data) {
    return post(path, data.toJson());
  }

  // daily attendance
  Future<Response> checkInAttendance(String path) {
    return post(path, {});
  }

  Future<Response> getMemberAttendance(String path) {
    return get(path);
  }

  // Follow Event
  Future<Response> followEvent(String path, FollowEventRequest data) {
    return post(path, data.toJson());
  }

  Future<Response> registerAdsAgent(String path, AdsAgentRequest data) {
    Map<String, String> headers = {};
    headers['qrCode'] = 'qrCode';
    return post(path, data.toJson(), headers: headers);
  }
}
