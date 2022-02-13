import 'package:breeze_ride/home.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Breeze Ride',
      theme: ThemeData(
        fontFamily: 'Mulish',
        primarySwatch: Colors.teal,
      ),
      home: const SafeArea(child:  Home()),
    );
  }
}
