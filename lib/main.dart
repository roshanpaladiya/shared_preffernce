import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';
import 'package:shared_preffernce_practice/screens/splash/splash_screen.dart';
import 'package:shared_preffernce_practice/services/pref_service.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PrefServices.init();
  runApp(
    GetMaterialApp(
      home: const SplashScreen(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        useMaterial3: true,
      ),
    ),
  );
}

