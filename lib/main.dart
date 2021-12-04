import 'package:flutter/material.dart';
import 'package:flutter_getx_2/apptheme_controller.dart';
import 'package:flutter_getx_2/constants.dart';
import 'package:flutter_getx_2/incredecre_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import 'homepage.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  bool isChanged = false;

  @override
  Widget build(BuildContext context) {
    return ScreenUtilInit(
      builder: () {
        return GetMaterialApp(
          home: const HomePage(),
          title: 'Train Getx 2',
          debugShowCheckedModeBanner: false,
          theme: appThemeData,
          defaultTransition: Transition.cupertino,
          // onInit: () {
          //   Get.put(IncreDecreController());
          //   Get.put(AppThemeController());
          // },
        );
      },
    );
  }
}
