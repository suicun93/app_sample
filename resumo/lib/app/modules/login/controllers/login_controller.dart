import 'package:get/get.dart';

import '../../../routes/app_pages.dart';

class LoginController extends GetxController {
  final phoneNumber = ''.obs;
  final error = ''.obs;
  final ready = true.obs;

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

  toLoginEmail() {
    Get.toNamed(Routes.LOGIN_EMAIL);
  }

  sendOTP() async {
    ready.value = false;
    error.value = '';
    // final response = await provider.checkEmailExist(email.value);
    await Future.delayed(Duration(seconds: 2));
    ready.value = true;

    // Lỗi mạng
    // if (!response.isOk) {
    //   error.value = response.statusText;
    //   return;
    // }

    // // Lỗi server
    // if (response.body.message != 'Operation successfully') {
    //   error.value = response.body.message;
    //   return;
    // }

    if (false) {
      error.value = 'エラー　メッセンジャー';
      return;
    }

    // Success => Add all new services vao list
    if (false)
      Get.toNamed(Routes.VERIFY_CODE_FROM_PHONE_REGISTER);
    else
      Get.toNamed(Routes.VERIFY_CODE_FROM_PHONE_NOT_REGISTER);
  }
}
