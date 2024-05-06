// ignore_for_file: deprecated_member_use, unused_local_variable

import 'dart:async';
import 'dart:convert';

import 'package:WooPeople/shared/constants/common.dart';
import 'package:firebase_auth/firebase_auth.dart';
import 'package:flutter/material.dart';
import 'package:flutter_facebook_auth/flutter_facebook_auth.dart';
import 'package:get/get.dart';
import 'package:google_sign_in/google_sign_in.dart';
import 'package:shared_preferences/shared_preferences.dart';
import 'package:sign_in_with_apple/sign_in_with_apple.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../api/api_repository.dart';
import '../../../api/base_provider.dart';
import '../../../models/request/auth_request/register_request/register_request.dart';
import '../../../models/request/auth_request/social_login_request/social_login_request.dart';
import '../../../routes/app_pages.dart';
import '../../../shared/constants/api_response_key.dart';
import '../../../shared/constants/storage.dart';
import '../../../shared/enums/social_type.dart';
import '../../../shared/utils/common_widget.dart';
import '../../../shared/utils/focus.dart';

class LoginController extends GetxController {
  final ApiRepository apiRepository;
  LoginController({required this.apiRepository});

  final GlobalKey<FormState> loginFormKey = GlobalKey<FormState>();

  RxBool isPasswordVisible = true.obs;
  RxBool isConfirmPasswordVisible = true.obs;
  RxBool isNewPasswordVisible = true.obs;
  Rx validate = false.obs;
  RxBool isEmailEntered = false.obs;
  RxBool isEmail = false.obs;
  RxBool isPhoneNumber = false.obs;
  int? type;

  TextEditingController loginPhoneNoController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  final loginPhoneNoControllerCode = TextEditingController();
  final loginPasswordController = TextEditingController();
  final prefs = Get.find<SharedPreferences>();

  final FocusNode emailFocus = FocusNode();
  final FocusNode passwordFocus = FocusNode();
  final BaseProvider baseProvider = Get.find();

  final otpFieldOne = TextEditingController();
  final otpFieldTwo = TextEditingController();
  final otpFieldThree = TextEditingController();
  final otpFieldFour = TextEditingController();
  final otpFieldFive = TextEditingController();
  final otpFieldSix = TextEditingController();

  RxMap<String, dynamic>? facebookUserData;
  AccessToken? _accessToken;

  final googleUserData = Rx<GoogleSignInAccount?>(null);
  static final _googleSignIn = GoogleSignIn();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  RxString otp = ''.obs;

  void setOtp(String value) {
    otp.value = value;
  }

  void hideKeyboard() {
    emailFocus.unfocus();
    passwordFocus.unfocus();
  }

  String validateOtp() {
    if (otp.value.isEmpty || otp.value.length < 4) {
      // return 'Please enter a valid OTP';
    }
    // You can add additional checks here if needed
    return '';
  }

  bool isOtpValid() {
    return otp.value.length == 4;
  }

  void login(BuildContext context) async {
    AppFocus.unfocus(context);
    if (loginFormKey.currentState!.validate()) {
      // final res = await apiRepository.login(
      //   LoginRequest(
      //     phoneNo: loginPhoneNoController.text,
      //     password: loginPasswordController.text,
      //   ),
      // );

      // if (res?.status == true) {
      //   if (res?.data.containsKey(ApiResponseKey.token)) {
      //     // final handler = NotificationHandler();
      //     // final tokenFCM = await handler.getToken();
      //     // handler.initializeFcmNotification();
      //     // handler.setListeners();
      //     // // setUpDeviceNotification(tokenFCM ?? "");
      //     // prefs.setString(StorageConstants.tokenFCM, tokenFCM ?? '');

      //     final token = res?.data[ApiResponseKey.token];
      //     final tokenDeviceFCM = res?.data[ApiResponseKey.tokenFCM];
      //     final refreshToken = res?.data[ApiResponseKey.refreshToken];

      //     prefs.setString(
      //       StorageConstants.role,
      //       res?.data[ApiResponseKey.role],
      //     );
      //     prefs.setString(StorageConstants.token, token);
      //     prefs.setString(StorageConstants.refreshToken, refreshToken);
      //     prefs.setBool(StorageConstants.isAvailbleToScan, true);
      //     prefs.setBool(StorageConstants.isNotificationOn, true);

      Get.offAllNamed(Routes.MAIN);
      loginPhoneNoController.clear();
      loginPasswordController.clear();
      loginPhoneNoControllerCode.clear();
      isPasswordVisible.value = true;
      // await setUpDeviceNotification(tokenFCM ?? "");
      // } else {
      //   CommonWidget.toast(CommonConstants.someThingWrongPlsTryAgain.tr);
      // }
      // }
    }
  }

  // Social Login
  void socialLogin(String? userId, SocialType socialType, String email) async {
    SocialLoginRequest socialLoginRequest = SocialLoginRequest(
      userId: userId ?? '',
      socialType: socialType.type,
      email: email,
    );

    var res = await apiRepository.socialLogin(socialLoginRequest);

    if (res?.status == true) {
      final prefs = Get.find<SharedPreferences>();
      if (res?.data.containsKey(ApiResponseKey.token)) {
        prefs.setString(
            StorageConstants.token, res?.data[ApiResponseKey.token]);
        Get.offAllNamed(Routes.HOME);
      } else {
        CommonWidget.toast(CommonConstants.someThingWrongPlsTryAgain.tr);
      }
    } else {
      var isNotExistAccount =
          res?.toJson()['messages'][0]['messageCode'] == "SYS027E";
      if (isNotExistAccount) {
        String signUpSocialUrl = baseProvider.originSignUp ?? '';
        launch(signUpSocialUrl);
      }
    }
  }

  Future<void> resendOtpSignUp(
    BuildContext context,
    RegisterRequest requestBodySocial,
  ) async {
    AppFocus.unfocus(context);
    await apiRepository.register(
      RegisterRequest(
        email: requestBodySocial.email,
        userName: requestBodySocial.userName,
      ),
    );
  }

  void togglePasswordVisibility(RxBool isVisible) {
    isVisible.value = !isVisible.value;
  }

  //=============== Auth Google ===================
  void signInWithGoogle(BuildContext context) async {
    try {
      googleUserData.value = await _googleSignIn.signIn();
      if (googleUserData.value == null) {
        CommonWidget.toast(CommonConstants.userNotFound.tr);
        return;
      }
      this.socialLogin(
        googleUserData.value?.id,
        SocialType.GOOGLE,
        googleUserData.value?.email ?? '',
      );
    } catch (error) {
      print('Error during sign-in: $error');
    }
  }

  //=============== Apple ID ===================
  Future<void> onSignInWithApple(User? user, BuildContext context) async {
    try {
      final appleCredential = await SignInWithApple.getAppleIDCredential(
        scopes: [
          AppleIDAuthorizationScopes.email,
          AppleIDAuthorizationScopes.fullName,
        ],
      );

      OAuthProvider oauthProvider = OAuthProvider('apple.com');
      final credential = oauthProvider.credential(
        idToken: appleCredential.identityToken,
        accessToken: appleCredential.authorizationCode,
      );

      if (user != null) {
        this.socialLogin(
          user.uid,
          SocialType.APPLEID,
          user.email ?? '',
        );
      }
    } catch (e) {
      print('object${e.toString()}');

      await showDialog(
          context: context,
          builder: (context) {
            return AlertDialog(
              title: const Text(''),
              content: Text(e.toString()),
            );
          });
    }
  }

  //=============== Auth Facebook ===================
  void loginFacebook() async {
    final LoginResult result = await FacebookAuth.instance
        .login(); // by default we request the email and the public profile

    // loginBehavior is only supported for Android devices, for ios it will be ignored
    // final result = await FacebookAuth.instance.login(
    //   permissions: ['email', 'public_profile', 'user_birthday', 'user_friends', 'user_gender', 'user_link'],
    //   loginBehavior: LoginBehavior
    //       .DIALOG_ONLY, // (only android) show an authentication dialog instead of redirecting to facebook app
    // );

    if (result.status == LoginStatus.success) {
      _accessToken = result.accessToken;
      _printCredentials();
      // get the user data
      // by default we get the userId, email,name and picture
      final userData = await FacebookAuth.instance.getUserData();
      // final userData = await FacebookAuth.instance.getUserData(fields: "email,birthday,friends,gender,link");
      this.facebookUserData?.value = userData;

      this.socialLogin(userData["id"], SocialType.FACEBOOK, '');
    } else {
      print(result.status);
      print(result.message);
    }
  }

  Future<void> logOutGoogle() async {
    await _googleSignIn.signOut();
    _accessToken = null;
  }

  Future<void> logOutFacebook() async {
    await FacebookAuth.instance.logOut();
    _accessToken = null;
    this.facebookUserData?.clear();
  }

  void _printCredentials() {
    print(
      prettyPrint(_accessToken!.toJson()),
    );
  }

  String prettyPrint(Map json) {
    JsonEncoder encoder = const JsonEncoder.withIndent('  ');
    String pretty = encoder.convert(json);
    return pretty;
  }

  @override
  void dispose() {
    loginPhoneNoController.dispose();
    loginPasswordController.dispose();

    otpFieldOne.dispose();
    otpFieldTwo.dispose();
    otpFieldThree.dispose();
    otpFieldFour.dispose();

    super.dispose();
  }
}
