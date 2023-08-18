import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: HomeController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 36, right: 36),
                  child: Column(
                    children: [
                      Container(
                        height: 186,
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          gradient: const LinearGradient(
                            colors: [
                              Color(0xFF018ffa),
                              Color(0xFF01487d),
                            ],
                            begin: Alignment.topCenter,
                            end: Alignment(0.0, 2.5),
                          ),
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Row(
                              children: [
                                Text(
                                  'Your Balance',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.49),
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_medium',
                                  ),
                                ),
                                const Spacer(),
                                SvgPicture.asset(
                                  'assets/icons/wallet_sharp.svg',
                                  height: 26,
                                  width: 26,
                                  colorFilter: const ColorFilter.mode(
                                    Colors.white,
                                    BlendMode.srcIn,
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 4),
                            Text(
                              controller.balance.value,
                              style: const TextStyle(
                                color: Colors.white,
                                fontSize: 24,
                                fontFamily: 'DM_Sans_bold',
                              ),
                            ),
                            const Spacer(),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  'Username',
                                  style: TextStyle(
                                    color: Colors.white.withOpacity(0.49),
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_medium',
                                  ),
                                ),
                                const SizedBox(height: 4),
                                Text(
                                  controller.username.value,
                                  style: const TextStyle(
                                    color: Colors.white,
                                    fontSize: 16,
                                    fontFamily: 'DM_Sans_medium',
                                  ),
                                ),
                              ],
                            ),
                          ],
                        ),
                      ),
                      const SizedBox(height: 10),
                      Column(
                        children: [
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 68,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFD9EEFF),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/money-insert.svg',
                                        height: 20,
                                        width: 22,
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xFF018ffa),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        'Send',
                                        style: TextStyle(
                                          color: Color(0xFF018ffa),
                                          fontSize: 16,
                                          fontFamily: 'DM_Sans_medium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 68,
                                  width: (Get.width / 2) - 78,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFD9EEFF),
                                  ),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      SvgPicture.asset(
                                        'assets/icons/money-withdraw.svg',
                                        height: 20,
                                        width: 22,
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xFF018ffa),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(width: 10),
                                      const Text(
                                        'Send',
                                        style: TextStyle(
                                          color: Color(0xFF018ffa),
                                          fontSize: 16,
                                          fontFamily: 'DM_Sans_medium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                          const SizedBox(height: 10),
                          Row(
                            children: [
                              Expanded(
                                child: Container(
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFf5f5f5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 10),
                                      SvgPicture.asset(
                                        'assets/icons/money-withdrawal.svg',
                                        height: 20,
                                        width: 22,
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xFF018ffa),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Send',
                                        style: TextStyle(
                                          color: Color(0xFF172B4D),
                                          fontSize: 12,
                                          fontFamily: 'DM_Sans_medium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFf5f5f5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 10),
                                      SvgPicture.asset(
                                        'assets/icons/money-withdrawal.svg',
                                        height: 20,
                                        width: 22,
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xFF018ffa),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'Withdraw',
                                        style: TextStyle(
                                          color: Color(0xFF172B4D),
                                          fontSize: 12,
                                          fontFamily: 'DM_Sans_medium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                              const SizedBox(width: 10),
                              Expanded(
                                child: Container(
                                  height: 95,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(10),
                                    color: const Color(0xFFf5f5f5),
                                  ),
                                  child: Column(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment: CrossAxisAlignment.center,
                                    children: [
                                      const SizedBox(width: 10),
                                      SvgPicture.asset(
                                        'assets/icons/clock.svg',
                                        height: 20,
                                        width: 22,
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xFF018ffa),
                                          BlendMode.srcIn,
                                        ),
                                      ),
                                      const SizedBox(height: 10),
                                      const Text(
                                        'History',
                                        style: TextStyle(
                                          color: Color(0xFF172B4D),
                                          fontSize: 12,
                                          fontFamily: 'DM_Sans_medium',
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                              ),
                            ],
                          ),
                        ],
                      ),
                      const SizedBox(height: 22),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFF4f5f7),
                  thickness: 1,
                ),
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 36, right: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      const Text(
                        'Recent Transaction',
                        style: TextStyle(
                          color: Color(0xFF172B4D),
                          fontSize: 16,
                          fontFamily: 'DM_Sans_medium',
                        ),
                      ),
                      const SizedBox(height: 25),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFF018ffa).withOpacity(.15),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/user.svg',
                                width: 16,
                                height: 13,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFF018FFA),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Lewis Baldwin',
                                style: TextStyle(
                                  color: Color(0xFF172B4D),
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '09 Dec 2020',
                                style: TextStyle(
                                  color: Color(0xFF7A869A),
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            '+ \$1,220.00',
                            style: TextStyle(
                              color: Color(0xFF018FFA),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_medium',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFF4f5f7),
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFDE350B).withOpacity(.15),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/user.svg',
                                width: 16,
                                height: 13,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFFDE350B),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Metro Ticket',
                                style: TextStyle(
                                  color: Color(0xFF172B4D),
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '21 Dec 2020',
                                style: TextStyle(
                                  color: Color(0xFF7A869A),
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            '- \$0.00',
                            style: TextStyle(
                              color: Color(0xFFDE350B),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_medium',
                            ),
                          ),
                        ],
                      ),
                      const Divider(
                        color: Color(0xFFF4f5f7),
                        thickness: 1,
                      ),
                      Row(
                        children: [
                          Container(
                            width: 40,
                            height: 40,
                            decoration: BoxDecoration(
                              color: const Color(0xFFDE350B).withOpacity(.15),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: Center(
                              child: SvgPicture.asset(
                                'assets/icons/user.svg',
                                width: 16,
                                height: 13,
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFFDE350B),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                          ),
                          const SizedBox(width: 16),
                          const Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                'Internet Bill',
                                style: TextStyle(
                                  color: Color(0xFF172B4D),
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                              SizedBox(height: 2),
                              Text(
                                '21 Apr 2020',
                                style: TextStyle(
                                  color: Color(0xFF7A869A),
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                            ],
                          ),
                          const Spacer(),
                          const Text(
                            '- \$20.34',
                            style: TextStyle(
                              color: Color(0xFFDE350B),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_medium',
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 20),
                      Center(
                        child: InkWell(
                          // onTap: controller.goToHome,
                          child: Container(
                            height: 44,
                            width: Get.width * 0.9,
                            decoration: BoxDecoration(
                              color: const Color(0xfff4f5f7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'See all',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xff172B4D),
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 29),
                    ],
                  ),
                ),
                const Divider(
                  color: Color(0xFFF4f5f7),
                  thickness: 1,
                ),
                const SizedBox(height: 22),
                Padding(
                  padding: const EdgeInsets.only(left: 36, right: 36),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.start,
                    children: [
                      Row(
                        children: [
                          const Text(
                            'Bill Pay',
                            style: TextStyle(
                              color: Color(0xFF172B4D),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_regular',
                            ),
                          ),
                          const SizedBox(width: 20),
                          Container(
                            height: 22,
                            width: 84,
                            decoration: BoxDecoration(
                              color: const Color(0xFFD9EEFF),
                              borderRadius: BorderRadius.circular(5),
                            ),
                            child: const Center(
                              child: Text(
                                'Comming Soon',
                                style: TextStyle(
                                  color: Color(0xFF018FFA),
                                  fontSize: 10,
                                  fontFamily: 'DM_Sans_medium',
                                ),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(
                        height: 24,
                      ),
                      Container(
                        height: 127,
                        width: double.infinity,
                        padding: const EdgeInsets.all(20),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(15),
                          color: const Color(0xFF018ffa),
                        ),
                        child: Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            const Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Text(
                                  'Shop',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 24,
                                    fontFamily: 'DM_Sans_bold',
                                  ),
                                ),
                                SizedBox(height: 4),
                                Text(
                                  'Comming Soon',
                                  style: TextStyle(
                                    color: Colors.white,
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_regular',
                                  ),
                                ),
                              ],
                            ),
                            SvgPicture.asset(
                              'assets/icons/shopping-cart.svg',
                              height: 54,
                              width: 54,
                              colorFilter: const ColorFilter.mode(
                                Colors.white,
                                BlendMode.srcIn,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
                const SizedBox(height: 24),
                const Divider(
                  color: Color(0xFFF4f5f7),
                  thickness: 1,
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
