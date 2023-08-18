import 'package:get/get.dart';
import 'package:netspot_wallet_app/app/modules/QR_scan/views/q_r_scan_view.dart';
import 'package:netspot_wallet_app/app/modules/home/views/home_view.dart';
import 'package:netspot_wallet_app/app/modules/inbox/views/inbox_view.dart';
import 'package:netspot_wallet_app/app/modules/profile/views/profile_view.dart';
import 'package:netspot_wallet_app/app/modules/top_up/views/top_up_view.dart';

class NavbarController extends GetxController {
    RxString title = 'Home'.obs;

  RxInt pageIndex = 0.obs;
  
  final pages = [
    HomeView(),
    TopUpView(),
    QRScanView(),
    InboxView(),
    ProfileView(),
  ];
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
