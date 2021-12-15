import 'package:flutter/material.dart';
import 'package:flutter_getx_2/controller/profile_controller.dart';
import 'package:get/get.dart';

class SecondPageProfileTab extends StatelessWidget {
  SecondPageProfileTab({Key? key}) : super(key: key);

  ProfileController profileController = Get.find<ProfileController>();

  @override
  Widget build(BuildContext context) {
    return Obx(
      () {
        if (profileController.dataAvailable == false) {
          return Container(
            alignment: Alignment.center,
            child: const SizedBox(
              height: 30,
              width: 30,
              child: CircularProgressIndicator(),
            ),
          );
        }
        return Container(
          alignment: Alignment.center,
          // child: const Text("SecondPage ProfilePage"),
          child: ListView.builder(
            itemCount: profileController.listUser.length,
            itemBuilder: (context, index) {
              return ListTile(
                leading: Text("$index"),
                title: Text("${profileController.listUser[index].name}"),
                subtitle: Text("${profileController.listUser[index].email}"),
              );
            },
          ),
        );
      },
    );
  }
}
