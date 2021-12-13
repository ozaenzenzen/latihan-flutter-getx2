import 'package:flutter_getx_2/services/profile_services.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  final List profile = [];

  // ProfileController() {
  getDataProfileController() {
    profile.add(ProfileServices.profileServices.getDataProfile());
  }
}
