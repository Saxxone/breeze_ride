import 'package:flutter/material.dart';

class BottomBarWidget extends StatefulWidget {
  const BottomBarWidget({Key? key}) : super(key: key);

  @override
  _BottomBarWidgetState createState() => _BottomBarWidgetState();
}

class _BottomBarWidgetState extends State<BottomBarWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
        child: BottomNavigationBar(
            elevation: 0,
            selectedItemColor: Colors.amberAccent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            type: BottomNavigationBarType.shifting,
            items: const <BottomNavigationBarItem>[
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.home_filled,
                    color: Colors.black54,
                  ),
                  label: 'Home',
                  tooltip: 'Home'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.trip_origin,
                  color: Colors.black54,
                ),
                label: 'Trip',
                tooltip: 'Trip',
              ),
              BottomNavigationBarItem(
                  icon: Icon(
                    Icons.list_alt,
                    color: Colors.black54,
                  ),
                  label: 'Tour',
                  tooltip: 'Tour'),
              BottomNavigationBarItem(
                icon: Icon(
                  Icons.settings,
                  color: Colors.black54,
                ),
                label: 'Settings',
                tooltip: 'Settings',
              ),
            ]),
    );
  }
}
