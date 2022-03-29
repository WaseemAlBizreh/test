import 'package:commerce_app/logic/controllers/auth_screen_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../routes/routes.dart';
import '../../../utils/theme.dart';
import '../../../utils/validation_util.dart';
import '../../widgets/AuthWidget/auth_button.dart';
import '../../widgets/AuthWidget/auth_text_from_field.dart';
import '../../widgets/AuthWidget/auth_under_container.dart';
import '../../widgets/text_util.dart';

class SignUpScreen extends StatelessWidget {
  final controller = Get.find<AuthController>();

  SignUpScreen({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Container(
          color: Colors.white,
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              SizedBox(
                width: double.infinity,
                height: ScreenUtil().screenHeight * 0.88,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 80.h,
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Form(
                    child: Column(
                      children: [
                        Row(
                          children: [
                            TextUtils(
                              color: mainColor,
                              text: 'SIGN',
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w500,
                              underline: TextDecoration.none,
                            ),
                            SizedBox(
                              width: 7.w,
                            ),
                            TextUtils(
                              color: Colors.black,
                              text: 'UP',
                              fontSize: 28.sp,
                              fontWeight: FontWeight.w500,
                              underline: TextDecoration.none,
                            ),
                            SizedBox(
                              width: 17.w,
                            ),
                            SizedBox(
                              width: 50.w,
                              child: Lottie.asset(
                                'assets/animation/profile-icon.json',
                                repeat: true,
                                animate: true,
                                fit: BoxFit.cover,
                              ),
                            ),
                          ],
                        ),
                        SizedBox(
                          height: 50.h,
                        ),
                        AuthTextFromField(
                          textFieldKey: controller.nameKey.value,
                          onChanged: controller.setName,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: ValidationUtil.nameValidation,
                          hintText: 'User Name',
                          prefixIcon: Image.asset('assets/images/user.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AuthTextFromField(
                          textFieldKey: controller.emailKey.value,
                          onChanged: controller.setEmail,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: ValidationUtil.emailValidation,
                          hintText: 'Email',
                          prefixIcon: Image.asset('assets/images/email.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AuthTextFromField(
                          textFieldKey: controller.passwordKey.value,
                          onChanged: controller.setPassword,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: ValidationUtil.passwordValidation,
                          hintText: 'Password',
                          prefixIcon: Image.asset('assets/images/lock.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AuthTextFromField(
                          textFieldKey: controller.confirmPasswordKey.value,
                          onChanged: controller.setConfirmPassword,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          validator: ValidationUtil.confirmPasswordValidation,
                          hintText: 'Confirm Password',
                          prefixIcon: Image.asset('assets/images/lock.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 20.h,
                        ),
                        AuthButton(
                          text: 'SIGN UP',
                          onPressed: () {
                            print(controller.userName.value);
                            print(controller.userEmail.value);
                            print(controller.password.value);
                            print(controller.confirmPassword.value);
                          },
                        ),
                      ],
                    ),
                  ),
                ),
              ),
              UnderContainer(
                textButton: 'Log in',
                text: 'Already have an Account',
                onPressed: () {
                  Get.toNamed(Routes.loginScreen);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
