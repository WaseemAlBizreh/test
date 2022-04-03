import 'package:commerce_app/utils/validation_util.dart';
import 'package:commerce_app/view/widgets/text_util.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:lottie/lottie.dart';

import '../../../logic/controllers/auth_screen_controller.dart';
import '../../widgets/AuthWidget/auth_pincode_textfield.dart';

class EmailVerification extends StatelessWidget {
  final controller = Get.find<AuthController>();

  EmailVerification({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        foregroundColor: Colors.black,
        elevation: 0,
        leading: IconButton(
          icon: const Icon(Icons.arrow_back_outlined),
          onPressed: () {
            Get.back();
          },
        ),
      ),
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: SizedBox(
          height: ScreenUtil().screenHeight,
          width: ScreenUtil().screenWidth,
          child: Column(
            children: [
              SizedBox(
                height: 250.h,
                child: Lottie.asset(
                  'assets/animation/email-verification.json',
                  repeat: true,
                  animate: true,
                  fit: BoxFit.cover,
                ),
              ),
              TextUtils(
                text: 'Email Address Verification',
                color: Colors.black,
                fontSize: 22.sp,
                fontWeight: FontWeight.bold,
                underline: TextDecoration.none,
              ),
              SizedBox(height: 8.h),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 10.w,
                ),
                child: RichText(
                  text: TextSpan(
                    text: "Enter the code sent to ",
                    children: [
                      TextSpan(
                        text: controller.userEmail.obs.toString(),
                        style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.bold,
                          fontSize: 15.sp,
                        ),
                      ),
                    ],
                    style: TextStyle(
                      color: Colors.black54,
                      fontSize: 15.sp,
                    ),
                  ),
                  textAlign: TextAlign.center,
                ),
              ),
              SizedBox(
                height: 20.h,
              ),
              Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 15.w,
                  vertical: 15.h,
                ),
                child: Form(
                  key: controller.pinCodeKey.value,
                  child: AuthPinCodeTextField(
                    length: 6,
                    keyboardType: TextInputType.number,
                    validator: ValidationUtil.verificationValidation,
                    obscureText: true,
                    onChanged: controller.onChanged,
                    controller: controller.pinCodeController.value,
                    onCompleted: controller.setVerificationNumber,
                  ),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  TextUtils(
                    color: Colors.grey,
                    text: "Didn't receive the code? ",
                    fontSize: 16.sp,
                    fontWeight: FontWeight.w500,
                    underline: TextDecoration.none,
                  ),
                  TextButton(
                    onPressed: () {},
                    child: TextUtils(
                      color: const Color(0xff9013fe),
                      text: 'resend',
                      fontSize: 16.sp,
                      fontWeight: FontWeight.bold,
                      underline: TextDecoration.underline,
                    ),
                  ),
                ],
              ),
              TextButton(
                onPressed: controller.clearText,
                child: TextUtils(
                  color: const Color(0xff9013fe),
                  text: 'clear',
                  fontSize: 18.sp,
                  fontWeight: FontWeight.bold,
                  underline: TextDecoration.none,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
