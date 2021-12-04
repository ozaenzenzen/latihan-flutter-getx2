import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'dart:math';

class AppThemeController extends GetxController {
  bool isActive = true;

  List<Color> appColor = [
    Colors.pink,
    Colors.red,
    Colors.teal,
    Colors.purpleAccent,
    Colors.orange,
  ];

  Rx<Color> currentColor = Colors.blue.obs;

  var base = 0;

  Random random = Random();

  void activatedTheme() {
    currentColor = Rx<Color>(appColor[random.nextInt(5)]);
    // base = RxInt(random.nextInt(5));
    update();
  }
}
