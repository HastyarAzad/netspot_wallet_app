import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';

class DocumentUploadController extends GetxController {
  
  
  goToHome() {
    Get.offAllNamed(Routes.NAVBAR);
  }

  goToSignIn() {
    Get.offAllNamed(Routes.LOGIN);
  }

  goBack() {
    Get.back();
  }

  void upload() {
    Get.defaultDialog(
      title: 'Uploaded document',
      content: const Text('Success'),
      textConfirm: 'OK',
      confirmTextColor: Colors.white,
      onConfirm: () {
        Get.back();
      },
    );
  }

  RxString logo = 'assets/icons/R_logo.svg'.obs;

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
