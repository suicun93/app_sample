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
import '../modules/register/bindings/register_binding.dart';
import '../modules/register/views/register_view.dart';
import '../modules/verify_code_from_email/bindings/verify_code_from_email_binding.dart';
import '../modules/verify_code_from_email/views/verify_code_from_email_view.dart';
import '../modules/verify_code_from_phone_not_register/bindings/verify_code_from_phone_not_register_binding.dart';
import '../modules/verify_code_from_phone_not_register/views/verify_code_from_phone_not_register_view.dart';
import '../modules/verify_code_from_phone_register/bindings/verify_code_from_phone_register_binding.dart';
import '../modules/verify_code_from_phone_register/views/verify_code_from_phone_register_view.dart';

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
    GetPage(
      name: _Paths.VERIFY_CODE_FROM_PHONE_REGISTER,
      page: () => VerifyCodeFromPhoneRegisterView(),
      binding: VerifyCodeFromPhoneRegisterBinding(),
    ),
    GetPage(
      name: _Paths.VERIFY_CODE_FROM_PHONE_NOT_REGISTER,
      page: () => VerifyCodeFromPhoneNotRegisterView(),
      binding: VerifyCodeFromPhoneNotRegisterBinding(),
    ),
    GetPage(
      name: _Paths.REGISTER,
      page: () => RegisterView(),
      binding: RegisterBinding(),
    ),
  ];
}
