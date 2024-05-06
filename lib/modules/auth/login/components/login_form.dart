// ignore_for_file: deprecated_member_use

import 'dart:io';

import 'package:WooPeople/app_controller.dart';
import 'package:WooPeople/modules/auth/login/login_controller.dart';
import 'package:WooPeople/modules/auth/signup/components/or_divider.dart';
import 'package:WooPeople/shared/utils/app_flavor_helper.dart';
import 'package:WooPeople/shared/utils/size_utils.dart';
import 'package:WooPeople/theme/custom_text_style.dart';
import 'package:WooPeople/widgets/environment_banner.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get.dart';

import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/image_constant.dart';
import '../../../../shared/utils/regex.dart';
import '../../../../shared/widgets/button.dart';
import '../../../../shared/widgets/icon_button_custom.dart';
import '../../../../shared/widgets/input_field.dart';
import '../../../../theme/theme_helper.dart';
import '../../signup/components/socal_sign_up.dart';

class LoginForm extends GetView<LoginController> {
  final AppController appController = Get.find();

  @override
  Widget build(BuildContext context) {
    bool isIOS = Platform.isIOS;

    return Form(
      key: controller.loginFormKey,
      child: Column(
        children: [
          Text(
            CommonConstants.btnSignIn.tr,
            style: CustomTextStyles.titleSignInBlack700,
          ),
          const SizedBox(
            height: CommonConstants.defaultPadding / 0.5,
          ),
          Padding(
            padding: getPadding(top: 16),
            child: InputField(
              controller: controller.loginPhoneNoControllerCode,
              hintText: CommonConstants.enterYourPhone.tr,
              icon: ImageConstant.iconBottomProfile,
              focusNode: controller.emailFocus,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return CommonConstants.phoneNoIsRequired.tr;
                }

                return null;
              },
            ),
          ),
          Padding(
            padding: getPadding(top: 16),
            child: Obx(
              () => InputField(
                controller: controller.loginPasswordController,
                hintText: CommonConstants.enterYourPassword.tr,
                suffixIcon: IconButtonCustom(
                  onPressed: () => controller
                      .togglePasswordVisibility(controller.isPasswordVisible),
                  child: Padding(
                    padding: getPadding(all: 5),
                    child: SvgPicture.asset(
                      controller.isPasswordVisible.value
                          ? ImageConstant.iconHiddenPassword
                          : ImageConstant.iconShowPassword,
                      color: appTheme.gray500,
                    ),
                  ),
                ),
                icon: ImageConstant.iconPassword,
                obscureText: controller.isPasswordVisible.value,
                focusNode: controller.passwordFocus,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return CommonConstants.passwordIsRequired.tr;
                  }
                  if (!Regex.isPasswordAtLeast6Characters(value)) {
                    return CommonConstants.textErrorPassword.tr;
                  }
                  return null;
                },
              ),
            ),
          ),
          Padding(
            padding: getPadding(top: 18),
            child: Align(
              alignment: Alignment.centerRight,
              child: TextButton(
                onPressed: () {},
                child: Text(
                  CommonConstants.forgotPasswordInLogin.tr,
                  style: CustomTextStyles.lableForgotPasswordBlack500,
                ),
              ),
            ),
          ),
          const SizedBox(height: CommonConstants.defaultPadding),
          CommonWidgets.primaryButton(
            text: CommonConstants.btnSignIn.tr,
            onPressed: () => controller.login(context),
          ),
          SizedBox(height: getSize(120)),
          isIOS ? const SizedBox() : OrDivider(),
          SizedBox(height: getSize(40)),
          isIOS
              ? const SizedBox()
              : SocialSignUp(
                  controller: controller,
                ),
          SizedBox(height: getSize(40)),
          appController.currentFlavor.value.isDevelopment
              ? EnvironmentBanner("Dev Mode")
              : const SizedBox(),
        ],
      ),
    );
  }
}
