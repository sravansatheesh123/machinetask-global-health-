import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

import 'HomePage/homepage.dart';
import 'LoginPage/loaginpage.dart';
import 'Welcomepage/welcomepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      home: const Welcomepage(),
    );
  }
}

class AuthController extends GetxController {
  var isLoggedIn = false.obs;

  Future<void> login(String username, String password) async {

    if (username == 'Global@1234' && password == 'GLOBAL123') {
      final prefs = await SharedPreferences.getInstance();
      await prefs.setBool('isLoggedIn', true);
      isLoggedIn.value = true;
      Get.off(() => const Homepage());
    } else {
      Get.snackbar('Error', 'Invalid username or password',
          snackPosition: SnackPosition.BOTTOM);
    }
  }

  Future<void> logout() async {
    final prefs = await SharedPreferences.getInstance();
    await prefs.setBool('isLoggedIn', false);
    isLoggedIn.value = false;
    Get.off(() => const LoginPage());
  }

  Future<void> checkLoginStatus() async {
    final prefs = await SharedPreferences.getInstance();
    isLoggedIn.value = prefs.getBool('isLoggedIn') ?? false;
    if (isLoggedIn.value) {
      Get.off(() => const Homepage());
    }
  }
}

