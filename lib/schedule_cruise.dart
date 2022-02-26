import 'package:breeze_ride/interstitial.dart';
import 'package:flutter/material.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';

import 'controllers/bottom_bar_controller.dart';

class Cruise extends StatelessWidget {
  final BottomBarController bottomBarController =
      Get.put(BottomBarController());

  Cruise({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
          body: Stack(
        children: [
          Container(
            color: Colors.teal,
            height: 180,
            width: MediaQuery.of(context).size.width,
          ),
          SingleChildScrollView(
            child: Column(
              children: [
                const SizedBox(
                  height: 10,
                ),
                const Padding(
                  padding: EdgeInsets.all(8.0),
                  child: Text(
                    'Boat Cruises',
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                ),
                ListView(
                  shrinkWrap: true,
                  scrollDirection: Axis.vertical,
                  children: [
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          bottomBarController.navigateToScreen(5);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Interstitial()));
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 30),
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/yacht.png",
                                fit: BoxFit.contain,
                                height: 120,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Banana Boat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "₦60,000/hr",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          bottomBarController.navigateToScreen(5);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Interstitial()));
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 30),
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/yacht.png",
                                fit: BoxFit.contain,
                                height: 120,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Banana Boat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "₦60,000/hr",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          bottomBarController.navigateToScreen(5);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Interstitial()));
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 30),
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/yacht.png",
                                fit: BoxFit.contain,
                                height: 120,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Banana Boat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "₦60,000/hr",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                    Container(
                      margin: const EdgeInsets.all(10),
                      child: GestureDetector(
                        onTap: () {
                          bottomBarController.navigateToScreen(5);
                          Navigator.push(
                              context,
                              MaterialPageRoute(
                                  builder: (context) => Interstitial()));
                        },
                        child: Container(
                          padding: const EdgeInsets.fromLTRB(20, 16, 20, 30),
                          margin: const EdgeInsets.all(16),
                          decoration: BoxDecoration(
                              borderRadius: BorderRadius.circular(40),
                              color: Colors.white),
                          child: Column(
                            children: [
                              Image.asset(
                                "assets/images/yacht.png",
                                fit: BoxFit.contain,
                                height: 120,
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              Row(
                                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                children: const [
                                  Text(
                                    "Banana Boat",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w700,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                  Text(
                                    "₦60,000/hr",
                                    style: TextStyle(
                                        fontWeight: FontWeight.w400,
                                        fontSize: 18,
                                        color: Colors.black),
                                  ),
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ),
                  ],
                )
              ],
            ),
          )
        ],
      )),
    );
  }
}
