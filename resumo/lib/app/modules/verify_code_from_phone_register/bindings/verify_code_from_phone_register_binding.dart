import 'package:get/get.dart';

import '../controllers/verify_code_from_phone_register_controller.dart';

class VerifyCodeFromPhoneRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyCodeFromPhoneRegisterController>(
      () => VerifyCodeFromPhoneRegisterController(),
    );
  }
}
