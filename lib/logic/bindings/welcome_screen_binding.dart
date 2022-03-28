import 'package:commerce_app/logic/controllers/welcome_screen_controller.dart';
import 'package:get/get.dart';

class WelcomeScreenBinding implements Bindings {
  @override
  void dependencies() {
    Get.lazyPut<WelcomeScreenController>(
      () => WelcomeScreenController(),
    );
  }
}
