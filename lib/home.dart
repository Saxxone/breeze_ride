import 'package:breeze_ride/interstitial.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

class Home extends StatefulWidget {
  const Home({Key? key}) : super(key: key);

  @override
  _HomeState createState() => _HomeState();
}

class _HomeState extends State<Home> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Stack(children: [
        Container(
          child: null,
          width: MediaQuery.of(context).size.width,
          height: MediaQuery.of(context).size.height,
          decoration: const BoxDecoration(
              image: DecorationImage(
                  image: AssetImage("assets/images/boat.jpeg"),
                  alignment: Alignment.centerRight,
                  fit: BoxFit.cover)),
        ),
        Padding(
          padding: const EdgeInsets.all(24.0),
          child: Column(
            children: [
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Welcome Stephen",
                    style: TextStyle(
                        color: Colors.white,
                        fontFamily: 'Mulish',
                        fontSize: 24,
                        fontWeight: FontWeight.w300),
                  )
                ],
              ),
              const SizedBox(
                height: 350,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: const [
                  Text(
                    "Book a ride",
                    style: TextStyle(
                        color: Colors.white,
                        fontWeight: FontWeight.w900,
                        fontSize: 24,
                        fontFamily: 'Mulish'),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              Row(
                children:  [
                  TextButton(
                    child: const Text(
                      "Trip",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white24,
                        padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                        textStyle:
                        const TextStyle(fontSize: 16)),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>  const Interstitial(index: 1)));
                    },
                  ),
                  const SizedBox(
                    width: 10,
                  ),
                  TextButton(
                    child: const Text(
                      "Cruise",
                      style: TextStyle(color: Colors.white),
                    ),
                    style: TextButton.styleFrom(
                        backgroundColor: Colors.white24,
                        padding: const EdgeInsets.fromLTRB(32, 12, 32, 12),
                        textStyle:
                        const TextStyle(fontSize: 16)),
                    onPressed: () {
                      Navigator.push(
                          context, MaterialPageRoute(builder: (context) =>  const Interstitial(index: 2)));
                    },
                  ),
                ],
              ),
              const SizedBox(
                height: 70,
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: [
                  IconButton(
                    color: Colors.white54,
                    onPressed: (){
                    Navigator.push(
                        context, MaterialPageRoute(builder: (context) =>  const Interstitial(index: 3)));
                  }, icon: SvgPicture.asset(
                    "assets/images/settings-outline.svg", fit: BoxFit.fitWidth,
                width: 20,
                  ),)
                ],
              )
            ],
          ),
        )
      ]),
    );
  }
}
