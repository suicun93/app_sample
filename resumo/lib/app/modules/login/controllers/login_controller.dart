import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final phoneNumber = ''.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}

  toLoginEmail() async {
    Get.toNamed(Routes.LOGIN_EMAIL);
  }
}
