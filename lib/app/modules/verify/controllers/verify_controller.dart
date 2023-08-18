import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/routes/app_pages.dart';

class VerifyController extends GetxController {
  RxString logo = 'assets/icons/wallet_sharp.svg'.obs;

  void goToDocumentUpload() {
    Get.toNamed(Routes.DOCUMENT_UPLOAD);
  }

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }
}
