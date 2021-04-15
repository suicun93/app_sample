import 'package:get/get.dart';

import '../../../common/my_getx_controller.dart';
import '../../../routes/app_pages.dart';
import '../data/check_email_exist_response_provider.dart';

class LoginEmailController
    extends MyGetXController<CheckEmailExistResponseProvider> {
  final email = ''.obs;
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

  checkEmailExist() async {
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
      error.value = 'Chua co trong DB, an vao day de login';
      return;
    }

    // Success => Add all new services vao list
    Get.toNamed(Routes.VERIFY_CODE_FROM_EMAIL);
  }
}
