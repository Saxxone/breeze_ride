import 'package:breeze_ride/controllers/bottom_bar_controller.dart';
import 'package:breeze_ride/cruise_detail.dart';
import 'package:breeze_ride/settings.dart';
import 'package:breeze_ride/ticket.dart';
import 'package:breeze_ride/schedule_cruise.dart';
import 'package:breeze_ride/schedule_trip.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:get/get.dart';

import 'home.dart';

class Interstitial extends StatelessWidget {
  final BottomBarController bottomBarController =
      Get.put(BottomBarController());

  Interstitial({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<Widget> widgetOptions = <Widget>[
      Home(),
      Trip(),
      Cruise(),
      const Settings(),
      Ticket(),
      const CruiseDetail(),
    ];

    return Scaffold(
        body:
            Obx(() => widgetOptions.elementAt(bottomBarController.index.value)),
        bottomNavigationBar: bottomBarController.index.value > 0
            ? BottomNavigationBar(
                elevation: 1,
                selectedItemColor: Colors.tealAccent,
                showSelectedLabels: false,
                backgroundColor: Colors.black,
                showUnselectedLabels: false,
                onTap: (index) {
                  bottomBarController.navigateToScreen(index);
                },
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
                        tooltip: 'Trip'),
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
                  ])
            : null);
  }
}
