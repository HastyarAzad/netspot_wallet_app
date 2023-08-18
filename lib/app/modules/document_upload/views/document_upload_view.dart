import 'package:dotted_border/dotted_border.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

import 'package:get/get.dart';

import '../controllers/document_upload_controller.dart';

class DocumentUploadView extends GetView<DocumentUploadController> {
  const DocumentUploadView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX<DocumentUploadController>(
      init: DocumentUploadController(),
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
                              "assets/icons/angle-left.svg",
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
                                  const Column(
                                    children: [
                                      Text(
                                        'Almost there!',
                                        style: TextStyle(
                                          fontSize: 24,
                                          fontFamily: 'DM_Sans_Regular',
                                        ),
                                      ),
                                    ],
                                  ),
                                  const SizedBox(height: 33),
                                  const SizedBox(
                                    width: double.infinity,
                                    child: Column(
                                      mainAxisAlignment: MainAxisAlignment.start,
                                      crossAxisAlignment: CrossAxisAlignment.start,
                                      children: [
                                        Text(
                                          'Identification',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'DM_Sans_bold',
                                          ),
                                        ),
                                        SizedBox(height: 4),
                                        Text(
                                          'Please provide each photo as requested below: ',
                                          style: TextStyle(
                                            fontSize: 14,
                                            fontFamily: 'DM_Sans_medium',
                                            color: Color(0xFFC1C7D0),
                                          ),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 14),
                                  Container(
                                    decoration: BoxDecoration(
                                      // color: const Color(0xFFF4F5F7),
                                      borderRadius: BorderRadius.circular(10),
                                    ),
                                    child: Row(
                                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                                      children: [
                                        Column(
                                          children: [
                                            Container(
                                              width: 95,
                                              height: 95,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF4F5F7),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/icons/front.svg',
                                                    width: 46,
                                                    height: 46,
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFF018FFA),
                                                      BlendMode.srcIn,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 13),
                                                  const Text(
                                                    'Front',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'DM_Sans_medium',
                                                      color: Color(0xFF172B4D),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Container(
                                              width: 95,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFDCFFD9),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                  'assets/icons/check-circle.svg',
                                                  width: 20,
                                                  height: 20,
                                                  colorFilter: const ColorFilter.mode(
                                                    Color(0xFF12AF41),
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 17),
                                        Column(
                                          children: [
                                            Container(
                                              width: 95,
                                              height: 95,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF4F5F7),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/icons/right.svg',
                                                    width: 46,
                                                    height: 46,
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFF018FFA),
                                                      BlendMode.srcIn,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 13),
                                                  const Text(
                                                    'Right side',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'DM_Sans_medium',
                                                      color: Color(0xFF172B4D),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Container(
                                              width: 95,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF4F5F7),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                  'assets/icons/camera-plus.svg',
                                                  width: 20,
                                                  height: 20,
                                                  colorFilter: const ColorFilter.mode(
                                                    Color(0xFF018FFA),
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                        const SizedBox(width: 17),
                                        Column(
                                          children: [
                                            Container(
                                              width: 95,
                                              height: 95,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF4F5F7),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Column(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                crossAxisAlignment: CrossAxisAlignment.center,
                                                children: [
                                                  SvgPicture.asset(
                                                    'assets/icons/left.svg',
                                                    width: 46,
                                                    height: 46,
                                                    colorFilter: const ColorFilter.mode(
                                                      Color(0xFF018FFA),
                                                      BlendMode.srcIn,
                                                    ),
                                                  ),
                                                  const SizedBox(height: 13),
                                                  const Text(
                                                    'Left side',
                                                    style: TextStyle(
                                                      fontSize: 12,
                                                      fontFamily: 'DM_Sans_medium',
                                                      color: Color(0xFF172B4D),
                                                    ),
                                                  ),
                                                ],
                                              ),
                                            ),
                                            const SizedBox(height: 5),
                                            Container(
                                              width: 95,
                                              height: 31,
                                              decoration: BoxDecoration(
                                                color: const Color(0xFFF4F5F7),
                                                borderRadius: BorderRadius.circular(5),
                                              ),
                                              child: Center(
                                                child: SvgPicture.asset(
                                                  'assets/icons/camera-plus.svg',
                                                  width: 20,
                                                  height: 20,
                                                  colorFilter: ColorFilter.mode(
                                                    const Color(0xFF018FFA).withOpacity(0.25),
                                                    BlendMode.srcIn,
                                                  ),
                                                ),
                                              ),
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(height: 19),
                                  Column(
                                    mainAxisAlignment: MainAxisAlignment.start,
                                    crossAxisAlignment: CrossAxisAlignment.start,
                                    children: [
                                      const Text(
                                        'Documentation',
                                        style: TextStyle(
                                          fontSize: 14,
                                          fontFamily: 'DM_Sans_bold',
                                          color: Color(0xff172B4D),
                                        ),
                                      ),
                                      const SizedBox(height: 14),
                                      DottedBorder(
                                        color: const Color(0xffe5e5e5),
                                        borderType: BorderType.RRect,
                                        radius: const Radius.circular(15),
                                        dashPattern: const [4, 4],
                                        strokeWidth: 1,
                                        child: Container(
                                          height: 146,
                                          padding: const EdgeInsets.all(18),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 37,
                                                    height: 37,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF018ffa).withOpacity(.15),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    child: Center(
                                                      child: SvgPicture.asset(
                                                        'assets/icons/document-layout-left.svg',
                                                        width: 16,
                                                        height: 13,
                                                        colorFilter: const ColorFilter.mode(
                                                          Color(0xFF018FFA),
                                                          BlendMode.srcIn,
                                                        ),
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(width: 15),
                                                  const Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Passport',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'DM_Sans_medium',
                                                          color: Color(0xFF172B4D),
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Must be clear, readable and high \nquality',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'DM_Sans_regular',
                                                          color: Color(0xFFC1C7D0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 14),
                                              Center(
                                                child: InkWell(
                                                  onTap: controller.upload,
                                                  child: Container(
                                                    height: 41,
                                                    width: Get.width * 0.9,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF4F5F7),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Upload',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily: 'DM_Sans_medium',
                                                          color: Color(0xFF172B4D),
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
                                      DottedBorder(
                                        color: const Color(0xffe5e5e5),
                                        borderType: BorderType.RRect,
                                        radius: const Radius.circular(15),
                                        dashPattern: const [4, 4],
                                        strokeWidth: 1,
                                        child: Container(
                                          height: 146,
                                          padding: const EdgeInsets.all(18),
                                          child: Column(
                                            children: [
                                              Row(
                                                children: [
                                                  Container(
                                                    width: 37,
                                                    height: 37,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF018ffa).withOpacity(.15),
                                                      borderRadius: BorderRadius.circular(10),
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
                                                  const SizedBox(width: 15),
                                                  const Column(
                                                    mainAxisAlignment: MainAxisAlignment.start,
                                                    crossAxisAlignment: CrossAxisAlignment.start,
                                                    children: [
                                                      Text(
                                                        'Personal ID Card',
                                                        style: TextStyle(
                                                          fontSize: 14,
                                                          fontFamily: 'DM_Sans_medium',
                                                          color: Color(0xFF172B4D),
                                                        ),
                                                      ),
                                                      SizedBox(height: 4),
                                                      Text(
                                                        'Must be clear, readable and high \nquality',
                                                        style: TextStyle(
                                                          fontSize: 12,
                                                          fontFamily: 'DM_Sans_regular',
                                                          color: Color(0xFFC1C7D0),
                                                        ),
                                                      ),
                                                    ],
                                                  ),
                                                ],
                                              ),
                                              const SizedBox(height: 14),
                                              Center(
                                                child: InkWell(
                                                  onTap: controller.upload,
                                                  child: Container(
                                                    height: 41,
                                                    width: Get.width * 0.9,
                                                    decoration: BoxDecoration(
                                                      color: const Color(0xFFF4F5F7),
                                                      borderRadius: BorderRadius.circular(10),
                                                    ),
                                                    child: const Center(
                                                      child: Text(
                                                        'Upload',
                                                        style: TextStyle(
                                                          fontSize: 16,
                                                          fontFamily: 'DM_Sans_medium',
                                                          color: Color(0xFF172B4D),
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
                                      const SizedBox(height: 30),
                                      Center(
                                        child: InkWell(
                                          onTap: controller.goToHome,
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
                                width: 36,
                                height: 48,
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
