import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: LoginController(),
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
                            'Let\'s sign you in.',
                            style: TextStyle(
                              fontSize: 24,
                              fontFamily: 'DM_Sans_bold',
                            ),
                          ),
                          const SizedBox(height: 11),
                          const Text(
                            'Welcome back, You\'ve been missed!',
                            textAlign: TextAlign.center,
                            style: TextStyle(
                              color: Color(0xFF7a869a),
                              fontSize: 14,
                              fontFamily: 'DM_Sans_Regular',
                            ),
                          ),
                          const SizedBox(height: 94),
                          Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              const Text(
                                'Username',
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
                                  controller: controller.usernameController,
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: SvgPicture.asset(
                                        'assets/icons/user.svg',
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
                                          Color(0xFF018ffa),
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
                                    hintText: 'Enter your username',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF172b4d),
                                      fontSize: 14,
                                      fontFamily: 'DM_Sans_Regular',
                                    ),
                                  ),
                                ),
                              ),
                              const SizedBox(height: 14),
                              const Text(
                                'Password',
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
                                  obscureText: true,
                                  controller: controller.passwordController,
                                  decoration: InputDecoration(
                                    prefixIcon: Padding(
                                      padding: const EdgeInsets.all(15.0),
                                      child: SvgPicture.asset(
                                        'assets/icons/lock-alt.svg',
                                        colorFilter: const ColorFilter.mode(
                                          Color(0xFF172B4D),
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
                                    hintText: 'Enter your password',
                                    hintStyle: const TextStyle(
                                      color: Color(0xFF172b4d),
                                      fontSize: 14,
                                      fontFamily: 'DM_Sans_Regular',
                                    ),
                                  ),
                                ),
                              ),
                            ],
                          )
                        ],
                      ),
                      const Spacer(),
                      Center(
                        child: InkWell(
                          onTap: controller.signIn,
                          child: Container(
                            height: 56,
                            width: Get.width * 0.9,
                            decoration: BoxDecoration(
                              color: const Color(0xff018FFA),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Sign In',
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
                      const SizedBox(height: 14),
                      Center(
                        child: InkWell(
                          onTap: controller.createAccount,
                          child: Container(
                            height: 56,
                            width: Get.width * 0.9,
                            decoration: BoxDecoration(
                              color: const Color(0xfff4f5f7),
                              borderRadius: BorderRadius.circular(10),
                            ),
                            child: const Center(
                              child: Text(
                                'Create an account',
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
