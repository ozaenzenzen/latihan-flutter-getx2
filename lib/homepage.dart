import 'package:flutter/material.dart';
import 'package:flutter_getx_2/increment_controller.dart';
import 'package:get/get.dart';
import 'package:google_fonts/google_fonts.dart';

class HomePage extends StatefulWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  final IncrementController incrementController =
      Get.put(IncrementController());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(
          "Train Getx 2",
          style: GoogleFonts.poppins(),
        ),
        backgroundColor: Colors.green.shade800,
        centerTitle: true,
      ),
      body: Container(
        alignment: Alignment.center,
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "Obx: ",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
                Obx(() {
                  return Text(
                    "Increment counter: ${incrementController.count1.value}",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  );
                }),
              ],
            ),
            const SizedBox(height: 10),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(
                  "GetBuilder: ",
                  style: GoogleFonts.poppins(
                    fontSize: 20,
                  ),
                ),
                GetBuilder(
                  init: IncrementController(),
                  builder: (controller) => Text(
                    "Increment counter: ${incrementController.count2}",
                    style: GoogleFonts.poppins(
                      fontSize: 20,
                    ),
                  ),
                ),
              ],
            ),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade800,
              ),
              onPressed: () {
                incrementController.increment1();
                incrementController.increment2();
              },
              child: Text(
                "Add",
                style: GoogleFonts.poppins(),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
