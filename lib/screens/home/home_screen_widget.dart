import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preffernce_practice/screens/sign_up/sign_up_controller.dart';

AppBar homePageAppBar = AppBar(
  title: const Text("Home Page"),
);

Widget homePageShowData() {
  return GetBuilder<SignUpPageController>(
    builder: (controller) => Padding(
      padding: const EdgeInsets.all(10.0),
      child: Card(
        elevation: 10,
        child: Row(
          children: [
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.all(10.0),
                  child: controller.image != null
                      ? CircleAvatar(
                          radius: 45,
                          backgroundImage: FileImage(controller.image!),
                        )
                      : const Icon(Icons.account_circle),
                ),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(5.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text('Name     :  ${controller.name.text}'),
                  Text("Number  :  ${controller.number.text}"),
                  Text("E-mail     :  ${controller.email.text}"),
                ],
              ),
            ),
          ],
        ),
      ),
    ),
  );
}
