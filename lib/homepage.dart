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
            Obx(() {
              return Text(
                "Increment counter: ${incrementController.count.value}",
                style: GoogleFonts.poppins(
                  fontSize: 20,
                ),
              );
            }),
            const SizedBox(height: 10),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                primary: Colors.green.shade800,
              ),
              onPressed: () {
                incrementController.increment();
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
