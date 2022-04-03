import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class AuthPinCodeTextField extends StatelessWidget {
  final Function validator;
  final Function onChanged;
  final Function onCompleted;
  final bool obscureText;
  final int length;
  final TextInputType keyboardType;
  final TextEditingController controller;

  const AuthPinCodeTextField({
    Key? key,
    required this.validator,
    required this.onChanged,
    required this.length,
    required this.keyboardType,
    required this.obscureText,
    required this.controller,
    required this.onCompleted,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return PinCodeTextField(
      appContext: context,
      length: length,
      onCompleted: (value) => onCompleted(value),
      controller: controller,
      onChanged: (String value) => onChanged(value),
      blinkWhenObscuring: true,
      obscureText: obscureText,
      blinkDuration: const Duration(milliseconds: 700),
      animationType: AnimationType.fade,
      animationDuration: const Duration(milliseconds: 300),
      keyboardType: keyboardType,
      cursorColor: Colors.black,
      validator: (value) => validator(value),
      pinTheme: PinTheme(
        shape: PinCodeFieldShape.box,
        fieldHeight: 50.h,
        fieldWidth: 45.w,
        borderRadius: BorderRadius.circular(5.r),
        activeFillColor: Colors.white,
        inactiveFillColor: Colors.white,
        activeColor: const Color(0xff9013fe),
        disabledColor: const Color(0xff9013fe),
        errorBorderColor: const Color(0xff9013fe),
        selectedColor: const Color(0xff9013fe),
        inactiveColor: const Color(0xff9013fe),
      ),
    );
  }
}
