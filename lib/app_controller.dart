// ignore_for_file: deprecated_member_use

import 'package:WooPeople/api/api_provider.dart';
import 'package:WooPeople/api/api_repository.dart';
import 'package:WooPeople/api/base_provider.dart';
import 'package:WooPeople/shared/utils/app_flavor_helper.dart';
import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AppController extends GetxController {
  RxBool isDarkModeOn = false.obs;
  RxBool isNotificationOn = true.obs;
  RxString currentRoute = ''.obs;

  final Rx<AppFlavor> currentFlavor;
  AppController(AppFlavor flavor) : currentFlavor = flavor.obs;

  void updateCurrentRoute() {
    currentRoute.value = Get.currentRoute;
  }

  void toggleDarkMode() {
    isDarkModeOn.toggle();
  }

  void toggleNotificationMode() {
    isNotificationOn.toggle();
  }

  String get environmentLabel {
    switch (currentFlavor.value) {
      case AppFlavor.development:
        return "UAT";
      case AppFlavor.production:
        return "";
      default:
        return "";
    }
  }

  String pickLabel(AppFlavor flavor) {
    if (flavor == AppFlavor.development) {
      return "UAT";
    }
    return "LIVE";
  }

  // void showEnvironmentBanner(AppFlavor flavor) {
  //   final currentRoute = Get.currentRoute;

  //   print(
  //       "adsad${flavor.isDevelopment && (currentRoute == '/log_in' || currentRoute == '/onboarding_view')}");

  //   OverlayEntry overlayEntry = OverlayEntry(
  //     builder: (context) => flavor.isDevelopment &&
  //             (currentRoute == '/log_in' || currentRoute == '/onboarding_view')
  //         ? EnvironmentBanner(flavor, environmentLabel)
  //         : const SizedBox(),
  //   );

  //   Overlay.of(Get.context!).insert(overlayEntry);
  // }

  void setEnvironment(AppFlavor newFlavor, BuildContext context) {
    print("Đang thiết lập môi trường: ${describeEnum(newFlavor)}");
    currentFlavor.value = newFlavor;
    Get.find<BaseProvider>().updateEnvironment(newFlavor);
    Get.find<ApiProvider>().updateEnvironment(newFlavor);
    Get.put<ApiRepository>(ApiRepository(), permanent: true);
    // showEnvironmentBanner(newFlavor);

    Get.forceAppUpdate();
  }

  Future<void> showEnvironmentPicker(BuildContext context) async {
    await showDialog(
      context: context,
      builder: (context) {
        return SimpleDialog(
          title: const Text('Switch ENV'),
          children: [
            for (var flavor in AppFlavor.values)
              ListTile(
                title: Text(pickLabel(flavor)),
                onTap: () {
                  setEnvironment(flavor, context);
                  Navigator.pop(context);
                },
              ),
          ],
        );
      },
    );
  }
}
