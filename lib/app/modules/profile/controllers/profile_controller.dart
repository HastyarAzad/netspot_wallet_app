import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  RxString logo = 'assets/icons/bell.svg'.obs;

  resetApp() async {
    // clear the sharred prefrences
    SharedPreferences prefs = await SharedPreferences.getInstance();
    await prefs.clear();
    Get.snackbar('App Reset', 'App reset successfully, you can now restart the app to see the Onboarding screens');
  }

  goToLogin() {
    Get.offAllNamed(Routes.LOGIN);
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
