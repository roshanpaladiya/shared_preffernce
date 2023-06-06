
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'package:shared_preffernce_practice/screens/splash/splash_screen_controller.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  SplashScreenController splashScreenController = Get.put(SplashScreenController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox(
        height: double.infinity,
        width: double.infinity,
        child: Image.asset("assets/images/splash_screen.png"),
      ),
    );
  }
}
