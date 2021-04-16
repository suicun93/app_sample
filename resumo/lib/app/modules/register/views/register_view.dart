import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../routes/app_pages.dart';
import '../controllers/register_controller.dart';

class RegisterView extends GetView<RegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('RegisterView'),
        centerTitle: true,
      ),
      body: Center(
        child: RaisedButton(
          onPressed: () => Get.offAllNamed(Routes.HOME),
          child: Text(
            'ホーム画面に行く',
            style: TextStyle(fontSize: 20),
          ),
        ),
      ),
    );
  }
}
