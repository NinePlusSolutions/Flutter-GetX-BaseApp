import 'package:WooPeople/modules/main/home_screen/home_screen.dart';
import 'package:WooPeople/modules/main/main_screen.dart';
import 'package:get/get.dart';

import '../modules/auth/login/login_binding.dart';
import '../modules/auth/login/login_screen.dart';
import '../modules/auth/signup/sign_up_binding.dart';
import '../modules/auth/signup/sign_up_screen.dart';
import '../modules/main/main_binding.dart';
import '../modules/splash/splash_binding.dart';
import '../modules/splash/splash_view.dart';

part 'app_routes.dart';

class AppPages {
  static final routes = [
    GetPage(
      name: Routes.SPLASH,
      page: () => const SplashView(),
      binding: SplashBinding(),
    ),
    GetPage(
      name: Routes.MAIN,
      page: () => MainScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.HOME,
      page: () => HomeScreen(),
      binding: MainBinding(),
    ),
    GetPage(
      name: Routes.SIGN_UP,
      page: () => const SignUpScreen(),
      binding: SignUpBinding(),
    ),
    GetPage(
      name: Routes.LOG_IN,
      page: () => LoginScreen(),
      binding: LoginBinding(),
    ),
  ];
}
