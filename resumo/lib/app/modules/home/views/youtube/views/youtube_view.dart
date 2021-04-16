import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/youtube_controller.dart';

class YoutubeView extends GetView<YoutubeController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Youtube'),
      ),
      body: Center(
        child: Text('Youtube'),
      ),
    );
  }
}
