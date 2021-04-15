import 'package:get/get.dart';
import 'package:resumo/app/common/preferences.dart';
import 'package:resumo/app/modules/home/views/camera/views/camera_view.dart';
import 'package:resumo/app/modules/home/views/home_main/views/home_main_view.dart';
import 'package:resumo/app/routes/app_pages.dart';

class HomeController extends GetxController {
  final username = ''.obs;
  final ready = false.obs;
  final screenName = ''.obs;
  final requestListBut = false.obs;
  final Rx<GetView> mainView = Rx(HomeMainView());
  final selectedView = MainView.CAMERA.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    loadAdminInfo();
  }

  @override
  void onClose() {}

  loadAdminInfo() async {
    changeMainView(MainView.CAMERA);
    ready.value = true;
  }

  changeMainView(MainView mainViewEnum) async {
    selectedView.value = mainViewEnum;
    requestListBut.value = false;

    switch (mainViewEnum) {
      case MainView.CAMERA:
        mainView.value = CameraView();
        break;
      case MainView.HOME:
        mainView.value = HomeMainView();
        break;
      case MainView.YOUTUBE:
        mainView.value = CameraView();
        break;
      case MainView.GYM:
        mainView.value = CameraView();
        break;
      case MainView.PERSONAL:
        mainView.value = CameraView();
        break;
    }
  }

  logOut() {
    requestListBut.value = false;
    Preference.clearAll();
    Get.offAllNamed(Routes.INITIAL);
  }
}

enum MainView {
  HOME,
  CAMERA,
  YOUTUBE,
  GYM,
  PERSONAL,
}
