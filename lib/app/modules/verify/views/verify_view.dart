import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:pinput/pinput.dart';

import '../controllers/verify_controller.dart';

class VerifyView extends GetView<VerifyController> {
  const VerifyView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GetBuilder<VerifyController>(
      init: VerifyController(),
      builder: (controller) {
        return Scaffold(
          body: SafeArea(
            child: Container(
              padding: EdgeInsets.all(Get.width * 0.05),
              child: SingleChildScrollView(
                child: SizedBox(
                  height: Get.height * 0.912,
                  child: Column(
                    children: [
                      Row(
                        children: [
                          SvgPicture.asset(
                            controller.logo.value,
                            width: 24,
                            height: 24,
                            colorFilter: const ColorFilter.mode(
                              Color(0xFF018ffa),
                              BlendMode.srcIn,
                            ),
                          ),
                          const Spacer(),
                          const Text(
                            'Forgot your credentials?',
                            style: TextStyle(
                              fontSize: 14,
                              fontFamily: 'DM_Sans_Regular',
                            ),
                          ),
                        ],
                      ),
                      SizedBox(height: Get.height * 0.088),
                      Column(
                        children: [
                          const Text(
                            'OTP Authentication',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'DM_Sans_bold',
                            ),
                          ),
                          const SizedBox(height: 11),
                          const Text(
                            'An authentication code has been sent to your email',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7a869a),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_Regular',
                            ),
                          ),
                          const SizedBox(height: 53),
                          Container(
                            padding: const EdgeInsets.all(8),
                            child: Pinput(
                              length: 4,
                              closeKeyboardWhenCompleted: true,
                              keyboardType: TextInputType.number,
                              showCursor: true,
                              defaultPinTheme: PinTheme(
                                height: 65,
                                width: 65,
                                textStyle: const TextStyle(
                                  fontSize: 20,
                                  // color: Color(0xff172B4D),
                                  color: Colors.black,
                                  fontFamily: 'DM_Sans_bold',
                                ),
                                decoration: BoxDecoration(
                                  color: const Color(0xffF4F5F7),
                                  // color: Colors.red,
                                  borderRadius: BorderRadius.circular(15),
                                ),
                              ),
                              cursor: Column(
                                mainAxisAlignment: MainAxisAlignment.end,
                                children: [
                                  Container(
                                    width: 35,
                                    height: 2,
                                    color: const Color(0xff018ffa),
                                  ),
                                ],
                              ),
                              onChanged: (value) {},
                              onCompleted: (pin) => {},
                            ),
                          ),
                          const SizedBox(height: 28),
                          Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: [
                              const Text(
                                'I didn’t receive a code.',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_Regular',
                                ),
                              ),
                              InkWell(
                                onTap: () {
                                  Get.snackbar('Resending code', "please check your email");
                                },
                                child: const Text(
                                  ' Resend Code',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_bold',
                                    color: Color(0xff018ffa),
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const Spacer(),
                      InkWell(
                        onTap: controller.goToDocumentUpload,
                        child: Container(
                          height: 56,
                          width: Get.width * 0.9,
                          decoration: BoxDecoration(
                            color: const Color(0xff018FFA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: const Center(
                            child: Text(
                              'next',
                              style: TextStyle(
                                fontSize: 16,
                                fontFamily: 'DM_Sans_medium',
                                color: Colors.white,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
