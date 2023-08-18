import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';

class SignUpController extends GetxController {
  RxString logo = 'assets/icons/times.svg'.obs;

  List cities = [
    'Cairo',
    'Alexandria',
    'Giza',
    'Port Said',
    'Suez',
    'Luxor',
  ];

  List genders = [
    'Male',
    'Female',
  ];

  TextEditingController dateController = TextEditingController();

  RxBool checkBoxController = false.obs;

  goToVerify() {
    Get.toNamed(Routes.VERIFY);
  }

  void selectDate() {
    Get.defaultDialog(
      title: 'Select Date',
      content: SizedBox(
        height: 200,
        child: Column(
          children: [
            Expanded(
              child: CupertinoDatePicker(
                mode: CupertinoDatePickerMode.date,
                initialDateTime: DateTime.now(),
                onDateTimeChanged: (DateTime newDate) {
                  dateController.text = newDate.toString().substring(0, 10);
                },
              ),
            ),
            const SizedBox(height: 20),
            InkWell(
              onTap: () {
                Get.back();
              },
              child: const Text('Done'),
            ),
          ],
        ),
      ),
    );
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

  void goToSignIn() {
    Get.back();
  }

  goBack() {
    print('goBack');
    Get.back();
  }
}
