import 'package:flutter/material.dart';
import 'package:flutter_getx_2/apptheme_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  ScreenUtil screenUtil = ScreenUtil();
  final appThemeController = Get.put(AppThemeController());
  // final appThemeController = Get.find();

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
