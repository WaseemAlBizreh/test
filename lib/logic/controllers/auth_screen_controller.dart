import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AuthController extends GetxController {
  final isVisibility = false.obs;
  final userName = ''.obs;
  final userEmail = ''.obs;
  final password = ''.obs;
  final confirmPassword = ''.obs;

  final nameKey = GlobalKey<FormFieldState>().obs;
  final emailKey = GlobalKey<FormFieldState>().obs;
  final passwordKey = GlobalKey<FormFieldState>().obs;
  final confirmPasswordKey = GlobalKey<FormFieldState>().obs;

  void visibility() {
    isVisibility.value = !isVisibility.value;
  }

  void setName(String value) {
    nameKey.value.currentState!.validate();
    userName.value = value;
  }

  void setEmail(String value) {
    emailKey.value.currentState!.validate();
    userEmail.value = value;
  }

  void setPassword(String value) {
    passwordKey.value.currentState!.validate();
    password.value = value;
  }

  void setConfirmPassword(String value) {
    confirmPasswordKey.value.currentState!.validate();
    confirmPassword.value = value;
  }
}
