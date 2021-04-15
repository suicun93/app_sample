import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/const.dart';
import '../../../views/views/loading_view.dart';
import '../controllers/login_email_controller.dart';

class LoginEmailView extends GetView<LoginEmailController> {
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
                'メールアドレスを入力してください。',
                style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
              ),
              SizedBox(height: 30),
              Text(
                '本人確認のため、入力したメールアドレスに認証コードが送信されます。',
                style: TextStyle(color: Colors.black26),
              ),
              SizedBox(height: 30),
              TextFormField(
                onChanged: (email) => controller.email.value = email,
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: 'メールアドレス',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              SizedBox(height: 30),
              controller.email.value.isEmail && controller.error.value.isEmpty
                  ? Container()
                  : InkWell(
                      onTap: controller.error.value.isEmpty
                          ? null
                          : () async => Get.back(),
                      child: Padding(
                        padding: const EdgeInsets.only(bottom: 30),
                        child: Text(
                          controller.error.value.isEmpty
                              ? '正しいメールアドレスを入力してください'
                              : controller.error.value,
                          style: TextStyle(
                            color: Colors.pink,
                            decoration: controller.error.value.isEmpty
                                ? TextDecoration.none
                                : TextDecoration.underline,
                          ),
                        ),
                      ),
                    ),
              SizedBox(
                width: double.infinity,
                height: 50,
                child: Stack(
                  fit: StackFit.expand,
                  children: [
                    FlatButton(
                      disabledColor: primaryColor.withAlpha(100),
                      color: primaryColor,
                      height: 50,
                      child: Text('認証コードを送信する'),
                      onPressed: (controller.ready.value &&
                              controller.email.value.isEmail)
                          ? () => Get.dialog(
                                CupertinoAlertDialog(
                                  title: Text(controller.email.value),
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
                                      onPressed: () => {
                                        Get.back(),
                                        controller.checkEmailExist(),
                                      },
                                    ),
                                  ],
                                ),
                              )
                          : null,
                    ),
                    controller.ready.value
                        ? Container()
                        : LoadingWidget(mini: true),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
