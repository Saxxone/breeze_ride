import 'package:breeze_ride/ticket.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Trip extends StatefulWidget {
  const Trip({Key? key}) : super(key: key);

  @override
  _TripState createState() => _TripState();
}

class _TripState extends State<Trip> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();
  final TextEditingController startController = TextEditingController();
  final TextEditingController destinationController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    final startField = TextFormField(
      autofocus: true,
      autofillHints: const [AutofillHints.location],
      controller: startController,
      keyboardType: TextInputType.text,
      // validator: () {},
      onSaved: (value) {
        startController.text = value!;
      },
      textInputAction: TextInputAction.next,
      decoration: InputDecoration(
          label: Text('Start point'),
          prefixIconConstraints: BoxConstraints(maxWidth: 20, maxHeight: 20),
          prefixIcon: SvgPicture.asset(
            "assets/images/search-outline.svg",
            fit: BoxFit.fitWidth,
            width: 20,
          ),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Start point",
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
          prefixIconConstraints: BoxConstraints(maxWidth: 20, maxHeight: 20),
          prefixIcon: SvgPicture.asset(
            "assets/images/search-outline.svg",
            fit: BoxFit.fitHeight,
            width: 20,
          ),
          label: Text('Destination'),
          contentPadding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
          hintText: "Destination",
          border: OutlineInputBorder(borderRadius: BorderRadius.circular(4))),
    );
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        leading: GestureDetector(
          onTap: () {
            /* Write listener code here */
          },
          child: IconButton(
            icon: SvgPicture.asset(
              "assets/images/menu-outline.svg",
              fit: BoxFit.fitWidth,
              width: 20,
            ),
            onPressed: () {
              _scaffoldKey.currentState?.openDrawer();
            },
          ),
        ),
        backgroundColor: Colors.transparent,
      ),
      drawer: Drawer(
          child: ListView(
        padding: EdgeInsets.zero,
        children: [
          ListTile(
            title: const Text('Your Profile'),
            onTap: () {
              // Update the state of the app
              // ...
              // Then close the drawer
              Navigator.pop(context);
            },
          ),
        ],
      ) // Populate the Drawer in the next step.
          ),
      body: Column(
        children: [
          Container(
            padding: const EdgeInsets.all(20),
            child: Column(
              children: [
                SizedBox(
                  height: 15,
                ),
                startField,
                SizedBox(
                  height: 20,
                ),
                destinationField,
                SizedBox(
                  height: 40,
                ),
                Material(
                  elevation: 0,
                  borderRadius: BorderRadius.circular(4),
                  color: Colors.teal,
                  textStyle: TextStyle(
                    fontFamily: 'Mulish',
                  ),
                  child: MaterialButton(
                    padding: const EdgeInsets.fromLTRB(20, 15, 20, 15),
                    minWidth: MediaQuery.of(context).size.width,
                    onPressed: () {
                      Navigator.push(
                          context,
                          MaterialPageRoute(
                              builder: (context) => const Ticket()));
                    },
                    child: const Text(
                      "Go",
                      textAlign: TextAlign.center,
                      style: TextStyle(
                          color: Colors.white,
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          fontFamily: 'Mulish'),
                    ),
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }
}
