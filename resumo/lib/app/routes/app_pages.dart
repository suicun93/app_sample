import 'package:get/get.dart';

import '../modules/guideline/bindings/guideline_binding.dart';
import '../modules/guideline/views/guideline_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/initial/bindings/initial_binding.dart';
import '../modules/initial/views/initial_view.dart';
import '../modules/login/bindings/login_binding.dart';
import '../modules/login/views/login_view.dart';
import '../modules/login_email/bindings/login_email_binding.dart';
import '../modules/login_email/views/login_email_view.dart';
import '../modules/verify_code_from_email/bindings/verify_code_from_email_binding.dart';
import '../modules/verify_code_from_email/views/verify_code_from_email_view.dart';

part 'app_routes.dart';

class AppPages {
  static const INITIAL = Routes.INITIAL;

  static final routes = [
    GetPage(
      name: _Paths.INITIAL,
      page: () => InitialView(),
      binding: InitialBinding(),
    ),
    GetPage(
      name: _Paths.HOME,
      page: () => HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN,
      page: () => LoginView(),
      binding: LoginBinding(),
    ),
    GetPage(
      name: _Paths.LOGIN_EMAIL,
      page: () => LoginEmailView(),
      binding: LoginEmailBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_CODE_FROM_EMAIL,
      page: () => VerifyCodeFromEmailView(),
      binding: VerifyCodeFromEmailBinding(),
    ),
    GetPage(
      name: _Paths.GUIDELINE,
      page: () => GuidelineView(),
      binding: GuidelineBinding(),
    ),
  ];
}
