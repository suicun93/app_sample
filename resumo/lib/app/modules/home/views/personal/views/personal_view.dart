import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/personal_controller.dart';

class PersonalView extends GetView<PersonalController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Setting'),
      ),
      body: Center(
        child: Text('Setting'),
      ),
    );
  }
}
