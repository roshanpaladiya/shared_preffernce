import 'dart:io';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:image_picker/image_picker.dart';
import 'package:shared_preffernce_practice/json_model/model_class.dart';
import 'package:shared_preffernce_practice/screens/home/home_controller.dart';
import 'package:shared_preffernce_practice/services/pref_service.dart';
import 'package:shared_preffernce_practice/utils/preffernce_res.dart';

class SignUpPageController extends GetxController {
  TextEditingController name = TextEditingController();
  TextEditingController number = TextEditingController();
  TextEditingController email = TextEditingController();
  TextEditingController password = TextEditingController();
  TextEditingController confirmPassword = TextEditingController();
  HomeController datacontoller = Get.find<HomeController>();

  File? image;

  signUpButton() {
    Map<String, dynamic> user = {
      'name': name.text,
      'number': number.text,
      'email': email.text,
      'password': password.text,
    };
    User userModel = User.fromJson(user);
    String userString = PrefServices.getString(PrefRes.userList);
    List<User> userList = [];
    if (userString != '') {
      userList = userFromJson(userString);
      userList.add(userModel);
    } else {
      userList.add(userModel);
    }
    userString = userToJson(userList);
    PrefServices.setValue(PrefRes.userList, userString);
    Get.back();
  }

  imagePicker() async {
    ImagePicker picker = ImagePicker();
    XFile? images = await picker.pickImage(source: ImageSource.gallery);
    image = File(images!.path);
    update(['image']);
  }
}
