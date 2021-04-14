import 'package:get/get.dart';

import 'package:resumo/app/modules/login_email/bindings/login_email_binding.dart';
import 'package:resumo/app/modules/login_email/views/login_email_view.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/initial/bindings/initial_binding.dart';
import '../modules/initial/views/initial_view.dart';

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
      name: _Paths.LOGIN_EMAIL,
      page: () => LoginEmailView(),
      binding: LoginEmailBinding(),
    ),
  ];
}
