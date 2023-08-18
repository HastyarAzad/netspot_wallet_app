import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'package:get/get.dart';

import '../controllers/sign_up_controller.dart';

class SignUpView extends GetView<SignUpController> {
  const SignUpView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX<SignUpController>(
      init: SignUpController(),
      builder: (controller) {
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
                            onTap: controller.goBack,
                            child: SvgPicture.asset(
                              controller.logo.value,
                              width: 12,
                              height: 12,
                              colorFilter: const ColorFilter.mode(
                                Color(0xFF018ffa),
                                BlendMode.srcIn,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Row(
                            children: [
                              const Text(
                                'Already have an account?',
                                style: TextStyle(
                                  fontSize: 14,
                                  fontFamily: 'DM_Sans_Regular',
                                ),
                              ),
                              const SizedBox(width: 5),
                              InkWell(
                                onTap: controller.goToSignIn,
                                child: const Text(
                                  'Sign in',
                                  style: TextStyle(
                                    fontSize: 14,
                                    fontFamily: 'DM_Sans_Regular',
                                    color: Color(0xFF2225ab),
                                  ),
                                ),
                              ),
                            ],
                          ),
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
                          height: Get.height * 0.801,
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
                                    children: [
                                      const Text(
                                        'Getting Started',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'DM_Sans_Regular',
                                        ),
                                      ),
                                      const SizedBox(height: 11),
                                      const Text(
                                        'Create an account to continue!',
                                        textAlign: TextAlign.center,
                                        style: TextStyle(
                                          color: Color(0xFF7a869a),
                                          fontSize: 14,
                                          fontFamily: 'DM_Sans_Regular',
                                        ),
                                      ),
                                      const SizedBox(height: 14),
                                      Column(
                                        mainAxisAlignment: MainAxisAlignment.start,
                                        crossAxisAlignment: CrossAxisAlignment.start,
                                        children: [
                                          const Text(
                                            'Full Name',
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
                                                    'assets/icons/user-circle.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
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
                                                hintText: 'Full Name',
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
                                              // controller: controller.usernameController,
                                              decoration: InputDecoration(
                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(15.0),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/user-check.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
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
                                                hintText: 'Username',
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
                                            'Email',
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
                                                    'assets/icons/envelope-1.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
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
                                                hintText: 'xxx@email.com',
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
                                              // controller: controller.passwordController,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding: const EdgeInsets.only(
                                                  left: 16,
                                                  top: 14,
                                                  bottom: 14,
                                                ),
                                                // add 8 dots indicating password length,
                                                hintText: '●●●●●●●●',
                                                hintStyle: const TextStyle(
                                                  color: Color(0xFF172b4d),
                                                  fontSize: 12,
                                                  fontFamily: 'DM_Sans_Regular',
                                                ),
                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(15.0),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/lock-alt.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
                                                      BlendMode.srcIn,
                                                    ),
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          const Text(
                                            'Confirm Password',
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
                                              // controller: controller.passwordController,
                                              decoration: InputDecoration(
                                                border: InputBorder.none,
                                                contentPadding: const EdgeInsets.only(
                                                  left: 16,
                                                  top: 14,
                                                  bottom: 14,
                                                ),
                                                // add 8 dots indicating password length,
                                                hintText: '●●●●●●●●',
                                                hintStyle: const TextStyle(
                                                  color: Color(0xFF172b4d),
                                                  fontSize: 12,
                                                  fontFamily: 'DM_Sans_Regular',
                                                ),
                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(15.0),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/lock-alt.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
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
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          const Text(
                                            'City',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFC1C7D0),
                                              fontFamily: 'DM_Sans_Regular',
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          Container(
                                            height: 48,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFf4f5f7),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: DropdownButtonFormField(
                                              // value: controller.jobTypeController.text,
                                              items: [
                                                for (var item in controller.cities)
                                                  DropdownMenuItem(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xFF172b4d),
                                                        fontFamily: 'DM_Sans_Regular',
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                              onChanged: (value) {
                                                // controller.jobDepartmentIdController.text = value.toString();
                                              },
                                              decoration: InputDecoration(
                                                contentPadding: const EdgeInsets.only(
                                                  left: 16,
                                                  top: 14,
                                                  bottom: 14,
                                                  right: 16,
                                                ),
                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(15.0),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/user-location.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
                                                      BlendMode.srcIn,
                                                    ),
                                                  ),
                                                ),
                                                border: InputBorder.none,
                                                hintText: 'Select City',
                                                hintStyle: const TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF172b4d),
                                                  fontFamily: 'DM_Sans_Regular',
                                                ),
                                                enabledBorder: const OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          const Text(
                                            'Gender',
                                            style: TextStyle(
                                              fontSize: 14,
                                              color: Color(0xFFC1C7D0),
                                              fontFamily: 'DM_Sans_Regular',
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          Container(
                                            height: 48,
                                            width: Get.width,
                                            decoration: BoxDecoration(
                                              color: const Color(0xFFf4f5f7),
                                              borderRadius: BorderRadius.circular(5),
                                            ),
                                            child: DropdownButtonFormField(
                                              // value: controller.jobTypeController.text,
                                              items: [
                                                for (var item in controller.genders)
                                                  DropdownMenuItem(
                                                    value: item,
                                                    child: Text(
                                                      item,
                                                      style: const TextStyle(
                                                        fontSize: 14,
                                                        color: Color(0xFF172b4d),
                                                        fontFamily: 'DM_Sans_Regular',
                                                      ),
                                                    ),
                                                  ),
                                              ],
                                              onChanged: (value) {
                                                // controller.jobDepartmentIdController.text = value.toString();
                                              },
                                              decoration: InputDecoration(
                                                contentPadding: const EdgeInsets.only(
                                                  left: 16,
                                                  top: 14,
                                                  bottom: 14,
                                                  right: 16,
                                                ),
                                                prefixIcon: Padding(
                                                  padding: const EdgeInsets.all(15.0),
                                                  child: SvgPicture.asset(
                                                    'assets/icons/users-alt.svg',
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFFC1C7D0),
                                                      BlendMode.srcIn,
                                                    ),
                                                  ),
                                                ),
                                                border: InputBorder.none,
                                                hintText: 'Select Gender',
                                                hintStyle: const TextStyle(
                                                  fontSize: 14,
                                                  color: Color(0xFF172b4d),
                                                  fontFamily: 'DM_Sans_Regular',
                                                ),
                                                enabledBorder: const OutlineInputBorder(
                                                  borderSide: BorderSide.none,
                                                ),
                                              ),
                                            ),
                                          ),
                                          const SizedBox(height: 14),
                                          const Text(
                                            'Date of Birth',
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
                                            child: GestureDetector(
                                              onTap: () => controller.selectDate(),
                                              child: AbsorbPointer(
                                                child: TextField(
                                                  controller: controller.dateController,
                                                  decoration: InputDecoration(
                                                    prefixIcon: Padding(
                                                      padding: const EdgeInsets.all(15.0),
                                                      child: SvgPicture.asset(
                                                        'assets/icons/calendar-alt.svg',
                                                        colorFilter: const ColorFilter.mode(
                                                          Color(0xFFC1C7D0),
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
                                                    hintText: '21/Jan/1987',
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
                                          const SizedBox(height: 14),
                                          Wrap(
                                            alignment: WrapAlignment.center,
                                            crossAxisAlignment: WrapCrossAlignment.center,
                                            children: [
                                              SizedBox(
                                                height: 24,
                                                width: 24,
                                                child: Checkbox(
                                                  fillColor: const MaterialStatePropertyAll(
                                                    Color(0xffC1C7D0),
                                                  ),
                                                  value: controller.checkBoxController.value,
                                                  onChanged: (value) {
                                                    controller.checkBoxController.value = value!;
                                                  },
                                                ),
                                              ),
                                              const SizedBox(width: 10),
                                              Wrap(
                                                children: [
                                                  const Text(
                                                    'By creating an account, you agree to our ',
                                                    softWrap: true,
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'DM_Sans_Regular',
                                                    ),
                                                  ),
                                                  InkWell(
                                                    onTap: () {},
                                                    child: const Text(
                                                      'Term and Conditions',
                                                      softWrap: true,
                                                      style: TextStyle(
                                                        fontSize: 12,
                                                        fontFamily: 'DM_Sans_Regular',
                                                        color: Color(0xFF018ffa),
                                                      ),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 28),
                                          Center(
                                            child: InkWell(
                                              onTap: controller.goToVerify,
                                              child: Container(
                                                height: 56,
                                                width: Get.width * 0.9,
                                                decoration: BoxDecoration(
                                                  color: const Color(0xff018FFA),
                                                  borderRadius: BorderRadius.circular(10),
                                                ),
                                                child: const Center(
                                                  child: Text(
                                                    'Next',
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
                                      )
                                    ],
                                  ),
                                  const SizedBox(height: 14),
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
                                'assets/icons/wallet_sharp.svg',
                                width: 34,
                                height: 34,
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
      },
    );
  }
}
