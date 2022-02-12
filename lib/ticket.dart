import 'package:breeze_ride/settings.dart';
import 'package:breeze_ride/tour.dart';
import 'package:breeze_ride/trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import 'home.dart';

class Ticket extends StatefulWidget {
  const Ticket({Key? key}) : super(key: key);

  @override
  _TicketState createState() => _TicketState();
}

class _TicketState extends State<Ticket> {
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
            context,
            MaterialPageRoute(
                builder: (context) => widgetOptions.elementAt(selectedIndex)));
      });
    }

    return Scaffold(
      body: Text("Ticket"),
      bottomNavigationBar: BottomNavigationBar(
          elevation: 0,
          selectedItemColor: Colors.tealAccent,
          showSelectedLabels: false,
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
              label: 'Trip',
              tooltip: 'Trip',
            ),
            BottomNavigationBarItem(
                icon: SvgPicture.asset(
                  "assets/images/planet-outline.svg",
                  fit: BoxFit.fitWidth,
                  width: 20,
                ),
                label: 'Tour',
                tooltip: 'Tour'),
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
