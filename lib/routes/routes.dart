import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../logic/bindings/welcome_screen_binding.dart';
import '../view/screens/Auth/forgot_password_screen.dart';
import '../view/screens/Auth/login_screen.dart';
import '../view/screens/Auth/signUp_screen.dart';
import '../view/screens/welcome_screen.dart';

class AppRoutes {
  //initial Route
  static const initialRoute = Routes.welcomeScreen;

  //App Routes getPages
  static final routes = [
    GetPage(
      name: Routes.welcomeScreen,
      page: () => WelcomeScreen(),
      binding: WelcomeScreenBinding(),
      transition: Transition.leftToRight,
      curve: Curves.easeInOutBack,
      transitionDuration: const Duration(milliseconds: 1300),
    ),
    GetPage(
      name: Routes.signUpScreen,
      page: () => SignUpScreen(),
      transition: Transition.leftToRight,
      curve: Curves.easeInOutBack,
      transitionDuration: const Duration(milliseconds: 1300),
    ),
    GetPage(
      name: Routes.forgotPasswordScreen,
      page: () => ForgotPassword(),
    ),
    GetPage(
      name: Routes.loginScreen,
      page: () => const LoginScreen(),
    ),
  ];
}

class Routes {
  static const welcomeScreen = '/welcome_screen';
  static const signUpScreen = '/signUp_screen';
  static const forgotPasswordScreen = '/forgot_password_screen';
  static const loginScreen = '/login_screen';
}