import 'package:breeze_ride/home.dart';
import 'package:breeze_ride/login.dart';
import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:get/get_navigation/src/root/get_material_app.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Breeze Ride',
      theme: ThemeData(
        fontFamily: 'Mulish',
        primarySwatch: Colors.teal,
      ),
      home: SafeArea(child: Login()),
    );
  }
}
