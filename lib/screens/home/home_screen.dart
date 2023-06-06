import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preffernce_practice/screens/home/home_controller.dart';
import 'package:shared_preffernce_practice/screens/home/home_screen_widget.dart';
import 'package:shared_preffernce_practice/screens/sign_up/sign_up_controller.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
   HomeController homeController = Get.find<HomeController>();
  SignUpPageController signUpPageController = Get.find<SignUpPageController>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: homePageAppBar,
      body: SafeArea(
        child: Column(
          children: [
            homePageShowData(),
          ],
        ),
      ),
    );
  }
}
