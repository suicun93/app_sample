import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:pin_code_fields/pin_code_fields.dart';

import '../../../views/views/loading_view.dart';
import '../controllers/verify_code_from_phone_not_register_controller.dart';

class VerifyCodeFromPhoneNotRegisterView
    extends GetView<VerifyCodeFromPhoneNotRegisterController> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('本人確認・ログイン'),
      ),
      body: Obx(
        () => Stack(
          fit: StackFit.expand,
          children: [
            Padding(
              padding: const EdgeInsets.all(20),
              child: ListView(
                children: [
                  Text(
                    '６桁のコードを入力してください。',
                    style: TextStyle(fontSize: 17, fontWeight: FontWeight.bold),
                  ),
                  SizedBox(height: 30),
                  Text(
                    '認証コードが09012345678に送信されました',
                    style: TextStyle(color: Colors.black26),
                  ),
                  SizedBox(height: 30),
                  PinCodeTextField(
                    appContext: context,
                    pastedTextStyle: TextStyle(
                      // color: Colors.green.shade600,
                      fontWeight: FontWeight.bold,
                    ),
                    length: 6,
                    obscureText: false,
                    // obscuringCharacter: '*',
                    // obscuringWidget: FlutterLogo(
                    //   size: 24,
                    // ),
                    blinkWhenObscuring: false,
                    animationType: AnimationType.fade,
                    validator: (v) {
                      if (v.length < 6) {
                        return null;
                      } else {
                        return null;
                      }
                    },
                    pinTheme: PinTheme(
                      shape: PinCodeFieldShape.box,
                      selectedColor: controller.code.value.length != 6
                          ? Colors.red
                          : Colors.black,
                      selectedFillColor: Colors.white,
                      inactiveColor: controller.code.value.length != 6
                          ? Colors.red
                          : Colors.black,
                      inactiveFillColor: Colors.white,
                      activeColor: controller.code.value.length != 6
                          ? Colors.red
                          : Colors.black,
                      activeFillColor: Colors.white,
                      borderWidth: 2,
                      borderRadius: BorderRadius.circular(0),
                      fieldHeight: 50,
                      fieldWidth: 40,
                    ),
                    // pinTheme: PinTheme.defaults(),
                    cursorColor: Colors.black,
                    animationDuration: Duration(milliseconds: 300),
                    enableActiveFill: true,
                    errorAnimationController: controller.errorController,
                    controller: controller.textEditingController,
                    keyboardType: TextInputType.number,
                    boxShadows: [
                      BoxShadow(
                        offset: Offset(0, 0),
                        color: Colors.black12,
                        blurRadius: 0,
                      )
                    ],
                    onCompleted: (_) async => controller.confirmCode(),
                    // onTap: () {
                    //   print("Pressed");
                    // },
                    onChanged: (value) {
                      controller.code.value = value;
                    },
                    beforeTextPaste: (text) {
                      print("Allowing to paste $text");
                      //if you return true then it will show the paste confirmation dialog. Otherwise if false, then nothing will happen.
                      //but you can show anything you want here, like your pop up saying wrong paste format or etc
                      return false;
                    },
                  ),
                  SizedBox(height: 30),
                  Row(
                    children: [
                      Text(
                        'コードを再送 ',
                        style: TextStyle(color: Color(0xff999999)),
                      ),
                      Text('${controller.count.value}s'),
                    ],
                  ),
                  SizedBox(height: 35),
                  Text('認証番号が届かない方'),
                  SizedBox(height: 15),
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text:
                              '認証コードがSMSに届かない場合は、SMS受信設定を確認してください。それでも届かない場合は、',
                          style: TextStyle(color: Color(0xff999999)),
                        ),
                        TextSpan(
                          text: 'お問い合わせ',
                          style: TextStyle(
                            color: Color(0xff1791b0),
                            decoration: TextDecoration.underline,
                          ),
                        ),
                        TextSpan(
                          text: 'ください｡',
                          style: TextStyle(color: Color(0xff999999)),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
            controller.ready.value
                ? Container()
                : Container(
                    color: Colors.white.withAlpha(150),
                    child: LoadingWidget(),
                  ),
          ],
        ),
      ),
    );
  }
}
