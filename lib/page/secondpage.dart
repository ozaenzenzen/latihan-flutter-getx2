import 'package:flutter/material.dart';
import 'package:flutter_getx_2/controller/apptheme_controller.dart';
import 'package:flutter_getx_2/controller/incredecre_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  ScreenUtil screenUtil = ScreenUtil();
  // final appThemeController = Get.put(AppThemeController());
  // final appThemeController = Get.find();

  IncreDecreController controller = Get.find<IncreDecreController>();
  AppThemeController appThemeController = Get.find<AppThemeController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
          backgroundColor: appThemeController.currentColor.value,
        ),
      );
    });
  }
}
