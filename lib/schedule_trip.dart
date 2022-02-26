import 'package:breeze_ride/controllers/schedule_controller.dart';
import 'package:breeze_ride/controllers/user_controller.dart';
import 'package:breeze_ride/interstitial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:get/get_core/src/get_main.dart';
import 'package:get/get_instance/src/extension_instance.dart';
import 'package:intl/intl.dart';

import 'controllers/bottom_bar_controller.dart';

class Trip extends StatelessWidget {
  final BottomBarController bottomBarController =
  Get.put(BottomBarController());
  final ScheduleController scheduleController = Get.put(ScheduleController());
  final UserController userController = Get.put(UserController());
  final TextEditingController startController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();
  late Future<List> schedule;

  makeBooking(data) {
    bottomBarController.makeBooking(data);
  }

  Trip({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    schedule = scheduleController.getSchedules();
    final startField = TextFormField(
      autofillHints: const [AutofillHints.location],
      controller: startController,
      keyboardType: TextInputType.text,
      // validator: () {},
      onSaved: (value) {
        startController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          isCollapsed: true,
          prefixIcon: IconButton(
            icon: SvgPicture.asset(
              "assets/images/search-outline.svg",
              fit: BoxFit.fitWidth,
              width: 20,
            ),
            onPressed: () {},
          ),
          contentPadding: const EdgeInsets.fromLTRB(14, 15, 20, 15),
          hintText: "From",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
    );
    final destinationField = TextFormField(
      autofocus: false,
      autofillHints: const [AutofillHints.location],
      controller: destinationController,
      keyboardType: TextInputType.text,
      // validator: () {},
      onSaved: (value) {
        destinationController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          isCollapsed: true,
          prefixIcon: IconButton(
            icon: SvgPicture.asset(
              "assets/images/search-outline.svg",
              fit: BoxFit.fitWidth,
              width: 20,
            ),
            onPressed: () {},
          ),
          contentPadding: const EdgeInsets.fromLTRB(14, 15, 20, 15),
          hintText: "Destination",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
    );
    return Scaffold(
        body: Stack(
          children: [
            Container(
              color: Colors.teal,
              height: 300,
              width: MediaQuery
                  .of(context)
                  .size
                  .width,
            ),
            Column(
              children: [
                const SizedBox(
                  height: 50,
                ),
                const Text(
                  "Book Trip",
                  style: TextStyle(
                      fontWeight: FontWeight.w700,
                      color: Colors.white,
                      fontSize: 20),
                ),
                // Container(
                //   margin: const EdgeInsets.fromLTRB(20, 20, 20, 3),
                //   padding: const EdgeInsets.all(20),
                //   decoration: BoxDecoration(
                //       color: Colors.white,
                //       borderRadius: BorderRadius.circular(30)),
                //   child: Column(
                //     children: [
                //       const SizedBox(
                //         height: 15,
                //       ),
                //       startField,
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       destinationField,
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       Row(
                //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                //         children: [
                //           Expanded(
                //             child: Container(
                //               padding: const EdgeInsets.fromLTRB(14, 10, 14,
                //                   10),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(10),
                //                 border: Border.all(
                //                     color: Colors.black12, width: 1),
                //               ),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: const [
                //                   Text(
                //                     "Departure",
                //                     style: TextStyle(
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w300,
                //                         color: Colors.black45),
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                   Text(
                //                     "09:00 am",
                //                     style: TextStyle(
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w900,
                //                         color: Colors.black87),
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //           const SizedBox(
                //             width: 20,
                //           ),
                //           Expanded(
                //             child: Container(
                //               padding: const EdgeInsets.fromLTRB(14, 10, 14,
                //                   10),
                //               decoration: BoxDecoration(
                //                 borderRadius: BorderRadius.circular(10),
                //                 border: Border.all(
                //                     color: Colors.black12, width: 1),
                //               ),
                //               child: Column(
                //                 crossAxisAlignment: CrossAxisAlignment.start,
                //                 children: const [
                //                   Text(
                //                     "Arrival",
                //                     style: TextStyle(
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w300,
                //                         color: Colors.black45),
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                   Text(
                //                     "11:00 am",
                //                     style: TextStyle(
                //                         fontSize: 16,
                //                         fontWeight: FontWeight.w900,
                //                         color: Colors.black87),
                //                   ),
                //                   SizedBox(
                //                     height: 5,
                //                   ),
                //                 ],
                //               ),
                //             ),
                //           ),
                //         ],
                //       ),
                //       const SizedBox(
                //         height: 20,
                //       ),
                //       Material(
                //         elevation: 0,
                //         borderRadius: BorderRadius.circular(10),
                //         color: Colors.black87,
                //         textStyle: const TextStyle(
                //           fontFamily: 'Mulish',
                //         ),
                //         child: MaterialButton(
                //           padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                //           minWidth: MediaQuery
                //               .of(context)
                //               .size
                //               .width,
                //           onPressed: () {
                //             bottomBarController.navigateToScreen(4);
                //             Navigator.push(
                //                 context,
                //                 MaterialPageRoute(
                //                     builder: (context) => Interstitial()));
                //           },
                //           child: const Text(
                //             "Book",
                //             textAlign: TextAlign.center,
                //             style: TextStyle(
                //                 color: Colors.white,
                //                 fontWeight: FontWeight.bold,
                //                 fontSize: 20,
                //                 fontFamily: 'Mulish'),
                //           ),
                //         ),
                //       ),
                //     ],
                //   ),
                // ),
                SingleChildScrollView(
                  child: FutureBuilder<List>(
                    future: schedule,
                    builder:
                        (BuildContext context, AsyncSnapshot<List> snapshot) {
                      if (snapshot.hasData) {
                        return RefreshIndicator(
                          onRefresh: () {
                            return scheduleController.getSchedules();
                          },
                          child: ListView.builder(
                              scrollDirection: Axis.vertical,
                              shrinkWrap: true,
                              itemCount: snapshot.data?.length,
                              itemBuilder: (BuildContext context, int index) {
                                return GestureDetector(
                                  onTap: () {
                                    makeBooking(snapshot.data![index]);
                                  },
                                  child: Container(
                                    margin:
                                    const EdgeInsets.fromLTRB(20, 10, 20, 10),
                                    padding: const EdgeInsets.all(20),
                                    decoration: BoxDecoration(
                                      color: Colors.white,
                                      borderRadius: BorderRadius.circular(30),
                                    ),
                                    child: Column(
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Container(
                                              padding: const EdgeInsets.all(
                                                  10),
                                              decoration: BoxDecoration(
                                                  color: Colors.cyan[50],
                                                  borderRadius:
                                                  BorderRadius.circular(30)),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 14,
                                                    child: Center(
                                                      child: SvgPicture.asset(
                                                        "assets/images/calendar-outline.svg",
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(DateFormat(
                                                      'dd MMM yyyy')
                                                      .format(DateTime.parse(
                                                      snapshot.data![index][
                                                      'departure_time'])))
                                                ],
                                              ),
                                            ),
                                            Container(
                                              padding: const EdgeInsets.all(
                                                  10),
                                              decoration: BoxDecoration(
                                                  color: Colors.cyan[50],
                                                  borderRadius:
                                                  BorderRadius.circular(30)),
                                              child: Row(
                                                children: [
                                                  SizedBox(
                                                    height: 14,
                                                    child: Center(
                                                      child: SvgPicture.asset(
                                                        "assets/images/time-outline.svg",
                                                        width: 24,
                                                      ),
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 5,
                                                  ),
                                                  Text(DateFormat('HH:mm a')
                                                      .format(DateTime.parse(
                                                      snapshot.data![index][
                                                      'departure_time'])))
                                                ],
                                              ),
                                            ),
                                          ],
                                        ),
                                        const Divider(
                                          height: 60,
                                          thickness: 1,
                                          color: Colors.black12,
                                        ),
                                        Row(
                                          crossAxisAlignment:
                                          CrossAxisAlignment.center,
                                          mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                          children: [
                                            Column(
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  snapshot
                                                      .data![index]['from'],
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight
                                                          .w900,
                                                      color: Colors.black87,
                                                      fontSize: 20),
                                                ),
                                                const SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  snapshot.data![index]
                                                  ['from_description'],
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      color: Colors.black26,
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                            Stack(
                                              children: [
                                                Column(
                                                  mainAxisAlignment:
                                                  MainAxisAlignment.center,
                                                  crossAxisAlignment:
                                                  CrossAxisAlignment.center,
                                                  children: const [
                                                    SizedBox(
                                                      width: 100,
                                                      height: 40,
                                                      child: Center(
                                                        child: Divider(
                                                          thickness: 1,
                                                          color: Colors
                                                              .black12,
                                                        ),
                                                      ),
                                                    ),
                                                  ],
                                                ),
                                                SizedBox(
                                                  width: 100,
                                                  child: Row(
                                                    mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                    children: [
                                                      Container(
                                                        height: 40,
                                                        width: 40,
                                                        decoration:
                                                        const BoxDecoration(
                                                            shape: BoxShape
                                                                .circle,
                                                            color:
                                                            Colors.teal),
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
                                              crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                              children: [
                                                Text(
                                                  snapshot.data![index]['to'],
                                                  style: const TextStyle(
                                                      fontWeight: FontWeight
                                                          .w900,
                                                      color: Colors.black87,
                                                      fontSize: 20),
                                                ),
                                                const SizedBox(
                                                  height: 2,
                                                ),
                                                Text(
                                                  snapshot.data![index]
                                                  ['to_description'],
                                                  style: TextStyle(
                                                      fontWeight: FontWeight
                                                          .w700,
                                                      color: Colors.black26,
                                                      fontSize: 10),
                                                )
                                              ],
                                            ),
                                          ],
                                        ),
                                      ],
                                    ),
                                  ),
                                );
                              }),
                        );
                      } else if (snapshot.hasError) {
                        print("Error is ${snapshot.error}");
                        return const Center(
                          child: Text("An error occurred"),
                        );
                      }
                      return Center(
                        child: Column(
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            SizedBox(
                              height: 140,
                              child: Image.asset(
                                  "assets/images/nothing-to-show.jpg",
                                  fit: BoxFit.contain),
                            ),
                            const Text(
                                "You haven't made any transactions yet")
                          ],
                        ),
                      );
                    },
                  ),
                )
              ],
            ),
          ],
        ));
  }
}
