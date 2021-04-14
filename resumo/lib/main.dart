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
          brightness: Brightness.dark,
        ),
      ),
    ),
  );
}
