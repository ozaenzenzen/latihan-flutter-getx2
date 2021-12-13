import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_getx_2/controller/apptheme_controller.dart';
import 'package:flutter_getx_2/controller/incredecre_controller.dart';
import 'package:flutter_getx_2/controller/product_controller.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter_fam_plugin_1/profilepage.dart';

class SecondPage extends StatefulWidget {
  const SecondPage({Key? key}) : super(key: key);

  @override
  _SecondPageState createState() => _SecondPageState();
}

class _SecondPageState extends State<SecondPage> {
  ScreenUtil screenUtil = ScreenUtil();
  // final appThemeController = Get.put(AppThemeController());
  // final appThemeController = Get.find();

  IncreDecreController controller = Get.find<IncreDecreController>();
  AppThemeController appThemeController = Get.find<AppThemeController>();
  ProductController productController = Get.find<ProductController>();

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Second Page"),
          backgroundColor: appThemeController.currentColor.value,
          elevation: 0,
        ),
        body: ListView.builder(
          itemCount: productController.data.length,
          // itemCount: productController.items.length,
          itemBuilder: (context, index) {
            return ListTile(
              title: Text("${productController.data[index].name}"),
              subtitle: Text("${productController.data[index].description}"),
              leading: Icon(
                Icons.apps,
                size: screenUtil.setSp(30),
              ),
              onTap: () {
                Get.to(
                  () => const ProfilePage(),
                  arguments: {
                    'title': productController.data[index].name,
                    'subtitle': productController.data[index].description,
                  },
                );
              },
            );
          },
        ),
      );
    });
  }
}
