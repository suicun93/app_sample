import 'package:get/get.dart';

import '../../../../../common/my_getx_controller.dart';
import '../data/home_main_provider.dart';

class HomeMainController extends MyGetXController<HomeMainProvider> {
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
