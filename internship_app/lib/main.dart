import 'package:flutter/material.dart';
import 'temperature_page.dart';

import 'devices_page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Hamburger Menu',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: HomePage(),
      routes: {
        '/page1': (context) => MyDevices(),
        '/page2': (context) => MyAC(),
      },
    );
  }
}

class HomePage extends StatefulWidget {
  @override
  MyAppState createState() => MyAppState();
}

class MyAppState extends State<HomePage> {
  final GlobalKey<ScaffoldState> _scaffoldKey = GlobalKey<ScaffoldState>();

  bool light = false;
  Color lightcontColor = Color.fromRGBO(209, 250, 235, 98);
  Color lightColor = Colors.black;

  bool ac = false;
  Color accontColor = Color.fromRGBO(209, 250, 235, 98);
  Color acColor = Colors.black;

  bool tv = false;
  Color tvcontColor = Color.fromRGBO(209, 250, 235, 98);
  Color tvColor = Colors.black;

  bool acc = false;
  Color acccontColor = Color.fromRGBO(209, 250, 235, 98);
  Color accColor = Colors.black;

  void LightSwitch(bool value) {
    setState(() {
      light = value;
      lightcontColor = value ? Colors.black : Color.fromRGBO(209, 250, 235, 98);
      lightColor = value ? Colors.white : Colors.black;
    });
  }

  void ACswitch(bool value) {
    setState(() {
      ac = value;
      accontColor = value ? Colors.black : Color.fromRGBO(209, 250, 235, 98);
      acColor = value ? Colors.white : Colors.black;
    });
  }

  void TVswitch(bool value) {
    setState(() {
      tv = value;
      tvcontColor = value ? Colors.black : Color.fromRGBO(209, 250, 235, 98);
      tvColor = value ? Colors.white : Colors.black;
    });
  }

  void ACCSwitch(bool value) {
    setState(() {
      acc = value;
      acccontColor = value ? Colors.black : Color.fromRGBO(209, 250, 235, 98);
      accColor = value ? Colors.white : Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: _scaffoldKey,
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        iconTheme: IconThemeData(color: Colors.black),
        actions: [
          IconButton(
            icon: Icon(
              Icons.account_circle,
              color: Colors.black,
            ),
            onPressed: () {
              // Handle profile icon press
            },
          ),
        ],
      ),
      drawer: Drawer(
        shadowColor: Colors.black,
        child: ListView(
          children: [
            ListTile(
              title: Text('Devices Page'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/page1');
              },
            ),
            ListTile(
              title: Text('Temperature Page'),
              onTap: () {
                Navigator.pop(context);
                Navigator.pushNamed(context, '/page2');
              },
            ),
          ],
        ),
      ),
      body: Center(
        child: Container(
          margin: EdgeInsets.only(left: 0),
          child: Column(
            children: [
              Row(
                children: [
                  Column(
                    children: [
                      Container(
                          margin: EdgeInsets.only(left: 10),
                          alignment: Alignment(-1.0, -1.0),
                          child: Text(
                            "Welcome Home",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700),
                          )),
                      Container(
                        child: Text("Harsheet!!",
                            style: TextStyle(
                                fontSize: 22, fontWeight: FontWeight.w700)),
                      )
                    ],
                  ),
                  Image.asset(
                    'assets/images/house.png',
                    alignment: Alignment.centerRight,
                    height: 200,
                    width: 200,
                  ),
                ],
              ),
              Column(
                children: [
                  Text(
                    "Smart Devices",
                    style: TextStyle(fontSize: 26, fontWeight: FontWeight.w900),
                  ),
                  Container(
                      margin: EdgeInsets.only(left: 6),
                      child: Column(
                        children: [
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 28, top: 40),
                                child: Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: lightcontColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, left: 25),
                                              child: Icon(
                                                Icons.lightbulb_outline,
                                                color: lightColor,
                                                size: 35,
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 22, left: 10),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Text(
                                                  "Smart\nLight",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: lightColor),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Switch(
                                                    value: light,
                                                    onChanged: LightSwitch,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 28, top: 40),
                                child: Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: accontColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, left: 25),
                                              child: Icon(
                                                Icons.ac_unit_outlined,
                                                color: acColor,
                                                size: 35,
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 22, left: 10),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Text(
                                                  "Smart\nAC",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: acColor),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Switch(
                                                    value: ac,
                                                    onChanged: ACswitch,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          ),
                          Row(
                            children: [
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 28, top: 40),
                                child: Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: tvcontColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, left: 25),
                                              child: Icon(
                                                Icons.tv_outlined,
                                                color: tvColor,
                                                size: 35,
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 22, left: 10),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Text(
                                                  "Smart\nTV",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: tvColor),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Switch(
                                                    value: tv,
                                                    onChanged: TVswitch,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                              Padding(
                                padding:
                                    const EdgeInsets.only(left: 28, top: 40),
                                child: Container(
                                    height: 200,
                                    width: 150,
                                    decoration: BoxDecoration(
                                        color: acccontColor,
                                        borderRadius: BorderRadius.all(
                                            Radius.circular(15))),
                                    child: Column(
                                      children: [
                                        Row(
                                          children: [
                                            Padding(
                                              padding: EdgeInsets.only(
                                                  top: 25, left: 25),
                                              child: Icon(
                                                Icons.air,
                                                color: accColor,
                                                size: 35,
                                              ),
                                            )
                                          ],
                                        ),
                                        Padding(
                                          padding: const EdgeInsets.only(
                                              top: 22, left: 10),
                                          child: Row(
                                            children: [
                                              Padding(
                                                padding: EdgeInsets.only(
                                                    top: 10, left: 10),
                                                child: Text(
                                                  "Smart\nFan",
                                                  style: TextStyle(
                                                      fontSize: 20,
                                                      fontWeight:
                                                          FontWeight.w600,
                                                      color: accColor),
                                                ),
                                              ),
                                              Padding(
                                                padding:
                                                    EdgeInsets.only(left: 10),
                                                child: RotatedBox(
                                                  quarterTurns: 3,
                                                  child: Switch(
                                                    value: acc,
                                                    onChanged: ACCSwitch,
                                                  ),
                                                ),
                                              )
                                            ],
                                          ),
                                        )
                                      ],
                                    )),
                              ),
                            ],
                          )
                        ],
                      ))
                ],
              )
            ],
          ),
        ),
      ),
    );
  }
}
