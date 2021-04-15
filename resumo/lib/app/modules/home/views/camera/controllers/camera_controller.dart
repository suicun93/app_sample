import 'package:get/get.dart';

import '../../../../../common/my_getx_controller.dart';
import '../data/camera_provider.dart';

class CameraController extends MyGetXController<CameraProvider> {
  final ready = false.obs;
  final error = false.obs;

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() async {
    super.onReady();
  }

  @override
  void onClose() {}

  loadClones() async {}
}
