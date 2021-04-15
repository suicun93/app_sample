import 'package:get/get.dart';

import '../controllers/verify_code_from_email_controller.dart';

class VerifyCodeFromEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyCodeFromEmailController>(
      () => VerifyCodeFromEmailController(),
    );
  }
}
