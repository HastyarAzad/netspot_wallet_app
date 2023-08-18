import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/splash_controller.dart';
import 'package:flutter_svg/flutter_svg.dart';

class SplashView extends GetView<SplashController> {
  const SplashView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return GetX(
      init: SplashController(),
      builder: (controller) {
        return Scaffold(
          backgroundColor: const Color(0xFF018FFA),
          body: Center(
            child: SvgPicture.asset(
              controller.logo.value,
              width: 54,
              height: 54,
              colorFilter: const ColorFilter.mode(
                Colors.white,
                BlendMode.srcIn,
              ),
            ),
          ),
        );
      },
    );
  }
}
