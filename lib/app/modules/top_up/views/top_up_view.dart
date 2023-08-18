import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/top_up_controller.dart';

class TopUpView extends GetView<TopUpController> {
  const TopUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: TopUpController(),
      builder: (context) {
        return Scaffold(
          backgroundColor: const Color(0xFFFFFFFF),
          body: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(top: 20, left: 36, right: 36),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
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
                      const SizedBox(height: 19),
                      const Text(
                        'Enter Code',
                        style: TextStyle(
                          fontSize: 14,
                          color: Color(0xFFC1C7D0),
                          fontFamily: 'DM_Sans_Regular',
                        ),
                      ),
                      const SizedBox(height: 14),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFf4f5f7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: TextField(
                          // controller: controller.usernameController,
                          decoration: InputDecoration(
                            prefixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                'assets/icons/dialpad-alt.svg',
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFF172B4D),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            suffixIcon: Padding(
                              padding: const EdgeInsets.all(15.0),
                              child: SvgPicture.asset(
                                'assets/icons/check-circle.svg',
                                colorFilter: const ColorFilter.mode(
                                  Color(0xFF00875A),
                                  BlendMode.srcIn,
                                ),
                              ),
                            ),
                            border: InputBorder.none,
                            contentPadding: const EdgeInsets.only(
                              left: 16,
                              top: 14,
                              bottom: 14,
                            ),
                            hintText: '983 876 875 878 6',
                            hintStyle: const TextStyle(
                              color: Color(0xFF172b4d),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_Regular',
                            ),
                          ),
                        ),
                      ),
                      const SizedBox(height: 17),
                      Row(
                        children: <Widget>[
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 10.0, right: 20.0),
                              child: const Divider(
                                color: Color(0xffd5d5d5),
                              ),
                            ),
                          ),
                          const Text(
                            "Or",
                            style: TextStyle(
                              color: Color(0xFFC1C7D0),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_Regular',
                            ),
                          ),
                          Expanded(
                            child: Container(
                              margin: const EdgeInsets.only(left: 20.0, right: 10.0),
                              child: const Divider(
                                color: Color(0xffd5d5d5),
                              ),
                            ),
                          ),
                        ],
                      ),
                      const SizedBox(height: 17),
                      Container(
                        height: 48,
                        decoration: BoxDecoration(
                          color: const Color(0xFFf4f5f7),
                          borderRadius: BorderRadius.circular(5),
                        ),
                        child: GestureDetector(
                          // onTap: () => controller.selectDate(),
                          child: AbsorbPointer(
                            child: TextField(
                              // controller: controller.dateController,
                              textAlign: TextAlign.center,
                              decoration: InputDecoration(
                                prefixIcon: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/qrcode-scan.svg',
                                    colorFilter: const ColorFilter.mode(
                                      Color(0xFF172B4D),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                                suffixIcon: Padding(
                                  padding: const EdgeInsets.all(15.0),
                                  child: SvgPicture.asset(
                                    'assets/icons/qrcode-scan.svg',
                                    colorFilter: const ColorFilter.mode(
                                      Color(0xFFf4f5f7),
                                      BlendMode.srcIn,
                                    ),
                                  ),
                                ),
                                border: InputBorder.none,
                                contentPadding: const EdgeInsets.only(
                                  left: 16,
                                  top: 14,
                                  bottom: 14,
                                ),
                                hintText: 'Scan the QR Code',
                                hintStyle: const TextStyle(
                                  color: Color(0xFF172b4d),
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_Regular',
                                ),
                              ),
                            ),
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        );
      },
    );
  }
}
