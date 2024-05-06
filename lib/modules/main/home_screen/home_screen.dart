import 'package:WooPeople/shared/utils/size_config.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../app_controller.dart';
import '../../../shared/constants/common.dart';
import '../../../shared/utils/custom_app_bar.dart';
import '../../../shared/utils/image_constant.dart';
import '../../../shared/utils/size_utils.dart';
import '../../../shared/widgets/appbar_image.dart';
import '../../../theme/custom_text_style.dart';
import '../main_controller.dart';

class HomeScreen extends GetView<MainController> {
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    SizeConfig().init(context);
    return Scaffold(
      appBar: CustomAppBar(
        height: getVerticalSize(63),
        title: Row(
          children: [
            Expanded(
              child: Padding(
                padding: getPadding(left: 40, bottom: 10),
                child: Text(
                  CommonConstants.home.tr,
                  style: CustomTextStyles.labelRewardw600,
                  textAlign: TextAlign.center,
                ),
              ),
            ),
            Padding(
              padding: getPadding(right: 15),
              child: SizedBox(
                height: getSize(26),
                width: getSize(26),
                child: AppbarImage(
                  onTap: () {},
                  iconColor: Colors.white,
                  svgPath: ImageConstant.imgNotificationSettings,
                ),
              ),
            ),
          ],
        ),
        styleType: Style.bgStyle,
      ),
      body: Center(
        child: Text(
          "Welcome",
          style: CustomTextStyles.labelBlue400Size18Fw600,
        ),
      ),
    );
  }
}
