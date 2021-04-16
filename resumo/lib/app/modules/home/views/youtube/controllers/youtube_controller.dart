import 'package:get/get.dart';

import '../../../../../common/my_getx_controller.dart';
import '../data/youtube_provider.dart';

class YoutubeController extends MyGetXController<YoutubeProvider> {
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
