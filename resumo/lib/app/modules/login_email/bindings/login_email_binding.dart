import 'package:get/get.dart';

import '../controllers/login_email_controller.dart';
import '../data/check_email_exist_response_provider.dart';

class LoginEmailBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<LoginEmailController>(
      () => LoginEmailController(),
    );
    Get.lazyPut<CheckEmailExistResponseProvider>(
      () => CheckEmailExistResponseProvider(),
    );
  }
}
