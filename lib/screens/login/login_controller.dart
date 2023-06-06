import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preffernce_practice/json_model/model_class.dart';
import 'package:shared_preffernce_practice/screens/home/home_controller.dart';
import 'package:shared_preffernce_practice/screens/home/home_screen.dart';
import 'package:shared_preffernce_practice/screens/sign_up/sign_up.dart';
import 'package:shared_preffernce_practice/screens/sign_up/sign_up_controller.dart';
import 'package:shared_preffernce_practice/services/pref_service.dart';
import 'package:shared_preffernce_practice/utils/preffernce_res.dart';

class LoginPageController extends GetxController {
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  HomeController datacontoller = Get.put(HomeController());
  SignUpPageController signUpPageController = Get.put(SignUpPageController());


  textSignUpButton() {
    Get.to(() => const SignUpPage());
  }

  void check() {
    String userString = PrefServices.getString(PrefRes.userList);
    if (userString != "") {
      List<User> userList = userFromJson(userString);
      bool value = userList.any((element) =>
          element.email == email.text && element.password == password.text);
      if (value) {
        int index = userList.indexWhere((element) =>
            element.email == email.text && element.password == password.text);
        User loginUser = userList[index];
        PrefServices.setValue(
          PrefRes.loginUser,
          json.encode(
            loginUser.toJson(),
          ),
        );
        PrefServices.setValue(PrefRes.isSignUp, true);
      }
      value
          ? Get.off(() => const HomePage())
          : Get.snackbar('Login Failed', "Enter user ");
      Get.to(() => const HomePage());
      update(["check"]);
    } else {
      Get.snackbar('Login Failed', 'Please Signup');
    }
  }
}
