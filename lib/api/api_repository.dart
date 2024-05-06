import 'dart:async';

import 'package:WooPeople/models/request/ads_agent/ads_agent_request.dart';
import 'package:WooPeople/models/request/inquiry_request/inquiry_request.dart';
import 'package:WooPeople/models/request/joint_event_request/join_event_request.dart';
import 'package:WooPeople/models/request/refresh_token_request/refresh_token_request.dart';
import 'package:get/get.dart';

import '../models/request/auth_request/change_password_request/change_password_request.dart';
import '../models/request/auth_request/confirm_password_request/confirm_forgot_password_request.dart';
import '../models/request/auth_request/forgot_password_request/forgot_password_request.dart';
import '../models/request/auth_request/login_request/login_request.dart';
import '../models/request/auth_request/register_request/register_request.dart';
import '../models/request/auth_request/social_login_request/social_login_request.dart';
import '../models/request/auth_request/social_sign_up_request/social_sign_up_request.dart';
import '../models/request/auth_request/verify_otp_forgot_password_request/verify_otp_forgot_password_request.dart';
import '../models/request/auth_request/verify_otp_request/verify_otp_request.dart';
import '../models/response/base_response.dart';
import 'api.dart';

class ApiRepository extends GetxService {
  ApiRepository();

  final ApiProvider apiProvider = Get.find();

  Future<BaseResponse?> login(LoginRequest data) async {
    final res = await apiProvider.login('/mobile/login', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> inquiryRequest(InquiryRequest data) async {
    final res = await apiProvider.inquiryRequest('/mobile/inquiry-send', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> changePassword(ChangePasswordRequest data) async {
    final res =
        await apiProvider.changePassword('/mobile/change-password', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> register(RegisterRequest data) async {
    final res = await apiProvider.register('/mobile/send-otp-register', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> refreshToken(RefreshTokenRequest data) async {
    final res = await apiProvider.refreshToken('/mobile/refresh-token', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> verifyOtp(VerifyOTPRequest data) async {
    final res = await apiProvider.verifyOTP('/mobile/signup', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> joinEvent(JoinEventRequest data) async {
    final res = await apiProvider.joinEvent('/mobile/event/join-event', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> registerAdsAgent(AdsAgentRequest data) async {
    final res =
        await apiProvider.registerAdsAgent('/license-ads-agent/register', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> verifyOtpForgotPassword(
      VerifyOTPForgotPasswordRequest data) async {
    final res = await apiProvider.verifyOTPForgotPassword(
        '/mobile/confirm-otp-forgot-password', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  // Social Login
  Future<BaseResponse?> socialLogin(SocialLoginRequest data) async {
    final res = await apiProvider.socialLogin('/mobile/social-login', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> confirmForgotPassword(
      ConfirmForgotPasswordRequest data) async {
    final res = await apiProvider.confirmForgotPassword(
        '/mobile/forgot-password', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  Future<BaseResponse?> forgotPassword(ForgotPasswordRequest data) async {
    final res = await apiProvider.forgotPassword(
      '/mobile/forgot-password',
      data,
    );
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }

  // Social Sign Up
  Future<BaseResponse?> socialSignUp(SocialSignUpRequest data) async {
    final res = await apiProvider.socialSignUp('/mobile/social-register', data);
    if (res.statusCode == 200) {
      return BaseResponse.fromJson(res.body);
    }
    return null;
  }
}
