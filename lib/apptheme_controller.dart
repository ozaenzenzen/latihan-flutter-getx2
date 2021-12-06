// ignore_for_file: avoid_print

import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class AppThemeController extends GetxController {
  // bool? isChanged = false;

  List<Color> appColor = [
    Colors.pink,
    Colors.red,
    Colors.teal,
    Colors.purpleAccent,
    Colors.orange,
  ];

  // Rx<Color> currentColor;
  Rx<Color> currentColor = Colors.blue.obs;

  Future<bool> changed() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getBool('isChanged')!;
  }

  Future<int> nums() async {
    final prefs = await SharedPreferences.getInstance();
    return prefs.getInt('colorNumber')!;
  }

  colorNow() async {
    final prefs = await SharedPreferences.getInstance();
    bool? isChanged = prefs.getBool('isChanged');

    print(isChanged);
    if (isChanged == true) {
      currentColor = Rx<Color>(appColor[prefs.getInt('colorNumber')!.toInt()]);
      print("current color: $currentColor");
    } else {
      currentColor = Colors.blue.obs;
    }
  }

  AppThemeController({int number = 0, bool isChanged = false}) {
    
    colorNow();
    currentColor = Rx<Color>(appColor[number]);
    
  }

  Random random = Random();

  void activatedTheme() async {
    int randomInt = random.nextInt(5);

    final prefs = await SharedPreferences.getInstance();

    currentColor = Rx<Color>(appColor[randomInt]);

    prefs.setBool('isChanged', true);
    prefs.setInt('colorNumber', randomInt);
    update();
  }
}
