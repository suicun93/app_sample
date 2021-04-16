import 'package:get/get.dart';

import '../controllers/verify_code_from_phone_not_register_controller.dart';

class VerifyCodeFromPhoneNotRegisterBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyCodeFromPhoneNotRegisterController>(
      () => VerifyCodeFromPhoneNotRegisterController(),
    );
  }
}
