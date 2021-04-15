import 'package:get/get.dart';
import 'package:resumo/app/modules/verify_code_from_email/data/verify_code_from_email_provider.dart';

import '../controllers/verify_code_from_email_controller.dart';

class VerifyCodeFromEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<VerifyCodeFromEmailController>(
      () => VerifyCodeFromEmailController(),
    );
    Get.lazyPut<VerifyCodeFromEmailProvider>(
      () => VerifyCodeFromEmailProvider(),
    );
  }
}
