import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../views/camera/controllers/camera_controller.dart';
import '../views/camera/data/camera_provider.dart';
import '../views/home_main/controllers/home_main_controller.dart';
import '../views/home_main/data/home_main_provider.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<HomeController>(
      () => HomeController(),
    );

    // Home main
    Get.lazyPut<HomeMainController>(
      () => HomeMainController(),
    );
    Get.lazyPut<HomeMainProvider>(
      () => HomeMainProvider(),
    );

    // Camera
    Get.lazyPut<CameraController>(
      () => CameraController(),
    );
    Get.lazyPut<CameraProvider>(
      () => CameraProvider(),
    );
  }
}
