import 'package:get/get.dart';

import '../controllers/q_r_scan_controller.dart';

class QRScanBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<QRScanController>(
      () => QRScanController(),
    );
  }
}
