import 'package:WooPeople/shared/utils/size_utils.dart';
import 'package:WooPeople/theme/theme_helper.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../../../routes/app_pages.dart';
import '../../../../shared/constants/common.dart';
import '../../../../shared/utils/image_constant.dart';
import '../../../../shared/utils/no_space_formatter.dart';
import '../../../../shared/utils/regex.dart';
import '../../../../shared/widgets/button.dart';
import '../../../../shared/widgets/icon_button_custom.dart';
import '../../../../shared/widgets/input_field.dart';
import '../../../../theme/custom_text_style.dart';
import '../../login/components/already_have_an_account_acheck.dart';
import '../sign_up_controller.dart';

class SignUpForm extends GetView<SignUpController> {
  // Create a FocusNode to track the focus state of the TextFormField
  final FocusNode _emailFocus = FocusNode();
  final FocusNode _passwordFocus = FocusNode();
  final FocusNode _userNameFocus = FocusNode();
  final FocusNode _confirmPasswordFocus = FocusNode();

  @override
  Widget build(BuildContext context) {
    return Form(
      key: controller.registerFormKey,
      child: Column(
        children: [
           const SizedBox(
            height: 16 / 1,
          ),
          Text(
            CommonConstants.btnSignUp.tr,
            style: CustomTextStyles.titleSignInBlack700,
          ),
          const SizedBox(
            height: 16 / 0.5,
          ),
          InputField(
            inputFormatters: [NoSpaceLowerCaseFormatter()],
            controller: controller.registerUsernameController,
            hintText: CommonConstants.enterYourPhone.tr,
            icon: ImageConstant.iconBottomProfile,
            keyboardType: TextInputType.text,
            textInputAction: TextInputAction.next,
            onSaved: (username) {},
            focusNode: _userNameFocus,
            validator: (value) {
              if (value == null || value.isEmpty) {
                return CommonConstants.phoneNumberIsRequired.tr;
              }
              if (!Regex.isPhoneNumber(value)) {
                return CommonConstants.textErrorPhoneNumber.tr;
              }
              return null;
            },
          ),
          Padding(
            padding: getPadding(top: 16),
            child: InputField(
              controller: controller.registerEmailAddressController,
              hintText: CommonConstants.emailAddress.tr,
              icon: ImageConstant.imgEmailSettings,
              keyboardType: TextInputType.emailAddress,
              textInputAction: TextInputAction.next,
              onSaved: (email) {},
              focusNode: _emailFocus,
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return CommonConstants.emailAddressIsRequired.tr;
                }
                if (!Regex.isEmail(value)) {
                  return CommonConstants.invalidEmailAddressFormat.tr;
                }
                return null;
              },
            ),
          ),
          Obx(
            () => Padding(
              padding: getPadding(top: 16),
              child: InputField(
                controller: controller.registerPasswordController,
                hintText: CommonConstants.enterYourPassword.tr,
                suffixIcon: IconButtonCustom(
                  onPressed: () => controller
                      .togglePasswordVisibility(controller.isPasswordVisible),
                  child: Image.asset(
                    controller.isPasswordVisible.value
                        ? ImageConstant.iconHiddenPassword
                        : ImageConstant.iconShowPassword,
                    color: appTheme.gray500,
                  ),
                ),
                icon: ImageConstant.iconPassword,
                obscureText: controller.isPasswordVisible.value,
                textInputAction: TextInputAction.next,
                focusNode: _passwordFocus,
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
          Obx(
            () => Padding(
              padding: getPadding(top: 16),
              child: InputField(
                controller: controller.registerConfirmPasswordController,
                hintText: CommonConstants.confirmPassword.tr,
                icon: ImageConstant.iconPassword,
                obscureText: controller.isConfirmPasswordVisible.value,
                suffixIcon: IconButtonCustom(
                  onPressed: () => controller.togglePasswordVisibility(
                      controller.isConfirmPasswordVisible),
                  child: Image.asset(
                    controller.isConfirmPasswordVisible.value
                        ? ImageConstant.iconHiddenPassword
                        : ImageConstant.iconShowPassword,
                    color: appTheme.gray500,
                  ),
                ),
                textInputAction: TextInputAction.done,
                focusNode: _confirmPasswordFocus,
                validator: (value) {
                  if (value == null || value.isEmpty) {
                    return CommonConstants.confirmPasswordIsRequired.tr;
                  }
                  if (value != controller.registerPasswordController.text) {
                    return CommonConstants.passwordsDoNotMatch.tr;
                  }
                  return null;
                },
              ),
            ),
          ),
          const SizedBox(height: 16 / 0.4),
          SizedBox(
            width: double.infinity,
            child: Hero(
              tag: "login_btn",
              child: CommonWidgets.primaryButton(
                text: CommonConstants.btnSignUp.tr,
                onPressed: () => controller.register(context),
              ),
            ),
          ),
          const SizedBox(height: 16),
          Padding(
            padding: getPadding(top: 20),
            child: AlreadyHaveAnAccountCheck(
              login: false,
              press: () {
                Get.offAllNamed(
                  Routes.LOG_IN,
                );
                controller.registerUsernameController.clear();
                controller.registerEmailAddressController.clear();
                controller.registerPasswordController.clear();
                controller.registerConfirmPasswordController.clear();
              },
            ),
          ),
          const SizedBox(
            height: 16 / 0.15,
          ),
          Text(
            CommonConstants.signUpRegistration.tr,
            textAlign: TextAlign.center,
            style: CustomTextStyles.lableOnboadringBlack400,
          ),
          const SizedBox(height: 16 * 0.5),
          Padding(
            padding: getPadding(bottom: 43),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                IconButtonCustom(
                  onPressed: () =>
                      // ignore: deprecated_member_use
                      launch('http://erp.nineplus.vn/dashboard'),
                  child: Text(
                    CommonConstants.termService.tr,
                    style: CustomTextStyles.titleSignInBlue600,
                  ),
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 4.0),
                  child: Text(
                    CommonConstants.and.tr,
                    style: CustomTextStyles.lableOnboadringBlack400,
                  ),
                ),
                IconButtonCustom(
                  onPressed: () =>
                      // ignore: deprecated_member_use
                      launch('https://policies.google.com/privacy?hl=en'),
                  child: Text(
                    CommonConstants.privacyPolicy.tr,
                    style: CustomTextStyles.titleSignInBlue600,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
