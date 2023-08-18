import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/profile_controller.dart';

class ProfileView extends GetView<ProfileController> {
  const ProfileView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: ProfileController(),
      builder: (context) {
        return Scaffold(
          backgroundColor: const Color(0xffF4F5F7),
          body: SafeArea(
            child: SingleChildScrollView(
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 36, vertical: 18),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        const Text('    '),
                        const Text(
                          'Profile',
                          style: TextStyle(
                            fontSize: 16,
                            fontFamily: 'DM_Sans_medium',
                            color: Color(0xff172B4D),
                          ),
                        ),
                        SvgPicture.asset(
                          controller.logo.value,
                          height: 20,
                          width: 20,
                          colorFilter: const ColorFilter.mode(
                            Color(0xffC1C7D0),
                            BlendMode.srcIn,
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(height: 29),
                    Container(
                      height: 81,
                      width: Get.width - 72,
                      decoration: BoxDecoration(
                        borderRadius: BorderRadius.circular(5),
                        color: const Color(0xffffffff),
                      ),
                      child: Row(
                        children: [
                          const SizedBox(width: 18),
                          Container(
                            decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(8),
                              color: const Color(0xffF4F5F7),
                            ),
                            child: Image.asset(
                              'assets/images/Image.png',
                              width: 44,
                              height: 44,
                              fit: BoxFit.cover,
                            ),
                          ),
                          const SizedBox(width: 15),
                          // ignore: prefer_const_constructors
                          const Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'John Doe',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                              SizedBox(height: 5),
                              Text(
                                '378-854-3245',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_regular',
                                  color: Color(0xff7A869A),
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          Container(
                            height: 22,
                            padding: const EdgeInsets.symmetric(horizontal: 7),
                            decoration: BoxDecoration(
                              color: const Color(0xFFFFFAE6),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'Unverified',
                                style: TextStyle(
                                  color: Color(0xFFFF991F),
                                  fontSize: 10,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 19),
                          SvgPicture.asset(
                            'assets/icons/angle-right.svg',
                            height: 13,
                            width: 7,
                            colorFilter: const ColorFilter.mode(
                              Color(0xffC1C7D0),
                              BlendMode.srcIn,
                            ),
                          ),
                          const SizedBox(width: 25),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      height: 52,
                      width: Get.width - 72,
                      decoration: const BoxDecoration(
                        borderRadius: BorderRadius.only(
                          topLeft: Radius.circular(5),
                          topRight: Radius.circular(5),
                        ),
                        color: Color(0xffffffff),
                      ),
                      child: const Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Padding(
                            padding: EdgeInsets.all(17),
                            child: Text(
                              'General',
                              style: TextStyle(
                                fontSize: 14,
                                fontFamily: 'DM_Sans_medium',
                                color: Color(0xff172B4D),
                              ),
                            ),
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 1),
                    Container(
                      height: 59,
                      width: Get.width - 72,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              SvgPicture.asset(
                                'assets/icons/map-marker.svg',
                                height: 20,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xff5243AA),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 26),
                              const Text(
                                'Security',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                'assets/icons/angle-right.svg',
                                height: 13,
                                width: 7,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 25),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      height: 59,
                      width: Get.width - 72,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              SvgPicture.asset(
                                'assets/icons/clock.svg',
                                height: 20,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffFF991F),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 26),
                              const Text(
                                'Transaction History',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                'assets/icons/angle-right.svg',
                                height: 13,
                                width: 7,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 25),
                            ],
                          ),
                        ],
                      ),
                    ),
                    Container(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      color: Colors.white,
                      child: Divider(
                        height: 1,
                        thickness: 1,
                        color: const Color(0xfff4f5f7),
                      ),
                    ),
                    Container(
                      height: 59,
                      width: Get.width - 72,
                      decoration: const BoxDecoration(
                        color: Color(0xffffffff),
                        borderRadius: BorderRadius.only(
                          bottomLeft: Radius.circular(5),
                          bottomRight: Radius.circular(5),
                        ),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              SvgPicture.asset(
                                'assets/icons/users-alt.svg',
                                height: 20,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xff0052CC),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 26),
                              const Text(
                                'Contract',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                'assets/icons/angle-right.svg',
                                height: 13,
                                width: 7,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 25),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      height: 59,
                      width: Get.width - 72,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              SvgPicture.asset(
                                'assets/icons/setting.svg',
                                height: 20,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 26),
                              const Text(
                                'Setting',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                'assets/icons/angle-right.svg',
                                height: 13,
                                width: 7,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 25),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    Container(
                      height: 59,
                      width: Get.width - 72,
                      decoration: BoxDecoration(
                        color: const Color(0xffffffff),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Column(
                        mainAxisAlignment: MainAxisAlignment.center,
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Row(
                            children: [
                              const SizedBox(width: 20),
                              SvgPicture.asset(
                                'assets/icons/life-ring.svg',
                                height: 20,
                                width: 20,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 26),
                              const Text(
                                'Help Center',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                              const Spacer(),
                              SvgPicture.asset(
                                'assets/icons/angle-right.svg',
                                height: 13,
                                width: 7,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xffC1C7D0),
                                  BlendMode.srcIn,
                                ),
                              ),
                              const SizedBox(width: 25),
                            ],
                          ),
                        ],
                      ),
                    ),
                    const SizedBox(height: 14),
                    InkWell(
                      onTap: () {
                        controller.resetApp();
                      },
                      child: Container(
                        height: 59,
                        width: Get.width - 72,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                SvgPicture.asset(
                                  'assets/icons/times.svg',
                                  height: 20,
                                  width: 20,
                                  colorFilter: const ColorFilter.mode(
                                    Color(0xffDE350B),
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const SizedBox(width: 26),
                                const Text(
                                  'Reset App',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_medium',
                                    color: Color(0xff172B4D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
                    InkWell(
                      onTap: () {
                        controller.goToLogin();
                      },
                      child: Container(
                        height: 59,
                        width: Get.width - 72,
                        decoration: BoxDecoration(
                          color: const Color(0xffffffff),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                const SizedBox(width: 20),
                                SvgPicture.asset(
                                  'assets/icons/exit.svg',
                                  height: 20,
                                  width: 20,
                                  colorFilter: const ColorFilter.mode(
                                    Color(0xffDE350B),
                                    BlendMode.srcIn,
                                  ),
                                ),
                                const SizedBox(width: 26),
                                const Text(
                                  'Go to Login',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_medium',
                                    color: Color(0xff172B4D),
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                    ),
                    const SizedBox(height: 14),
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
