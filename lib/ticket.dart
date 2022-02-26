import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import 'package:barcode_widget/barcode_widget.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:intl/intl.dart';

import 'controllers/bottom_bar_controller.dart';

class Ticket extends StatelessWidget {
  final BottomBarController bottomBarController =
      Get.put(BottomBarController());
  Map<dynamic, dynamic> ticket = {};

  Ticket({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    ticket = bottomBarController.ticketData;
    return Center(
      child: Scaffold(
        body: SingleChildScrollView(
          child: Stack(
            children: [
              Container(
                color: Colors.teal,
                height: 300,
                width: MediaQuery.of(context).size.width,
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 50,
                  ),
                  const Text(
                    "Boarding Pass",
                    style: TextStyle(
                        fontWeight: FontWeight.w700,
                        color: Colors.white,
                        fontSize: 20),
                  ),
                  Container(
                    margin: const EdgeInsets.fromLTRB(20, 20, 20, 3),
                    padding: const EdgeInsets.all(20),
                    decoration: const BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.only(
                          topRight: Radius.circular(30),
                          topLeft: Radius.circular(30),
                        )),
                    child: Column(
                      children: [
                        Row(
                            mainAxisAlignment: MainAxisAlignment.start,
                            children: [
                              Container(
                                  height: 50,
                                  width: 50,
                                  decoration: const BoxDecoration(
                                    shape: BoxShape.circle,
                                    image: DecorationImage(
                                        image: AssetImage(
                                            'assets/images/profile.png'),
                                        fit: BoxFit.fill),
                                  )),
                              const SizedBox(
                                width: 10,
                              ),
                              Column(
                                mainAxisAlignment: MainAxisAlignment.start,
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children:  [
                                  Text(
                                    "${ticket['passenger']!['first_name']} ${ticket['passenger']!['last_name']}",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w700),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  const Text(
                                    "Passenger",
                                    style:
                                        TextStyle(fontWeight: FontWeight.w300),
                                  ),
                                ],
                              )
                            ]),
                        const Divider(
                          height: 60,
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        Row(
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text(
                                  "${ticket['from']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "${ticket['from_description']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black26,
                                      fontSize: 10),
                                )
                              ],
                            ),
                            Stack(
                              children: [
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: const [
                                    SizedBox(
                                      width: 100,
                                      height: 40,
                                      child: Center(
                                        child: Divider(
                                          thickness: 1,
                                          color: Colors.black12,
                                        ),
                                      ),
                                    ),
                                  ],
                                ),
                                SizedBox(
                                  width: 100,
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    children: [
                                      Container(
                                        height: 40,
                                        width: 40,
                                        decoration: const BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: Colors.teal),
                                        child: Center(
                                          child: Image.asset(
                                            "assets/images/motor-powered-boat.png",
                                            width: 24,
                                          ),
                                        ),
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                Text(
                                  "${ticket['to']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,
                                      fontSize: 20),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                 Text(
                                   "${ticket['to_description']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black26,
                                      fontSize: 10),
                                )
                              ],
                            ),
                          ],
                        ),
                        const SizedBox(
                          height: 40,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(14, 10, 14, 10),
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black12, width: 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: Center(
                                      child: SvgPicture.asset(
                                        "assets/images/calendar-outline.svg",
                                        width: 24,
                                      ),
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  const Text(
                                    "Date",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black45),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                   Text(
                                       DateFormat('dd MMM yyyy')
                                           .format(DateTime.parse(
                                           ticket['departure_time'])),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black87),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              width: 20,
                            ),
                            Container(
                              padding:
                                  const EdgeInsets.fromLTRB(14, 10, 14, 10),
                              width: 135,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(10),
                                border:
                                    Border.all(color: Colors.black12, width: 1),
                              ),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  SizedBox(
                                    height: 40,
                                    child: SvgPicture.asset(
                                      "assets/images/time-outline.svg",
                                      width: 24,
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 14,
                                  ),
                                  const Text(
                                    "Time",
                                    style: TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w300,
                                        color: Colors.black45),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                   Text(
                                    DateFormat('HH:mm a')
                                        .format(DateTime.parse(
                                        ticket['departure_time'])),
                                    style: const TextStyle(
                                        fontSize: 16,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.black87),
                                  ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                ],
                              ),
                            ),
                          ],
                        ),
                        const Divider(
                          height: 80,
                          thickness: 1,
                          color: Colors.black12,
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: const [
                                Text(
                                  "Seat",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black26,
                                      fontSize: 12),
                                ),
                                SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "Any",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children:  [
                                const Text(
                                  "Trip No.",
                                  style: TextStyle(
                                      fontWeight: FontWeight.w700,
                                      color: Colors.black26,
                                      fontSize: 12),
                                ),
                                const SizedBox(
                                  height: 2,
                                ),
                                Text(
                                  "${ticket['schedule_id']}",
                                  style: const TextStyle(
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black87,
                                      fontSize: 20),
                                ),
                              ],
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                  Container(
                      margin: const EdgeInsets.fromLTRB(20, 0, 20, 0),
                      padding: const EdgeInsets.all(20),
                      decoration: const BoxDecoration(
                          color: Colors.white,
                          borderRadius: BorderRadius.only(
                            bottomLeft: Radius.circular(20),
                            bottomRight: Radius.circular(20),
                          )),
                      child: Column(children: [
                        BarcodeWidget(
                          barcode: Barcode.code128(escapes: true),
                          // Barcode type and settings
                          data: "${ticket['schedule_id']}",
                          // Content
                          width: 400,
                          height: 100,
                        ),
                      ]))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
