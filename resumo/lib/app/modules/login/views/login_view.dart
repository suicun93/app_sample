import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:resumo/app/views/views/loading_view.dart';

import '../../../common/const.dart';
import '../controllers/login_controller.dart';

class LoginView extends GetView<LoginController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('本人確認・ログイン'),
        elevation: 0,
      ),
      body: Obx(
        () => Padding(
          padding: const EdgeInsets.all(20),
          child: ListView(
            children: [
              Text(
                '携帯電話番号を入力してください。',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                '本人確認のため、携帯電話のSMS（ショートメッセージサービス）を利用して認証を行います。',
                style: TextStyle(color: Colors.black26),
              ),
              SizedBox(height: 30),
              TextFormField(
                onChanged: (value) => controller.phoneNumber.value = value,
                enabled: controller.ready.value,
                decoration: InputDecoration(
                  border: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1,
                    ),
                  ),
                  focusedBorder: UnderlineInputBorder(
                    borderSide: BorderSide(
                      color: Colors.black,
                      width: 1.5,
                    ),
                  ),
                  hintText: '携帯電話番号',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              SizedBox(height: 30),
              !controller.phoneNumber.value.isNotEmpty ||
                      controller.phoneNumber.value.isPhoneNumber
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        '9桁の携帯電話番号を入力してください',
                        style: TextStyle(color: Colors.pink),
                      ),
                    ),
              InkWell(
                onTap: (controller.ready.value &&
                        controller.phoneNumber.value.isPhoneNumber)
                    ? () => Get.dialog(
                          CupertinoAlertDialog(
                            title: Text(controller.phoneNumber.value),
                            content: Column(
                              children: [
                                SizedBox(height: 15),
                                Text('上記のメールアドレスに 認証コードが送信されます。'),
                                SizedBox(height: 10),
                              ],
                            ),
                            actions: [
                              CupertinoDialogAction(
                                child: Text('キャンセル'),
                                onPressed: () => Get.back(),
                              ),
                              CupertinoDialogAction(
                                child: Text('送る'),
                                onPressed: () async => {
                                  Get.back(),
                                  await controller.sendOTP(),
                                },
                              ),
                            ],
                          ),
                        )
                    : null,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: (controller.ready.value &&
                            controller.phoneNumber.value.isPhoneNumber)
                        ? primaryColor
                        : primaryColor.withAlpha(100),
                  ),
                  height: 50,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text('認証コードを送信する'),
                      controller.ready.value
                          ? Container()
                          : LoadingWidget(mini: true),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 30),
              true
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        'Lỗi',
                        style: TextStyle(color: Colors.pink),
                      ),
                    ),
              Text('すでに会員登録されている、または携帯番号を変更された方'),
              SizedBox(height: 30),
              InkWell(
                onTap: controller.ready.value
                    ? () => controller.toLoginEmail()
                    : null,
                child: Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(25),
                    color: controller.ready.value
                        ? primaryColor
                        : primaryColor.withAlpha(100),
                  ),
                  height: 50,
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Text('メールアドレスを入力する'),
                      controller.ready.value
                          ? Container()
                          : LoadingWidget(mini: true),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
