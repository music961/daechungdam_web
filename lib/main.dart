import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:responsive_builder/responsive_builder.dart';

import 'screens/screens.dart';

void main() {
  // debugDefaultTargetPlatformOverride = TargetPlatform.fuchsia;

  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      designSize: Size(1920, 1080),
      builder: () => GetMaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'nanum',
          primarySwatch: Colors.blue,
          scaffoldBackgroundColor: Colors.white,
        ),
        getPages: [
          GetPage(
              name: '/login',
              page: () => Login(),
              transitionDuration: Duration.zero),
          GetPage(
              name: '/home',
              page: () => Home(),
              transitionDuration: Duration.zero),
        ],
        initialRoute: '/login',
        home: Login(),
      ),
    );
  }
}
