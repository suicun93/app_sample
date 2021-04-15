import 'dart:async';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';
import 'package:resumo/app/common/toast.dart';
import 'package:resumo/app/routes/app_pages.dart';

import '../../../common/my_getx_controller.dart';
import '../data/verify_code_from_email_provider.dart';

class VerifyCodeFromEmailController
    extends MyGetXController<VerifyCodeFromEmailProvider> {
  final error = ''.obs;
  final code = ''.obs;
  final ready = true.obs;
  final count = 60.obs;
  // ignore: close_sinks
  final errorController = StreamController<ErrorAnimationType>();
  TextEditingController textEditingController = TextEditingController();

  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
    countDown();
  }

  @override
  void onClose() {}

  void countDown() async {
    do {
      await Future.delayed(Duration(seconds: 1), () => count.value--);
    } while (count.value > 0);
  }

  confirmCode() async {
    ready.value = false;
    error.value = '';
    // final response = await provider.checkEmailExist(email.value);
    await Future.delayed(Duration(seconds: 2));
    ready.value = true;

    // Lỗi mạng
    // if (!response.isOk) {
    //   error.value = response.statusText;
    //   return;
    // }

    // // Lỗi server
    // if (response.body.message != 'Operation successfully') {
    //   error.value = response.body.message;
    //   return;
    // }

    if (false) {
      error.value = 'Sai passcode';
      toast(content: error.value);
      return;
    }

    // Success => Add all new services vao list
    Get.offAllNamed(Routes.HOME);
  }
}
