import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../common/const.dart';
import '../../../common/toast.dart';
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
                decoration: InputDecoration(
                  border: OutlineInputBorder(),
                  hintText: '携帯電話番号',
                  hintStyle: TextStyle(color: Colors.black26),
                ),
              ),
              SizedBox(height: 30),
              controller.phoneNumber.value.isPhoneNumber
                  ? Container()
                  : Padding(
                      padding: const EdgeInsets.only(bottom: 30),
                      child: Text(
                        '9桁の携帯電話番号を入力してください',
                        style: TextStyle(color: Colors.pink),
                      ),
                    ),
              FlatButton(
                disabledColor: primaryColor.withAlpha(100),
                color: primaryColor,
                height: 50,
                child: Text('認証コードを送信する'),
                onPressed: !controller.phoneNumber.value.isPhoneNumber
                    ? null
                    : () => toast(content: 'Chua lam'),
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
              FlatButton(
                disabledColor: primaryColor.withAlpha(100),
                color: primaryColor,
                height: 50,
                child: Text('メールアドレスを入力する'),
                onPressed: () => controller.toLoginEmail(),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
