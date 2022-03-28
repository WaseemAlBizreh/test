import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/widgets/AuthWidget/AuthButton.dart';
import 'package:commerce_app/view/widgets/AuthWidget/auth_text_from_field.dart';
import 'package:commerce_app/view/widgets/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../widgets/AuthWidget/AuthUnderContainer.dart';

class SignUpScreen extends StatelessWidget {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final confirmPasswordController = TextEditingController();

  final _formKey = GlobalKey<FormState>();

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
                height: ScreenUtil().screenHeight,
                child: Padding(
                  padding: EdgeInsets.only(
                    top: 80.h,
                    left: 25.w,
                    right: 25.w,
                  ),
                  child: Form(
                    key: _formKey,
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
                          controller: nameController,
                          obscureText: false,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter UserName';
                            }
                            if (value.length < 2) {
                              return 'Must be more than 2 number or characters';
                            }
                            if (value.length > 30) {
                              return 'Must be less than 30 number or characters';
                            }
                          },
                          hintText: 'User Name',
                          prefixIcon: Image.asset('assets/images/user.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AuthTextFromField(
                          controller: emailController,
                          obscureText: false,
                          keyboardType: TextInputType.emailAddress,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (!GetUtils.isEmail(value)) {
                              return 'Email is not valid';
                            }
                          },
                          hintText: 'Email',
                          prefixIcon: Image.asset('assets/images/email.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AuthTextFromField(
                          controller: passwordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.next,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please enter Password';
                            }
                            if (value.length < 8) {
                              return 'Must be more than 8 number or characters';
                            }
                          },
                          hintText: 'Password',
                          prefixIcon: Image.asset('assets/images/lock.png'),
                          suffixIcon: const Text(''),
                        ),
                        SizedBox(
                          height: 15.h,
                        ),
                        AuthTextFromField(
                          controller: confirmPasswordController,
                          obscureText: true,
                          keyboardType: TextInputType.text,
                          textInputAction: TextInputAction.done,
                          validator: (value) {
                            if (value!.isEmpty) {
                              return 'please Confirm Password';
                            }
                            if (value.length < 8) {
                              return 'Must be more than 8 number or characters';
                            }
                          },
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
                            _formKey.currentState!.validate();
                          },
                        ),
                        UnderContainer(
                          textButton: 'Log in',
                          text: 'Already have an Account',
                          onPressed: () {},
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
