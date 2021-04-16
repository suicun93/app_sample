import 'package:get/get.dart';

import '../../../../../common/my_getx_controller.dart';
import '../data/personal_provider.dart';

class PersonalController extends MyGetXController<PersonalProvider> {
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
