import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CommonConstants {
  static String test = 'test'.tr;
  static String someThingWrongPlsTryAgain = 'someThingWrongPlsTryAgain';

  //Relax screen
  static String forgotPasswordError = 'forgotPasswordError';

  //Main
  static String event_List = 'event_list';
  static String partner = 'partners';
  static String news = 'news';
  static String more = 'more';
  static String home = 'home';
  static String profile = 'profile';

  // Sign Up
  static String signUpRegistration = 'signUpRegistration';
  static String termService = 'termService';
  static String privacyPolicy = 'privacyPolicy';
  static String ours = 'ours';
  static String and = 'and';
  static String or = 'or';
  static String enterYourPhone = 'enterYourPhone';
  static String phoneNumberIsRequired = 'phoneNumberIsRequired';
  static String emailAddress = 'emailAddress';
  static String emailAddressIsRequired = 'emailAddressIsRequired';
  static String invalidEmailAddressFormat = 'invalidEmailAddressFormat';
  static String enterYourPassword = 'enterYourPassword';
  static String currentPassWord = 'currentPassWord';
  static String passwordIsRequired = 'passwordIsRequired';
  static String lastNameIsRequired = 'lastNameIsRequired';
  static String firstNameIsRequired = 'firstNameIsRequired';
  static String phoneNoIsRequired = 'phoneNoIsRequired';
  static String textErrorPassword = 'textErrorPassword';
  static String confirmPassword = 'confirmPassword';
  static String confirmPasswordIsRequired = 'confirmPasswordIsRequired';
  static String passwordsDoNotMatch = 'passwordsDoNotMatch';
  static String userNotFound = 'userNotFound';

  //Sign In
  static String donHaveAnAcount = 'donHaveAnAcount';
  static String alreadyHaveAnAccount = 'alreadyHaveAnAccount';
  static String btnSignIn = 'btnSignIn';
  static String btnSignUp = 'btnSignUp';
  static String yourMail = 'yourMail';
  static String yourPassWord = 'yourPassWord';
  static String textErrorPass = 'textErrorPass';
  static String forgotPassword = 'forgotPassword';
  static String toastErrorTurnOnOfNotification =
      'toastErrorTurnOnOfNotification';
  static String toastErrorUploadImage = 'toastErrorUploadImage';
  static String toastErrorDeleteAccount = 'toastErrorDeleteAccount';
  static String textErrorPhoneNumber = "textErrorPhoneNumber";

  //Forgot Password
  static String forgotPasswordInLogin = 'forgotPassword?';
  static String johndoeEmail = 'johndoeEmail';
  static String resource = 'resource';

  //Member Activities

  static const String tittleExitApp = 'tittleExitApp';

  //Url Social Sign Up
  static const String urlSocialSignUp = "https://nineplus.vn/auth/register";

  static const double largeText = 40.0;
  static const double normalText = 22.0;
  static const double smallText = 16.0;
  static const double tinyText = 12.0;

  static const double smallPadding = 6.0;
  static const double defaultPadding = 16.0;
  static const double height25 = 25.0;

  static final kTitleTextStyle =
      const TextStyle(fontSize: 35, fontWeight: FontWeight.bold);
  static final kSecondaryTextStyle = TextStyle(
    color: Colors.grey.shade400,
    fontWeight: FontWeight.w700,
    fontSize: 16,
    fontFamily: "Varela",
  );
  final kDonutCardTextStyle = const TextStyle(
    color: Colors.grey,
    fontWeight: FontWeight.bold,
    fontSize: 14,
  );

  double baseHeight = 650.0;

  double screenAwareSize(double size, BuildContext context) {
    return size * MediaQuery.of(context).size.height / baseHeight;
  }
}

const double baseHeight = 650.0;

double screenAwareSize(double size, BuildContext context) {
  return size * MediaQuery.of(context).size.height / baseHeight;
}

class HexColor extends Color {
  HexColor(final String hexColor) : super(_getColorFromHex(hexColor));

  static int _getColorFromHex(String hexColor) {
    hexColor = hexColor.toUpperCase().replaceAll('#', '');
    if (hexColor.length == 6) {
      hexColor = 'FF' + hexColor;
    }
    return int.parse(hexColor, radix: 16);
  }
}
