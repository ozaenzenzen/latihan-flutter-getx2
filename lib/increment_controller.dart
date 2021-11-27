import 'package:get/get.dart';
import 'package:get/state_manager.dart';

class IncrementController extends GetxController {
  var count = 0.obs;

  increment() => count.value++;
}
