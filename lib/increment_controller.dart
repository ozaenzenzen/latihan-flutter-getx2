import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class IncrementController extends GetxController {
  var count1 = 0.obs;
  int count2 = 0;


  increment1() => count1.value++;

  increment2(){
    count2++;
    update();
  }
}
