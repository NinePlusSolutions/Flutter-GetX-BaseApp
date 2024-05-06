// ignore_for_file: deprecated_member_use

import 'package:WooPeople/app_controller.dart';
import 'package:WooPeople/modules/main/home_screen/home_screen.dart';
import 'package:WooPeople/shared/constants/common.dart';
import 'package:WooPeople/shared/utils/image_constant.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../shared/constants/colors.dart';
import '../../shared/utils/custom_bottom_navigation_bar.dart';
import 'main_controller.dart';

class MainScreen extends GetView<MainController> {
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        if (controller.bottomNavIndex.value != 0) {
          controller.setValueBottomIndex(0);
          return false;
        }
        return controller.onWillPop();
      },
      child: Obx(
        () => Scaffold(
          extendBody: true,
          resizeToAvoidBottomInset: false,
          body: IndexedStack(
            index: controller.bottomNavIndex.value,
            children: _widgetOptions(),
          ),
          bottomNavigationBar: _bottomNav(controller),
          floatingActionButtonLocation:
              FloatingActionButtonLocation.centerDocked,
          floatingActionButton: FloatingActionButton(
            backgroundColor: appController.isDarkModeOn.value
                ? ColorConstants.colorDarkModeBlue
                : ColorConstants.kPrimaryColor,
            onPressed: () {},
            child: SvgPicture.asset(ImageConstant.imageScanQrCode),
            elevation: 3.0,
          ),
        ),
      ),
    );
  }

  Widget _bottomNav(MainController controller) {
    return Obx(
      () => CustomBottomNavigationBar(
        selectedIndex: controller.bottomNavIndex.value,
        centerItemText: '',
        color: appController.isDarkModeOn.value
            ? Colors.white
            : ColorConstants.grey.withOpacity(.6),
        backgroundColor: appController.isDarkModeOn.value
            ? Colors.grey[800]
            : ColorConstants.white,
        selectedColor: appController.isDarkModeOn.value
            ? ColorConstants.colorDarkModeBlue
            : ColorConstants.kPrimaryColor,
        notchedShape: const CircularNotchedRectangle(),
        onTabSelected: (value) => controller.setValueBottomIndex(value),
        items: [
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 0
                ? controller.bottomNavSelectedIconPaths[0]
                : controller.imagePaths[0],
            text: CommonConstants.home.tr,
          ),
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 1
                ? controller.bottomNavSelectedIconPaths[1]
                : controller.imagePaths[1],
            text: "Invite Friend",
          ),
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 2
                ? controller.bottomNavSelectedIconPaths[2]
                : controller.imagePaths[2],
            text: "Reward",
          ),
          BottomBarItem(
            iconData: controller.bottomNavIndex.value == 3
                ? controller.bottomNavSelectedIconPaths[3]
                : controller.imagePaths[3],
            text: CommonConstants.profile.tr,
          ),
        ],
      ),
    );
  }

  List<Widget> _widgetOptions() {
    return [
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
      HomeScreen(),
    ];
  }
}
