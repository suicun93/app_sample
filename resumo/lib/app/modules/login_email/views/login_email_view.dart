import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../controllers/login_email_controller.dart';

class LoginEmailView extends GetView<LoginEmailController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('LoginEmailView'),
        centerTitle: true,
      ),
      body: Center(
        child: Text(
          'LoginEmailView is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
