import 'package:get/get.dart';

import '../controllers/home_controller.dart';
import '../views/camera/controllers/camera_controller.dart';
import '../views/camera/data/camera_provider.dart';
import '../views/gym/controllers/gym_controller.dart';
import '../views/gym/data/gym_provider.dart';
import '../views/home_main/controllers/home_main_controller.dart';
import '../views/home_main/data/home_main_provider.dart';
import '../views/personal/controllers/personal_controller.dart';
import '../views/personal/data/personal_provider.dart';
import '../views/youtube/controllers/youtube_controller.dart';
import '../views/youtube/data/youtube_provider.dart';

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

    // Camera
    Get.lazyPut<YoutubeController>(
      () => YoutubeController(),
    );
    Get.lazyPut<YoutubeProvider>(
      () => YoutubeProvider(),
    );

    // Camera
    Get.lazyPut<GymController>(
      () => GymController(),
    );
    Get.lazyPut<GymProvider>(
      () => GymProvider(),
    );

    // Camera
    Get.lazyPut<PersonalController>(
      () => PersonalController(),
    );
    Get.lazyPut<PersonalProvider>(
      () => PersonalProvider(),
    );
  }
}
