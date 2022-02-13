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
          body: Column(
        children: [
          Text(
            'Boat Cruises',
            style: TextStyle(
                color: Colors.black87,
                fontSize: 20,
                fontWeight: FontWeight.w900),
          ),
          ListView(
            children: [
              Container(
                padding: EdgeInsets.all(16),
                margin: EdgeInsets.all(16),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(40),
                    color: Colors.white),
                child: Column(
                  children: [
                    Image.asset("", fit: BoxFit.contain, height: 300,),
                    Row(
                      children: [
                        Text("Banana Boat")
                      ],
                    )
                  ],
                ),
              )
            ],
          )
        ],
      )),
    );
  }
}
