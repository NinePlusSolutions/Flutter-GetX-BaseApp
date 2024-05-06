// ignore_for_file: deprecated_member_use, unused_local_variable

import 'package:WooPeople/shared/utils/focus.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../api/api_repository.dart';
import '../../../models/request/auth_request/register_request/register_request.dart';

class SignUpController extends GetxController {
  final ApiRepository apiRepository;
  SignUpController({required this.apiRepository});

  final GlobalKey<FormState> registerFormKey = GlobalKey<FormState>();
  final registerUsernameController = TextEditingController();
  final registerEmailAddressController = TextEditingController();
  final registerPasswordController = TextEditingController();
  final registerConfirmPasswordController = TextEditingController();

  RxBool isPasswordVisible = true.obs;
  RxBool isConfirmPasswordVisible = true.obs;

  Future<void> register(BuildContext context) async {
    AppFocus.unfocus(context);
    if (registerFormKey.currentState!.validate()) {
      var request = RegisterRequest(
        email: registerEmailAddressController.text,
        userName: registerUsernameController.text,
        password: registerPasswordController.text,
      );

      final res = await apiRepository.register(request);

      if (res?.status == true) {}
    }
  }

  void togglePasswordVisibility(RxBool isVisible) {
    isVisible.value = !isVisible.value;
  }

  @override
  void dispose() {
    registerUsernameController.dispose();
    registerPasswordController.dispose();
    registerConfirmPasswordController.dispose();
    registerUsernameController.dispose();

    super.dispose();
  }
}
