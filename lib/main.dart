import 'package:flutter/material.dart';
import 'package:flutter_getx_2/constants.dart';
import 'package:flutter_getx_2/controller/apptheme_controller.dart';
import 'package:flutter_getx_2/controller/incredecre_controller.dart';
import 'package:flutter_getx_2/controller/product_controller.dart';
import 'package:flutter_getx_2/controller/profile_controller.dart';
import 'package:flutter_getx_2/page/homepage.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  AppThemeController appThemeController = AppThemeController();

  int numberColor = 0;

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
          onInit: () {
            Get.put(IncreDecreController());
            Get.put(ProductController());
            Get.put(AppThemeController());
            Get.put(ProfileController());
            // Get.put(AppThemeController(number: snapshot.data!));
            // final prefs = await SharedPreferences.getInstance();
          },
        );
      },
    );
  }
}
