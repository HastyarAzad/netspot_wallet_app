import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class OnboardingController extends GetxController {
  RxString title = 'Onboarding'.obs;
  RxInt currentPage = 0.obs;
  PageController pageController = PageController(initialPage: 0);

  RxString buttonTitle = 'Next'.obs;

  void pageChanged(int value) {
    currentPage.value = value;
    if (currentPage.value == 2) {
      buttonTitle.value = 'Get Started';
      return;
    }
    buttonTitle.value = 'Next';
  }

  void changePage() {
    if (currentPage.value == 2) {
      Get.offNamed('/login');
      return;
    }
    currentPage.value++;
    pageController.animateToPage(currentPage.value, duration: const Duration(milliseconds: 500), curve: Curves.ease);
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
