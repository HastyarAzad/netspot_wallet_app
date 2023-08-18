import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/onboarding_controller.dart';

class OnboardingView extends GetView<OnboardingController> {
  const OnboardingView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: OnboardingController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              margin: EdgeInsets.all(Get.width * 0.05),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(
                    height: Get.height * 0.01,
                  ),
                  Container(
                    height: Get.height * 0.61,
                    child: PageView(
                      onPageChanged: (value) {
                        controller.pageChanged(value);
                      },
                      controller: controller.pageController,
                      children: [
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Group 33.png',
                                height: Get.height * 0.3,
                                fit: BoxFit.contain, // Adjust image fit
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Prestige and Absolute Security',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'DM_Sans_bold',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.09,
                                  ),
                                  const Text(
                                    'Licensed by all banks in the world & secured with multi-tier PCI-DSS international standards',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'DM_Sans_regular',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Group 38.png',
                                height: Get.height * 0.3,
                                fit: BoxFit.contain, // Adjust image fit
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Leading Payment Application',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'DM_Sans_bold',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.09,
                                  ),
                                  const Text(
                                    'Consumer Loan Payment, pay bills and many other services',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'DM_Sans_regular',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                        Container(
                          child: Column(
                            children: [
                              Image.asset(
                                'assets/images/Group 43.png',
                                height: Get.height * 0.3,
                                fit: BoxFit.contain, // Adjust image fit
                              ),
                              SizedBox(
                                height: Get.height * 0.06,
                              ),
                              Column(
                                children: [
                                  const Text(
                                    'Quick And Easy Money Transfer',
                                    style: TextStyle(
                                      fontSize: 24,
                                      fontFamily: 'DM_Sans_bold',
                                      fontWeight: FontWeight.bold,
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                  SizedBox(
                                    height: Get.height * 0.09,
                                  ),
                                  const Text(
                                    'Send and receive money quickly just need a phone number or simple QR code',
                                    style: TextStyle(
                                      fontSize: 14,
                                      fontFamily: 'DM_Sans_regular',
                                    ),
                                    textAlign: TextAlign.center,
                                  ),
                                ],
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        height: 5,
                        width: controller.currentPage.value == 0 ? 16 : 10,
                        decoration: BoxDecoration(
                          color: controller.currentPage.value == 0 ? const Color(0xff018FFA) : const Color(0xffEBECF0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        height: 5,
                        width: controller.currentPage.value == 1 ? 16 : 10,
                        decoration: BoxDecoration(
                          color: controller.currentPage.value == 1 ? const Color(0xff018FFA) : const Color(0xffEBECF0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                      const SizedBox(
                        width: 10,
                      ),
                      AnimatedContainer(
                        duration: const Duration(milliseconds: 200),
                        curve: Curves.easeIn,
                        height: 5,
                        width: controller.currentPage.value == 2 ? 16 : 10,
                        decoration: BoxDecoration(
                          color: controller.currentPage.value == 2 ? const Color(0xff018FFA) : const Color(0xffEBECF0),
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(
                    height: Get.height * 0.06,
                  ),
                  const Spacer(),
                  Center(
                    child: InkWell(
                      onTap: () {
                        // controller.goToNextPage();
                        controller.changePage();
                      },
                      child: Container(
                        height: 56,
                        width: Get.width * 0.9,
                        decoration: BoxDecoration(
                          color: const Color(0xff018FFA),
                          borderRadius: BorderRadius.circular(10),
                        ),
                        child: Center(
                          child: Text(
                            controller.buttonTitle.value,
                            style: const TextStyle(
                              fontSize: 16,
                              fontFamily: 'DM_Sans_medium',
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                  
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
