import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/widgets/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthButton extends StatelessWidget {
  final String text;
  final Function() onPressed;

  const AuthButton({
    Key? key,
    required this.text,
    required this.onPressed,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      style: ButtonStyle(
        backgroundColor: MaterialStateProperty.all(mainColor),
        minimumSize: MaterialStateProperty.all(
          Size(360.w, 50.h),
        ),
        shape: MaterialStateProperty.all(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10.r),
          ),
        ),
      ),
      child: TextUtils(
        text: text,
        fontWeight: FontWeight.w400,
        color: Colors.white,
        underline: TextDecoration.none,
        fontSize: 20.sp,
      ),
    );
  }
}
