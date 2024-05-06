import 'dart:async';

import 'package:WooPeople/modules/main/tabs/tabs.dart';
import 'package:WooPeople/shared/constants/common.dart';
import 'package:WooPeople/shared/utils/image_constant.dart';
import 'package:get/get.dart';

import '../../api/api_repository.dart';
import '../../shared/utils/common_widget.dart';

class MainController extends GetxController
    with GetSingleTickerProviderStateMixin {
  final ApiRepository apiRepository;
  MainController({required this.apiRepository});

  var currentTab = MainTabs.home.obs;

  RxInt bottomNavIndex = 0.obs;

  DateTime? currentBackPressTime;

  final List<String> imagePaths = [
    ImageConstant.iconBottomHome,
    ImageConstant.iconBottomEvent,
    ImageConstant.iconBottomReward,
    ImageConstant.iconBottomProfile,
  ];

  final List<String> bottomNavSelectedIconPaths = [
    ImageConstant.iconBottomHomeBold,
    ImageConstant.iconBottomEventBold,
    ImageConstant.iconBottomRewardBold,
    ImageConstant.iconBottomProfileBold,
  ];

  @override
  void onInit() async {
    super.onInit();
  }

  Future<bool> onWillPop() {
    DateTime now = DateTime.now();
    if (currentBackPressTime == null ||
        now.difference(currentBackPressTime ?? DateTime.now()) >
            const Duration(seconds: 2)) {
      currentBackPressTime = now;
      CommonWidget.toast(CommonConstants.tittleExitApp.tr);
      return Future.value(false);
    }
    return Future.value(true);
  }

  void setValueBottomIndex(int index) {
    bottomNavIndex.value = index;
  }

  @override
  void onClose() {
    super.dispose();
  }
}
