import 'package:get/get.dart';

class AppThemeController extends GetxController{
  bool isActive = true;

  void activatedTheme(){
    isActive = !isActive;
    update();
  }
}