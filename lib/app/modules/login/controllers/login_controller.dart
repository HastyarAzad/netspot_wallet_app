import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';
// import 'package:shared_preferences/shared_preferences.dart';

class LoginController extends GetxController {
  RxString tilte = "Login".obs;
  RxString logo = 'assets/icons/wallet_sharp.svg'.obs;

  TextEditingController usernameController = TextEditingController();
  TextEditingController passwordController = TextEditingController();

  void signIn() {
    Get.offNamed(Routes.NAVBAR);
  }

  void createAccount() {
    // clear the shareed prefrences
    // SharedPreferences prefs = await SharedPreferences.getInstance();
    // await prefs.clear();

    Get.toNamed(Routes.SIGN_UP);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
