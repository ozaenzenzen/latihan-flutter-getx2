import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class IncreDecreController extends GetxController {
  var count1 = 0.obs;
  int count2 = 0;


  increment1() => count1.value++;

  decrement1() => count1.value--;

  increment2(){
    count2++;
    update();
  }

  decrement2(){
    count2--;
    update();
  }
}
