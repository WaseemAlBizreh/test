import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class AuthTextFromField extends StatelessWidget {
  final TextEditingController controller;
  final bool obscureText;
  final TextInputType keyboardType;
  final TextInputAction textInputAction;
  final Function validator;
  final String hintText;
  final Widget prefixIcon;
  final Widget suffixIcon;

  OutlineInputBorder BorderStyle = OutlineInputBorder(
    borderRadius: BorderRadius.circular(10.r),
    borderSide: const BorderSide(color: Colors.white),
  );

  AuthTextFromField({
    Key? key,
    required this.controller,
    required this.obscureText,
    required this.keyboardType,
    required this.textInputAction,
    required this.validator,
    required this.hintText,
    required this.prefixIcon,
    required this.suffixIcon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: controller,
      obscureText: obscureText,
      keyboardType: keyboardType,
      textInputAction: textInputAction,
      cursorColor: Colors.black,
      validator: (value) => validator(value),
      decoration: InputDecoration(
        hintText: hintText,
        hintStyle: TextStyle(
          color: Colors.black45,
          fontSize: 16.sp,
          fontWeight: FontWeight.w500,
        ),
        contentPadding: EdgeInsets.all(17.h),
        filled: true,
        prefixIcon: prefixIcon,
        suffixIcon: suffixIcon,
        fillColor: Colors.grey.shade200,
        enabledBorder: BorderStyle,
        errorBorder: BorderStyle,
        focusedBorder: BorderStyle,
        focusedErrorBorder: BorderStyle,
      ),
    );
  }
}
