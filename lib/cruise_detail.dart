import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class CruiseDetail extends StatefulWidget {
  const CruiseDetail({Key? key}) : super(key: key);

  @override
  _CruiseDetailState createState() => _CruiseDetailState();
}

class _CruiseDetailState extends State<CruiseDetail> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            Navigator.pop(context);
          },
          child: Container(
            margin: EdgeInsets.all(6),
            padding: EdgeInsets.all(10),
            decoration: BoxDecoration(
                color: Colors.white, borderRadius: BorderRadius.circular(10)),
            child: SvgPicture.asset(
              "assets/images/arrow-back-outline.svg",
              width: 10,
              fit: BoxFit.contain,
            ),
          ),
        ),
      ),
      body: SingleChildScrollView(
        child:
        Padding(
          padding: const EdgeInsets.all(20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 70,),
              Text(
                "Banana Boat",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [Text("124ft")],
              ),
              SizedBox(
                height: 20,
              ),
              Image.asset(
                "assets/images/yacht.png",
                fit: BoxFit.contain,
                height: 300,
              ),
              SizedBox(
                height: 20,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "Price",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.black54,
                            fontFamily: "Mulish"),
                      ),
                      Text(
                        "₦60,000/hr",
                        style: TextStyle(
                            fontWeight: FontWeight.w900,
                            fontSize: 22,
                            fontFamily: "Mulish",
                            color: Colors.black87),
                      ),
                    ],
                  ),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      SvgPicture.asset(
                        "assets/images/people-outline.svg",
                        width: 20,
                        fit: BoxFit.contain,
                      ),
                      Text(
                        "30 seater",
                        style: TextStyle(
                            fontWeight: FontWeight.w300,
                            fontSize: 16,
                            color: Colors.black54,
                            fontFamily: "Mulish"),
                      ),
                    ],
                  ),
                ],
              ),
              SizedBox(
                height: 30,
              ),
              Material(
                elevation: 0,
                borderRadius: BorderRadius.circular(10),
                color: Colors.black87,
                textStyle: const TextStyle(
                  fontFamily: 'Mulish',
                ),
                child: MaterialButton(
                  padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                  minWidth: MediaQuery.of(context).size.width,
                  onPressed: () {

                  },
                  child: const Text(
                    "Book",
                    textAlign: TextAlign.center,
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.bold,
                        fontSize: 20,
                        fontFamily: 'Mulish'),
                  ),
                ),
              ),
              SizedBox(
                height: 30,
              ),
              Text(
                "Specifications",
                style: TextStyle(fontWeight: FontWeight.w900, fontSize: 24),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
          onPressed: () {},
          child: SvgPicture.asset(
            "assets/images/ticket-outline-white.svg", width: 20,
            fit: BoxFit.contain,)
      ),
    );
  }
}
