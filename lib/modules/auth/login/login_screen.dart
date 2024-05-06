// ignore_for_file: deprecated_member_use

import 'package:WooPeople/shared/utils/size_utils.dart';
import 'package:WooPeople/shared/widgets/normal_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../shared/constants/colors.dart';
import '../../../shared/utils/image_constant.dart';
import '../Login/components/login_form.dart';
import 'login_controller.dart';

class LoginScreen extends GetView<LoginController> {
  LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        controller.loginPasswordController.clear();
        controller.loginPhoneNoController.clear();
        controller.loginPhoneNoControllerCode.clear();
        return true;
      },
      child: NormalButton(
        onPressed: () => controller.hideKeyboard(),
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: ColorConstants.backgroundColor,
            appBar: AppBar(
              backgroundColor: ColorConstants.backgroundColor,
              leading: IconButton(
                icon: SvgPicture.asset(
                  ImageConstant.imgGoBack,
                ),
                onPressed: () {
                  controller.loginPasswordController.clear();
                  controller.loginPhoneNoController.clear();
                  controller.loginPhoneNoControllerCode.clear();
                },
                splashColor: Colors.transparent,
                highlightColor: Colors.transparent,
              ),
              centerTitle: true,
              elevation: 0,
            ),
            body: Padding(
              padding: getPadding(
                left: 20,
                right: 20,
                top: 105,
              ),
              child: LoginForm(),
            )),
      ),
    );
  }
}
