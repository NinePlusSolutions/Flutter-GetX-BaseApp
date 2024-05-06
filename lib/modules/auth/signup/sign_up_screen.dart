// ignore_for_file: deprecated_member_use

import 'package:WooPeople/routes/routes.dart';
import 'package:WooPeople/shared/widgets/keyboard_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import '../../../shared/utils/image_constant.dart';
import '../login/components/background.dart';
import '../login/components/responsive.dart';
import 'components/signup_form.dart';
import 'sign_up_controller.dart';

class SignUpScreen extends GetView<SignUpController> {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return WillPopScope(
      onWillPop: () async {
        Get.offAllNamed(Routes.LOG_IN);
        controller.registerUsernameController.clear();
        controller.registerEmailAddressController.clear();
        controller.registerPasswordController.clear();
        controller.registerConfirmPasswordController.clear();
        return true;
      },
      child: Scaffold(
        appBar: AppBar(
          leading: IconButton(
            icon: SvgPicture.asset(ImageConstant.imgGoBack),
            onPressed: () {
              Get.offAllNamed(Routes.LOG_IN);
              controller.registerUsernameController.clear();
              controller.registerEmailAddressController.clear();
              controller.registerPasswordController.clear();
              controller.registerConfirmPasswordController.clear();
            },
            splashColor: Colors.transparent,
            highlightColor: Colors.transparent,
          ),
          centerTitle: true,
          elevation: 0,
        ),
        body: Background(
          child: SingleChildScrollView(
            child: Responsive(
              mobile: const MobileSignupScreen(),
              desktop: Row(
                children: [
                  Expanded(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SizedBox(
                          width: 450,
                          child: SignUpForm(),
                        ),
                      ],
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class MobileSignupScreen extends StatelessWidget {
  const MobileSignupScreen({
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return KeyboardFormField(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              flex: 0,
              child: SignUpForm(),
            )
          ],
        ),
      ),
    );
  }
}
