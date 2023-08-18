import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class SplashController extends GetxController {
  goToHome() async {
    await Future.delayed(const Duration(seconds: 3));
    // get the value of the key "first_time" from the local storage
    SharedPreferences prefs = await SharedPreferences.getInstance();
    bool firstTime = prefs.getBool('first_time') ?? true;
    // if it's the first time, set the value of the key "first_time" to false
    if (firstTime) {
      prefs.setBool('first_time', false);
      // go to the startup screen
      Get.offNamed(Routes.ONBOARDING);
      return;
    }
    Get.offNamed(Routes.LOGIN);
  }

  RxString logo = 'assets/icons/wallet_sharp.svg'.obs;

  @override
  void onInit() async {
    super.onInit();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xff018FFA),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
    await goToHome();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        // statusBarColor: Color(0xff018FFA),
        statusBarColor: Color.fromARGB(255, 255, 255, 255),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }
}
