import 'package:breeze_ride/settings.dart';
import 'package:breeze_ride/ticket.dart';
import 'package:breeze_ride/cruise.dart';
import 'package:breeze_ride/trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class Interstitial extends StatefulWidget {
  final int index;

  const Interstitial({Key? key, required this.index}) : super(key: key);

  @override
  _InterstitialState createState() => _InterstitialState();
}

class _InterstitialState extends State<Interstitial> {
  @override
  Widget build(BuildContext context) {
    int selectedIndex = widget.index;
    List<Widget> widgetOptions = <Widget>[
      const Home(),
      const Trip(),
      const Cruise(),
      const Settings(),
      const Ticket(),
    ];

    void onTabTapped(index) {
      setState(() {
        selectedIndex = index;
        if (selectedIndex == 0) {
          Navigator.push(
              context,
              MaterialPageRoute(
                  builder: (context) =>
                      widgetOptions.elementAt(selectedIndex)));
        }
      });
    }

    return Scaffold(
      body: widgetOptions.elementAt(selectedIndex),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.tealAccent,
          showSelectedLabels: false,
          backgroundColor: Colors.black,
          showUnselectedLabels: false,
          onTap: onTabTapped,
          type: BottomNavigationBarType.shifting,
          items: <BottomNavigationBarItem>[
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
                  "assets/images/boat-outline.svg",
                  fit: BoxFit.fitWidth,
                  width: 20,
                ),
                label: 'Cruise',
                tooltip: 'Cruise'),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/planet-outline.svg",
                  fit: BoxFit.fitWidth,
                  width: 20,
                ),
                label: 'Cruise',
                tooltip: 'Cruise'),
            BottomNavigationBarItem(
              icon: SvgPicture.asset(
                "assets/images/settings-outline.svg",
                fit: BoxFit.fitWidth,
                width: 20,
              ),
              label: 'Settings',
              tooltip: 'Settings',
            ),
          ]),
    );
  }
}
