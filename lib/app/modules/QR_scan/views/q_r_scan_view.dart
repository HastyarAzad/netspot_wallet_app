import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/q_r_scan_controller.dart';

class QRScanView extends GetView<QRScanController> {
  const QRScanView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
        init: QRScanController(),
        builder: (context) {
          return Scaffold(
            backgroundColor: const Color(0xffdff1ff),
            body: SafeArea(
              child: SizedBox(
                height: Get.height,
                child: SingleChildScrollView(
                  child: Column(
                    children: [
                      Padding(
                        padding: EdgeInsets.all(Get.width * 0.05),
                        child: Row(
                          children: [
                            InkWell(
                              onTap: () {
                                Get.back();
                              },
                              child: SvgPicture.asset(
                                "assets/icons/times.svg",
                                width: 12,
                                height: 12,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFF018ffa),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            const Spacer(),
                          ],
                        ),
                      ),
                      const SizedBox(height: 71),
                      Stack(
                        alignment: Alignment.center,
                        clipBehavior: Clip.none,
                        children: [
                          Container(
                            width: Get.width,
                            height: Get.height * 0.8,
                            padding: const EdgeInsets.only(
                              top: 54,
                            ),
                            decoration: const BoxDecoration(
                              color: Color(0xFFffffff),
                              // border: Border.all(
                              //   color: const Color(0xFF018ffa),
                              //   width: 2,
                              // ),
                              borderRadius: BorderRadius.only(
                                topLeft: Radius.circular(30),
                                topRight: Radius.circular(30),
                              ),
                            ),
                            child: SingleChildScrollView(
                              child: Container(
                                padding: EdgeInsets.all(Get.width * 0.05),
                                child: Column(
                                  children: [
                                    Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.center,
                                      children: [
                                        Container(
                                          // border
                                          decoration: BoxDecoration(
                                            // border: Border.all(
                                            //   color: const Color(0xFF018ffa),
                                            //   width: 2,
                                            // ),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Row(
                                            mainAxisAlignment: MainAxisAlignment.spaceAround,
                                            children: [
                                              SizedBox(
                                                height: 42,
                                                width: (Get.width - (Get.width * 0.1)) / 2,
                                                child: InkWell(
                                                  onTap: () {
                                                    controller.setSelectedButton("receive");
                                                  },
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Receive',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'DM_Sans_medium',
                                                          color: controller.selectedButton.value == "receive" ? const Color(0xFF018ffa) : const Color(0xFF172B4D),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2,
                                                        decoration: BoxDecoration(
                                                            color: controller.selectedButton.value == "receive" ? const Color(0xFF018ffa) : const Color(0xFFf4f5f7),
                                                            borderRadius: const BorderRadius.only(
                                                              topLeft: Radius.circular(10),
                                                              topRight: Radius.circular(10),
                                                            )),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                              SizedBox(
                                                height: 42,
                                                width: (Get.width - (Get.width * 0.1)) / 2,
                                                child: InkWell(
                                                  onTap: () {
                                                    controller.setSelectedButton("send");
                                                  },
                                                  child: Column(
                                                    crossAxisAlignment: CrossAxisAlignment.center,
                                                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                                    children: [
                                                      Text(
                                                        'Send',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'DM_Sans_medium',
                                                          color: controller.selectedButton.value == "send" ? const Color(0xFF018ffa) : const Color(0xFF172B4D),
                                                        ),
                                                      ),
                                                      Container(
                                                        height: 2,
                                                        decoration: BoxDecoration(
                                                          color: controller.selectedButton.value == "send" ? const Color(0xFF018ffa) : const Color(0xFFf4f5f7),
                                                          borderRadius: const BorderRadius.only(
                                                            topLeft: Radius.circular(10),
                                                            topRight: Radius.circular(10),
                                                          ),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ),
                                              ),
                                            ],
                                          ),
                                        ),
                                        const SizedBox(height: 35),
                                        Container(
                                          width: (Get.width / 1.6),
                                          height: 224,
                                          decoration: BoxDecoration(
                                            color: const Color(0xFFf4f5f7),
                                            borderRadius: BorderRadius.circular(10),
                                          ),
                                          child: Center(
                                            // load an image from assets
                                            child: Image.asset(
                                              'assets/images/qr-code-image.png',
                                              width: 224,
                                              height: 224,
                                              fit: BoxFit.cover,
                                            ),
                                          ),
                                        ),
                                        const SizedBox(height: 71),
                                        SvgPicture.asset(
                                          "assets/icons/camera.svg",
                                          width: 20,
                                          height: 17,
                                          colorFilter: const ColorFilter.mode(
                                            Color(0xFF018ffa),
                                            BlendMode.srcIn,
                                          ),
                                        ),
                                        const SizedBox(height: 42),
                                        Center(
                                          child: InkWell(
                                            // onTap: controller.goToHome,
                                            child: Container(
                                              height: 56,
                                              width: Get.width * 0.9,
                                              decoration: BoxDecoration(
                                                color: const Color(0xff018FFA),
                                                borderRadius: BorderRadius.circular(10),
                                              ),
                                              child: const Center(
                                                child: Text(
                                                  'Enter Manually',
                                                  style: TextStyle(
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
                                  ],
                                ),
                              ),
                            ),
                          ),
                          Positioned(
                            top: -54,
                            child: CircleAvatar(
                              radius: 54,
                              backgroundColor: const Color(0xFFffffff),
                              child: CircleAvatar(
                                radius: 48,
                                backgroundColor: const Color(0xFF018ffa),
                                child: SvgPicture.asset(
                                  controller.logo.value,
                                  width: 22,
                                  height: 22,
                                  colorFilter: const ColorFilter.mode(
                                    Color(0xFFffffff),
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ],
                  ),
                ),
              ),
            ),
          );
        });
  }
}
