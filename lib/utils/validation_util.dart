import 'package:get/get.dart';

class ValidationUtil {
  static String validationEmail =
      r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+";

  static String validationName = r'^[a-z A-Z]+$';

  static String baseUrl = 'https://fakestoreapi.com';

  static nameValidation(value) {
    if (value.toString().isEmpty || !RegExp(validationName).hasMatch(value)) {
      return 'Enter valid UserName';
    }
    if (value.length <= 2) {
      return 'Must be more than 2 number or characters';
    }
    if (value.length >= 30) {
      return 'Must be less than 30 number or characters';
    }
  }

  static emailValidation(value) {
    if (value.toString().isEmpty ||
        !RegExp(validationEmail).hasMatch(value) ||
        !GetUtils.isEmail(value)) {
      return 'Enter valid Email';
    }
  }

  static passwordValidation(value) {
    if (value.toString().isEmpty) {
      return 'please enter Password';
    }
    if (value.toString().length < 8) {
      return 'Must be more than 8 number or characters';
    }
  }

  static confirmPasswordValidation(value) {
    if (value.toString().isEmpty) {
      return 'please Confirm Password';
    }
    if (value.toString().length < 8) {
      return 'Must be more than 8 number or characters';
    }
  }
}
