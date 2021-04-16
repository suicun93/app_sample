import 'package:get/get.dart';

import '../../../common/preferences.dart';
import '../../../routes/app_pages.dart';
import '../views/camera/views/camera_view.dart';
import '../views/gym/views/gym_view.dart';
import '../views/home_main/views/home_main_view.dart';
import '../views/personal/views/personal_view.dart';
import '../views/youtube/views/youtube_view.dart';

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
    changeMainView(MainView.HOME);
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
        mainView.value = YoutubeView();
        break;
      case MainView.GYM:
        mainView.value = GymView();
        break;
      case MainView.PERSONAL:
        mainView.value = PersonalView();
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
