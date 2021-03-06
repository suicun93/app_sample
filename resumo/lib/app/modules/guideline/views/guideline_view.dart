import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/guideline_controller.dart';

class GuidelineView extends GetView<GuidelineController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Man hinh Guideline'),
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () async => Get.offAndToNamed(Routes.LOGIN),
          child: Text(
            'ログイン画面に行く',
          ),
        ),
      ),
    );
  }
}
