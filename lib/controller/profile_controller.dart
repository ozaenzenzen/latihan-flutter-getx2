import 'package:flutter_getx_2/model/profile_model.dart';
import 'package:flutter_getx_2/services/profile_services.dart';
import 'package:get/get.dart';

class ProfileController extends GetxController {
  // final List profile = [];
  var _listUser;
  var _profileModel;
  var _dataAvailable = false.obs;

  bool get dataAvailable => _dataAvailable.value;
  ProfileModel get profileModel => _profileModel;
  List get listUser => _listUser;

  // ProfileController() {
  Future getDataProfileController() async {
    // final List data = await ProfileServices.profileServices.getDataProfile();
    // profile.add(ProfileServices.profileServices.getDataProfile());
    // return data;
    return ProfileServices.profileServices
        .getDataProfile()
        .then((response) {
          if (response != null) {
            _listUser = (response as List).map((e) => ProfileModel.fromJson(e)).toList();
            // print("List User controller: ${_listUser}");
          }
        })
        .catchError((error) => print(error))
        .whenComplete(() => _dataAvailable.value = true);
  }

  @override
  void onInit() {
    getDataProfileController();
    // print(profile);
    super.onInit();
  }
}
