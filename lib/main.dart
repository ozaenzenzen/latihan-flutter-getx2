import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'homepage.dart';

void main(){
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({ Key? key }) : super(key: key);

  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  @override
  Widget build(BuildContext context) {
    return const GetMaterialApp(
      home: HomePage(),
      title: 'Train Getx 2',
      debugShowCheckedModeBanner: false,
    );
  }
}