import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/camera_controller.dart';

class CameraView extends GetView<CameraController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Camera'),
      ),
      body: Center(
        child: Text('Camera'),
      ),
    );
  }
}
