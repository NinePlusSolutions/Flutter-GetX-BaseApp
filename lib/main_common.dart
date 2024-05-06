// ignore_for_file: unused_field, unused_element, unused_local_variable

import 'package:WooPeople/api/base_provider.dart';
import 'package:WooPeople/app_controller.dart';
import 'package:WooPeople/routes/routes.dart';
import 'package:WooPeople/shared/constants/constants.dart';
import 'package:WooPeople/shared/utils/app_flavor_helper.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:flutter_easyloading/flutter_easyloading.dart';
import 'package:get/get.dart';

import 'app_binding.dart';
import 'di.dart';
import 'firebase_options.dart';
import 'lang/translation_service.dart';

final GlobalKey<NavigatorState> navigatorKey = GlobalKey<NavigatorState>();

Future<void> mainCommon(AppFlavor flavor) async {
  WidgetsFlutterBinding.ensureInitialized();

  await Firebase.initializeApp(
      name: 'OKOK', options: DefaultFirebaseOptions.currentPlatform);

  Get.put<BaseProvider>(
    BaseProvider(flavor),
    permanent: true,
  );
  await Future.wait([
    DenpendencyInjection.init(),
    DenpendencyInjection.inject(flavor),
  ]);

  runApp(App(flavor));

  configLoading();
}

class App extends StatelessWidget {
  final AppFlavor flavor;
  final AppController controller;

  App(this.flavor) : controller = Get.put(AppController(flavor));

  final mainTheme = ThemeData(
    scaffoldBackgroundColor: ColorConstants.backgroundColor,
    appBarTheme: const AppBarTheme(
      color: Colors.transparent,
    ),
  );

  final darkTheme = ThemeData.dark();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () => GetMaterialApp(
        navigatorKey: navigatorKey,
        debugShowCheckedModeBanner: false,
        enableLog: true,
        initialRoute: Routes.SPLASH,
        defaultTransition: Transition.fade,
        getPages: AppPages.routes,
        initialBinding: AppBinding(),
        smartManagement: SmartManagement.keepFactory,
        title: 'BaseApp',
        theme: controller.isDarkModeOn.value ? darkTheme : mainTheme,
        locale: TranslationService.locale,
        fallbackLocale: TranslationService.fallbackLocale,
        translations: TranslationService(),
        builder: EasyLoading.init(),
      ),
    );
  }
}

void configLoading() {
  EasyLoading.instance
    ..indicatorType = EasyLoadingIndicatorType.fadingCircle
    ..loadingStyle = EasyLoadingStyle.custom
    // ..indicatorSize = 45.0
    ..radius = 10.0
    // ..progressColor = Colors.yellow
    ..backgroundColor = ColorConstants.lightGray
    ..indicatorColor = ColorConstants.kPrimaryColor
    ..textColor = ColorConstants.kPrimaryColor
    // ..maskColor = Colors.red
    ..userInteractions = false
    ..dismissOnTap = false
    ..animationStyle = EasyLoadingAnimationStyle.scale;
}
