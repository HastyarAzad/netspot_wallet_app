import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/inbox_controller.dart';

class InboxView extends GetView<InboxController> {
  const InboxView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Padding(
                padding: EdgeInsets.only(top: 40, left: 37),
                child: Text(
                  'New Notification',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'DM_Sans_bold',
                  ),
                ),
              ),
              const SizedBox(height: 17),
              Container(
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 35),
              Container(
                height: 89,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD6D6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/money-insert.svg',
                          width: 22,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFFE83A3A),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          'Send Money',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM_Sans_medium',
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: Get.width - (74 + 50 + 14),
                          child: const Wrap(
                            children: [
                              Text(
                                'You sent 200,000 SYP to ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                              Text(
                                'Alan Santos ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF018FFA),
                                ),
                              ),
                              Text(
                                'via transfer',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 37),
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 17),
              Container(
                height: 89,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9EEFF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/money-withdraw.svg',
                          width: 22,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF018FFA),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          'Money Received',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM_Sans_medium',
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: Get.width - (74 + 50 + 14),
                          child: const Wrap(
                            children: [
                              Text(
                                'Alejandro Harmon ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF018FFA),
                                ),
                              ),
                              Text(
                                'Sent you 20,000 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                              Text(
                                'SYP via transfer',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 37),
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 17),
              Container(
                height: 89,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD6D6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/money-insert.svg',
                          width: 22,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFFE83A3A),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          'Send Money',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM_Sans_medium',
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: Get.width - (74 + 50 + 14),
                          child: const Wrap(
                            children: [
                              Text(
                                'You sent 200,000 SYP to ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                              Text(
                                'Alan Santos ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF018FFA),
                                ),
                              ),
                              Text(
                                'via transfer',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 37),
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 17),
              Container(
                height: 96,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                  child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9EEFF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: Image.asset(
                          'assets/images/Image.png',
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          'Money Request',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM_Sans_medium',
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: Get.width - (74 + 50 + 14),
                          child: const Wrap(
                            children: [
                              Text(
                                'Alan Santos ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF018FFA),
                                ),
                              ),
                              Text(
                                'Requested 10,000 SYP.',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                            ],
                          ),
                        ),
                        const SizedBox(height: 8),
                        Row(
                          children: [
                            Container(
                              height: 30,
                              width: 70,
                              padding: const EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                color: const Color(0xFFD9EEFF),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  'Details',
                                  style: TextStyle(
                                    color: Color(0xFF018FFA),
                                    fontSize: 12,
                                    fontFamily: 'DM_Sans_medium',
                                  ),
                                ),
                              ),
                            ),
                            const SizedBox(width: 10),
                            // decline
                            Container(
                              height: 30,
                              width: 70,
                              padding: const EdgeInsets.symmetric(horizontal: 7),
                              decoration: BoxDecoration(
                                color: const Color(0xFFFFD6D6),
                                borderRadius: BorderRadius.circular(5),
                              ),
                              child: const Center(
                                child: Text(
                                  'Decline',
                                  style: TextStyle(
                                    color: Color(0xFFE83A3A),
                                    fontSize: 12,
                                    fontFamily: 'DM_Sans_medium',
                                  ),
                                ),
                              ),
                            ),
                          ],
                        ),

                      ],
                    ),
                  ],
                ),
              ),
              // const SizedBox(height: 17),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 37),
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 24),
              const Padding(
                padding: EdgeInsets.only(left: 37),
                child: Text(
                  'Earlier Norifications',
                  style: TextStyle(
                    fontSize: 14,
                    fontFamily: 'DM_Sans_bold',
                  ),
                ),
              ),
              const SizedBox(height: 17),
              Container(
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 17),
              Container(
                height: 89,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFD9EEFF),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/money-withdraw.svg',
                          width: 22,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFF018FFA),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          'Money Received',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM_Sans_medium',
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: Get.width - (74 + 50 + 14),
                          child: const Wrap(
                            children: [
                              Text(
                                'Alejandro Harmon ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF018FFA),
                                ),
                              ),
                              Text(
                                'Sent you 30,000 ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                              Text(
                                'SYP via transfer',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
              Container(
                margin: const EdgeInsets.symmetric(horizontal: 37),
                height: 1,
                width: double.infinity,
                color: const Color(0xFFE5E5E5),
              ),
              const SizedBox(height: 35),
              Container(
                height: 89,
                margin: const EdgeInsets.symmetric(horizontal: 37),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                      width: 50,
                      height: 48,
                      decoration: BoxDecoration(
                        color: const Color(0xFFFFD6D6),
                        borderRadius: BorderRadius.circular(5),
                      ),
                      child: Center(
                        child: SvgPicture.asset(
                          'assets/icons/money-insert.svg',
                          width: 22,
                          height: 20,
                          colorFilter: const ColorFilter.mode(
                            Color(0xFFE83A3A),
                            BlendMode.srcIn,
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(width: 14),
                    Column(
                      mainAxisAlignment: MainAxisAlignment.start,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const SizedBox(height: 5),
                        const Text(
                          'Send Money',
                          style: TextStyle(
                            fontSize: 14,
                            fontFamily: 'DM_Sans_medium',
                          ),
                        ),
                        const SizedBox(height: 8),
                        SizedBox(
                          width: Get.width - (74 + 50 + 14),
                          child: const Wrap(
                            children: [
                              Text(
                                'You sent 200,000 SYP to ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                              Text(
                                'Alan Santos ',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF018FFA),
                                ),
                              ),
                              Text(
                                'via transfer',
                                style: TextStyle(
                                  fontSize: 12,
                                  fontFamily: 'DM_Sans_medium',
                                  color: Color(0xFF7A869A),
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
