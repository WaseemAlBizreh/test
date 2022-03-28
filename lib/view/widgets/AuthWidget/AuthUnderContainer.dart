import 'package:commerce_app/utils/theme.dart';
import 'package:commerce_app/view/widgets/text_util.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class UnderContainer extends StatelessWidget {
  final String text;
  final Function() onPressed;
  final String textButton;
  const UnderContainer({
    Key? key,
    required this.text,
    required this.onPressed,
    required this.textButton,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 100.h,
      decoration: BoxDecoration(
        color: mainColor,
        borderRadius: BorderRadius.only(
          topLeft: Radius.circular(20.r),
          topRight: Radius.circular(20.r),
        ),
      ),
      child: Row(
        children: [
          TextUtils(
            color: Colors.white,
            text: text,
            fontSize: 20.sp,
            fontWeight: FontWeight.w500,
            underline: TextDecoration.none,
          ),
          TextButton(
            onPressed: () {},
            child: TextUtils(
              color: Colors.white,
              text: textButton,
              fontSize: 20.sp,
              fontWeight: FontWeight.bold,
              underline: TextDecoration.none,
            ),
          ),
        ],
      ),
    );
  }
}
