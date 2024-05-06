import 'package:WooPeople/app_controller.dart';
import 'package:WooPeople/shared/utils/size_utils.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/common.dart';

class OrDivider extends StatelessWidget {
  OrDivider({Key? key}) : super(key: key);
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onLongPress: () => appController.showEnvironmentPicker(context),
      child: Padding(
        padding: getPadding(left: 40,right: 40),
        child: Row(
          children: [
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: Colors.grey.shade400,
              ),
            ),
            Padding(
              padding: getPadding(left: 6, right: 6),
              child: Text(
                CommonConstants.or.tr,
                style: TextStyle(color: Colors.grey.shade700),
              ),
            ),
            Expanded(
              child: Divider(
                thickness: 0.5,
                color: Colors.grey.shade400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
