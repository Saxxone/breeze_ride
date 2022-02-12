import 'package:breeze_ride/home.dart';
import 'package:breeze_ride/tour.dart';
import 'package:breeze_ride/trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Settings extends StatefulWidget {
  const Settings({Key? key}) : super(key: key);

  @override
  _SettingsState createState() => _SettingsState();
}

class _SettingsState extends State<Settings> {
  int selectedIndex = 0;

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      const Home(),
      const Trip(),
      const Tour(),
      const Settings(),
    ];

    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
        Navigator.push(
            context, MaterialPageRoute(builder: (context) => widgetOptions.elementAt(selectedIndex)));
      });
    }
    return Scaffold(
      body: Text("Settings"),
      bottomNavigationBar: BottomNavigationBar(
        elevation: 0,
        selectedItemColor: Colors.tealAccent,
        showSelectedLabels: false,
        showUnselectedLabels: false,
        onTap: onTabTapped,
        type: BottomNavigationBarType.shifting,
        items:  <BottomNavigationBarItem>[
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/home-outline.svg",
                fit: BoxFit.fitWidth,
                width: 20,
              ),
              label: 'Home',
              tooltip: 'Home'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/boat-outline.svg", fit: BoxFit.fitWidth,
                width: 20,
              
            ),
            label: 'Trip',
            tooltip: 'Trip',
          ),
          BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/planet-outline.svg", fit: BoxFit.fitWidth,
                width: 20,
              ),
              label: 'Tour',
              tooltip: 'Tour'),
          BottomNavigationBarItem(
            icon: SvgPicture.asset(
              "assets/images/settings-outline.svg", fit: BoxFit.fitWidth,
                width: 20,
            ),
            label: 'Settings',
            tooltip: 'Settings',
          ),
        ]),
    );
  }
}
