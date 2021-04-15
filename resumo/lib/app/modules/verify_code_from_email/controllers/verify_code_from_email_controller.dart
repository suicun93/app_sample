import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

class VerifyCodeFromEmailController extends GetxController {
  final error = ''.obs;
  final code = ''.obs;
  final ready = true.obs;
  StreamController<ErrorAnimationType> errorController;
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
    errorController = StreamController<ErrorAnimationType>();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {}
}
