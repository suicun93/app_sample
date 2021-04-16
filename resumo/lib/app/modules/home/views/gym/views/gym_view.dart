import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/gym_controller.dart';

class GymView extends GetView<GymController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Gym'),
      ),
      body: Center(
        child: Text('Gym'),
      ),
    );
  }
}
