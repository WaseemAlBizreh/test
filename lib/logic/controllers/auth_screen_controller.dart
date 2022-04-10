import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isVisibility = false.obs;
  final userName = ''.obs;
  final userEmail = ''.obs;
  final password = ''.obs;
  final confirmPassword = ''.obs;
  final currentText = ''.obs;
  final verificationNumber = 0.obs;
  final formKey = GlobalKey<FormState>().obs;
  final pinCodeController = TextEditingController().obs;
  final pinCodeKey = GlobalKey<FormState>().obs;

  void visibility() {
    isVisibility.value = !isVisibility.value;
  }

  void setName(String value) {
    userName.value = value;
  }

  void setEmail(String value) {
    userEmail.value = value;
  }

  void setPassword(String value) {
    password.value = value;
  }

  void setConfirmPassword(String value) {
    confirmPassword.value = value;
  }

  void onChanged(String value) {
    currentText.value = value;
  }

  void setVerificationNumber(value) {
    verificationNumber.value = int.parse(currentText.value);
  }

  void clearText() {
    pinCodeController.value.clear();
  }
}
