import 'package:flutter/material.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {


  @override
  Widget build(BuildContext context) {
    return const Center(
      child: Scaffold(
        body: Text("Settings", style: TextStyle(
            fontWeight: FontWeight.w900,
            fontSize: 24,
            fontFamily: 'Mulish')),
      ),
    );
  }
}
