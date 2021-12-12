// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeController extends GetxController {
  List<Color> appColor = [
    Colors.limeAccent,
    Colors.red,
    Colors.teal,
    Colors.purpleAccent,
    Colors.orange,
    Colors.tealAccent,
    Colors.green,
    Colors.lightBlue,
    Colors.indigo,
  ];

  Rx<Color> currentColor = Colors.blue.obs;

  Future<int> nums() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('colorNumber')!;
  }

  colorNow() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isChanged = prefs.getBool('isChanged');

    // print(isChanged);
    if (isChanged == true) {
      currentColor.value = appColor[prefs.getInt('colorNumber')!];
      // print("current color: $currentColor");
    } else {
      currentColor.value = Colors.blue;
    }
    // update();
  }

  @override
  void onInit() {
    colorNow();
    super.onInit();
  }

  Random random = Random();

  void activatedTheme() async {
    int randomInt = random.nextInt(9);

    final prefs = await SharedPreferences.getInstance();

    currentColor = Rx<Color>(appColor[randomInt]);

    prefs.setBool('isChanged', true);
    prefs.setInt('colorNumber', randomInt);
    update();
  }
}
