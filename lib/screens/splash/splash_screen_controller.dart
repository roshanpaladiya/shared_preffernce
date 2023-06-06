import 'dart:async';
import 'package:get/get.dart';
import '../login/login_screen.dart';

class SplashScreenController extends GetxController {
  @override
  void onInit() {
    Timer(const Duration(seconds: 3), () {
      Get.to(() => const LoginPage());
    });
    super.onInit();
  }
}
