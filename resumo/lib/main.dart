import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import 'app/common/const.dart';
import 'app/routes/app_pages.dart';

main() async {
  WidgetsFlutterBinding.ensureInitialized();

  SystemChrome.setSystemUIOverlayStyle(
    SystemUiOverlayStyle(
      statusBarColor: primaryColor,
    ),
  );

  runApp(
    GetMaterialApp(
      title: 'レスモー',
      initialRoute: AppPages.INITIAL,
      debugShowCheckedModeBanner: false,
      getPages: AppPages.routes,
      theme: ThemeData(
        primaryColor: primaryColor,
        accentColor: primaryColor,
        primaryColorBrightness: Brightness.dark,
        colorScheme: ColorScheme.light(primary: primaryColor),
        appBarTheme: AppBarTheme(
          brightness: Brightness.light,
          color: Color(0xfff7f7f7),
          centerTitle: true,
          iconTheme: IconThemeData(color: Colors.black),
          textTheme: TextTheme(
            title: TextStyle(
              color: Colors.black,
              fontWeight: FontWeight.bold,
            ),
          ),
          elevation: 0,
        ),
      ),
    ),
  );
}
