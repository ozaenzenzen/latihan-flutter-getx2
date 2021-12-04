import 'package:flutter/material.dart';
import 'package:flutter_getx_2/apptheme_controller.dart';
import 'package:flutter_getx_2/incredecre_controller.dart';
import 'package:flutter_getx_2/secondpage.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  IncreDecreController? controller;
  AppThemeController? appThemeController;

  @override
  void initState() {
    controller = Get.put(IncreDecreController());
    appThemeController = Get.put(AppThemeController());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Obx(() {
      return Scaffold(
        appBar: AppBar(
          title: const Text("Train Getx 2"),
          backgroundColor: appThemeController!.currentColor.value,
        ),
        body: Container(
          alignment: Alignment.center,
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("Obx: "),
                  Obx(() {
                    return Text(
                        "Increment counter: ${controller!.count1.value}");
                  }),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  const Text("GetBuilder: "),
                  GetBuilder(
                    init: IncreDecreController(),
                    builder: (builderController) =>
                        Text("Increment counter: ${controller!.count2}"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade800,
                    ),
                    onPressed: () {
                      setState(() {
                        controller!.increment1();
                        controller!.increment2();
                      });
                    },
                    child: const Text("Add"),
                  ),
                  const SizedBox(width: 10),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      primary: Colors.green.shade800,
                    ),
                    onPressed: () {
                      setState(() {
                        controller!.decrement1();
                        controller!.decrement2();
                      });
                    },
                    child: const Text("Subtract"),
                  ),
                ],
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: appThemeController!.currentColor.value,
                  // primary: Colors.green.shade800,
                ),
                onPressed: () {
                  setState(() {
                    appThemeController!.activatedTheme();
                  });
                },
                child: const Text("Change AppBar Color"),
              ),
              const SizedBox(height: 10),
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.green.shade800,
                ),
                onPressed: () {
                  Get.to(() => const SecondPage());
                },
                child: const Text("Next Page"),
              ),
            ],
          ),
        ),
      );
    });
  }
}
