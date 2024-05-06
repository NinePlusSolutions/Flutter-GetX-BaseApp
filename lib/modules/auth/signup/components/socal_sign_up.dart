// ignore_for_file: unused_local_variable

import 'dart:io';

import 'package:WooPeople/modules/auth/login/login_controller.dart';
import 'package:WooPeople/shared/utils/image_constant.dart';
import 'package:flutter/material.dart';

import '../../signup/components/social_icon.dart';

class SocialSignUp extends StatelessWidget {
  const SocialSignUp({
    Key? key,
    required this.controller,
  }) : super(key: key);

  final LoginController controller;

  @override
  Widget build(BuildContext context) {
    bool isIOS = Platform.isIOS;

    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: [
        SocialIcon(
            iconSrc: ImageConstant.iconGoogle,
            press: () {
              controller.signInWithGoogle(context);
              controller.loginPhoneNoController.clear();
              controller.loginPasswordController.clear();
            }),
      ],
    );
  }
}
