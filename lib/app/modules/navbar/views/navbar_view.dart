import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';

import '../controllers/navbar_controller.dart';

class NavbarView extends GetView<NavbarController> {
  const NavbarView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: NavbarController(),
      builder: (controller) {
        return SafeArea(
          child: Scaffold(
            body: controller.pages[controller.pageIndex.value],
            bottomNavigationBar: Container(
              decoration: BoxDecoration(
                color: Colors.white,
                boxShadow: [
                  BoxShadow(
                    blurRadius: 16,
                    color: const Color(0xff25265e).withOpacity(.05),
                  ),
                ],
              ),
              child: Container(
                padding: const EdgeInsets.symmetric(horizontal: 37.0),
                height: Get.height * 0.11,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    InkWell(
                      onTap: () {
                        controller.pageIndex.value = 0;
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        // width: Get.width * 0.1,
                        // height: Get.height * 0.06,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/home-alt.svg',
                              height: 22,
                              width: 19,
                              colorFilter: ColorFilter.mode(
                                controller.pageIndex.value == 0 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              'Home',
                              style: TextStyle(
                                color: controller.pageIndex.value == 0 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                fontSize: 12,
                                fontFamily: 'DM_Sans_regular',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.pageIndex.value = 1;
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        // width: Get.width * 0.2,
                        height: Get.height * 0.06,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/money-withdraw.svg',
                              height: 22,
                              width: 19,
                              colorFilter: ColorFilter.mode(
                                controller.pageIndex.value == 1 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              'Top Up',
                              style: TextStyle(
                                color: controller.pageIndex.value == 1 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                fontSize: 12,
                                fontFamily: 'DM_Sans_regular',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        // controller.pageIndex.value = 2;
                        Get.toNamed(Routes.Q_R_SCAN);
                      },
                      child: Container(
                        padding: const EdgeInsets.only(top: 7),
                        // width: Get.width * 0.2,
                        height: Get.height * 0.06,

                        child: Container(
                          padding: const EdgeInsets.all(10),
                          decoration: BoxDecoration(
                            color: const Color(0xff018FFA),
                            borderRadius: BorderRadius.circular(10),
                          ),
                          child: SvgPicture.asset(
                            'assets/icons/qrcode-scan.svg',
                            height: 22,
                            width: 19,
                            colorFilter: const ColorFilter.mode(
                              Colors.white,
                              BlendMode.srcIn,
                            ),
                          ),
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.pageIndex.value = 3;
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        // width: Get.width * 0.2,
                        height: Get.height * 0.06,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/bell.svg',
                              height: 22,
                              width: 19,
                              colorFilter: ColorFilter.mode(
                                controller.pageIndex.value == 3 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              'inbox',
                              style: TextStyle(
                                color: controller.pageIndex.value == 3 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                fontSize: 12,
                                fontFamily: 'DM_Sans_regular',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                    InkWell(
                      onTap: () {
                        controller.pageIndex.value = 4;
                      },
                      child: Container(
                        margin: const EdgeInsets.only(top: 15),
                        // width: Get.width * 0.2,
                        height: Get.height * 0.06,
                        child: Column(
                          children: [
                            SvgPicture.asset(
                              'assets/icons/user-circle.svg',
                              height: 22,
                              width: 19,
                              colorFilter: ColorFilter.mode(
                                controller.pageIndex.value == 4 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                BlendMode.srcIn,
                              ),
                            ),
                            const SizedBox(height: 7),
                            Text(
                              'Profile',
                              style: TextStyle(
                                color: controller.pageIndex.value == 4 ? const Color(0xff018FFA) : const Color(0xffc1c7d0),
                                fontSize: 12,
                                fontFamily: 'DM_Sans_regular',
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ),
        );
      },
    );
  }
}
