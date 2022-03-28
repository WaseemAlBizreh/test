import 'package:commerce_app/logic/controllers/welcome_screen_controller.dart';
import 'package:commerce_app/routes/routes.dart';
import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/widgets/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class WelcomeScreen extends StatelessWidget {
  final controller = Get.find<WelcomeScreenController>();

  WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(
        children: [
          SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Image.asset(
              'assets/images/background.png',
              fit: BoxFit.cover,
            ),
          ),
          Container(
            color: Colors.black.withOpacity(0.1),
            width: double.infinity,
            height: double.infinity,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                SizedBox(
                  height: 50.h,
                ),
                Container(
                  width: 190.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Center(
                    child: TextUtils(
                      text: 'Welcome',
                      fontWeight: FontWeight.bold,
                      color: Colors.white,
                      underline: TextDecoration.none,
                      fontSize: 30.sp,
                    ),
                  ),
                ),
                SizedBox(
                  height: 10.h,
                ),
                Container(
                  width: 220.w,
                  height: 60.h,
                  decoration: BoxDecoration(
                    color: Colors.black.withOpacity(0.3),
                    borderRadius: BorderRadius.circular(5.r),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      TextUtils(
                        color: mainColor,
                        text: 'Asroo',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.none,
                      ),
                      SizedBox(
                        width: 7.w,
                      ),
                      TextUtils(
                        color: Colors.white,
                        text: 'Shop',
                        fontSize: 28.sp,
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.none,
                      ),
                    ],
                  ),
                ),
                SizedBox(
                  height: 130.h,
                ),
                Container(
                  margin: EdgeInsets.only(top: 40.h),
                  child: ElevatedButton(
                    onPressed: () {
                      Get.toNamed(Routes.loginScreen);
                    },
                    style: ButtonStyle(
                      backgroundColor: MaterialStateProperty.all(mainColor),
                      padding: MaterialStateProperty.all(
                        EdgeInsets.symmetric(
                          horizontal: 30.h,
                          vertical: 10.w,
                        ),
                      ),
                      shape: MaterialStateProperty.all(
                        RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10.r),
                        ),
                      ),
                      elevation: MaterialStateProperty.all(10),
                    ),
                    child: TextUtils(
                      text: 'Get Start',
                      color: Colors.white,
                      fontSize: 20.sp,
                      fontWeight: FontWeight.w700,
                      underline: TextDecoration.none,
                    ),
                  ),
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    TextUtils(
                      color: Colors.white,
                      text: "Don't have an account? ",
                      fontSize: 16.sp,
                      fontWeight: FontWeight.w400,
                      underline: TextDecoration.none,
                    ),
                    TextButton(
                      onPressed: () {
                        Get.offNamed(Routes.signUpScreen);
                      },
                      child: TextUtils(
                        color: Colors.white,
                        text: "Sign Up",
                        fontSize: 16.sp,
                        fontWeight: FontWeight.bold,
                        underline: TextDecoration.underline,
                      ),
                      style: ButtonStyle(
                        overlayColor: MaterialStateProperty.all(
                          mainColor.withOpacity(0.3),
                        ),
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
