import 'package:flutter/services.dart';
import 'package:get/get.dart';

class QRScanController extends GetxController {
  RxString logo = 'assets/icons/qrcode-scan.svg'.obs;
  RxString selectedButton = "receive".obs;

  void setSelectedButton(String s) {
    selectedButton.value = s;
  }

  @override
  void onInit() {
    super.onInit();
    SystemChrome.setSystemUIOverlayStyle(
      const SystemUiOverlayStyle(
        statusBarColor: Color(0xffdff1ff),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
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
        statusBarColor: Color(0xffffffff),
        statusBarIconBrightness: Brightness.dark,
        statusBarBrightness: Brightness.dark,
      ),
    );
  }
}
