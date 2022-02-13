import 'package:breeze_ride/cruise_detail.dart';
import 'package:flutter/material.dart';

class Cruise extends StatefulWidget {
  const Cruise({Key? key}) : super(key: key);

  @override
  _CruiseState createState() => _CruiseState();
}

class _CruiseState extends State<Cruise> {
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
                    SizedBox(height: 10,),
                    const Padding(
                      padding: EdgeInsets.all(8.0),
                      child: Text(
                        'Boat Cruises',
                        style: TextStyle(fontWeight: FontWeight.w700, color: Colors.white, fontSize: 20),
                      ),
                    ),
                    ListView(
                      shrinkWrap: true,
                      scrollDirection: Axis.vertical,
                      children: [
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CruiseDetail()));
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CruiseDetail()));
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CruiseDetail()));
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CruiseDetail()));
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CruiseDetail()));
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
                        GestureDetector(
                          onTap: () {
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => const CruiseDetail()));
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
                      ],
                    )
                  ],
                ),
              )
            ],
          )
      ),
    );
  }
}
