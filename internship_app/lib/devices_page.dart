import 'package:flutter/material.dart';

class MyDevices extends StatefulWidget {
  final Key? key;
  // Other properties and constructor parameters

  const MyDevices({this.key}) : super(key: key);
  @override
  MyDeviceState createState() => MyDeviceState();
}

class MyDeviceState extends State<MyDevices> {
  bool con = true;
  String conn = "Connected";

  bool light = false;
  Color lightcontColor = Colors.white;
  Color lightColor = Colors.black;
  String lightText = "Not Connected";

  bool ac = false;
  Color accontColor = Colors.white;
  Color acColor = Colors.black;
  String acText = "Not Connected";

  bool tv = false;
  Color tvcontColor = Colors.white;
  Color tvColor = Colors.black;
  String tvText = "Not Connected";

  bool acc = false;
  Color acccontColor = Colors.white;
  Color accColor = Colors.black;
  String accText = "Not Connected";

  void lightSwitch(bool value) {
    setState(() {
      light = value;
      lightText = value ? "Connected" : "Not Connected";
      lightcontColor = value ? Colors.black : Colors.white;
      lightColor = value ? Colors.white : Colors.black;
    });
  }

  void ACswitch(bool value) {
    setState(() {
      ac = value;
      acText = value ? "Connected" : "Not Connected";
      accontColor = value ? Colors.black : Colors.white;
      acColor = value ? Colors.white : Colors.black;
    });
  }

  void TVswitch(bool value) {
    setState(() {
      tv = value;
      tvText = value ? "Connected" : "Not Connected";
      tvcontColor = value ? Colors.black : Colors.white;
      tvColor = value ? Colors.white : Colors.black;
    });
  }

  void ACCSwitch(bool value) {
    setState(() {
      acc = value;
      accText = value ? "Connected" : "Not Connected";
      acccontColor = value ? Colors.black : Colors.white;
      accColor = value ? Colors.white : Colors.black;
    });
  }

  void Devices(bool value) {
    setState(() {
      con = value;
      conn = value ? "Connected" : "Not Connected";
    });
  }

  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.transparent,
          elevation: 0,
          leading: IconButton(
            icon: Icon(
              Icons.arrow_back,
              color: Colors.black,
            ),
            onPressed: () {
              Navigator.pop(context);
            },
          ),
          actions: [
            PopupMenuButton<String>(
              color: Colors.black,
              itemBuilder: (BuildContext context) => [
                PopupMenuItem<String>(
                  value: 'option1',
                  child: Text('Option 1'),
                ),
                PopupMenuItem<String>(
                  value: 'option2',
                  child: Text('Option 2'),
                ),
                PopupMenuItem<String>(
                  value: 'option3',
                  child: Text('Option 3'),
                ),
              ],
              onSelected: (String value) {
                // Handle popup menu item selection
                // Add your desired logic here based on the selected value
              },
            ),
          ],
        ),
        body: Container(
          color: Colors.transparent,
          child: Column(
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(left: 10, top: 10),
                    child: Row(
                      children: [
                        Column(
                          children: [
                            Text(
                              "DEVICES",
                              style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 25,
                                  fontWeight: FontWeight.w800),
                            ),
                            Text(
                              conn,
                              style: TextStyle(
                                  color: Colors.grey,
                                  fontSize: 14,
                                  fontWeight: FontWeight.w700),
                            ),
                          ],
                        ),
                        Padding(
                          padding: const EdgeInsets.only(left: 180),
                          child: Switch(
                            value: con,
                            onChanged: Devices,
                            focusColor: Colors.black,
                            activeColor: Colors.black,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
              Padding(
                padding: const EdgeInsets.only(top: 60, left: 40),
                child: Cont(),
              )
            ],
          ),
        ),
      ),
    );
  }

  Widget Cont() {
    if (con) {
      return Container(
        color: Colors.transparent,
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: tvcontColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Icon(
                            Icons.tv_outlined,
                            color: tvColor,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  tvText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Smart Tv",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Switch(
                                value: tv,
                                onChanged: TVswitch,
                                activeColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                width: 65,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(171, 194, 190, 0.5),
                                ),
                                child: Text(
                                  "  Bed Room",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: accontColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Icon(
                            Icons.ac_unit,
                            color: acColor,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  acText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Smart AC",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Switch(
                                value: ac,
                                onChanged: ACswitch,
                                activeColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                width: 65,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(171, 194, 190, 0.5),
                                ),
                                child: Text(
                                  "  Bed Room",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: lightcontColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Icon(
                            Icons.lightbulb_outline,
                            color: lightColor,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  lightText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Smart Light",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 30),
                              child: Switch(
                                value: light,
                                onChanged: lightSwitch,
                                activeColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                width: 65,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(171, 194, 190, 0.5),
                                ),
                                child: Text(
                                  "  Bed Room",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 20),
              child: Row(
                children: [
                  Container(
                    height: 140,
                    width: 90,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15),
                      color: acccontColor,
                    ),
                    child: Column(
                      children: [
                        Padding(
                          padding: const EdgeInsets.only(top: 40),
                          child: Icon(
                            Icons.air,
                            color: accColor,
                            size: 48,
                          ),
                        ),
                      ],
                    ),
                  ),
                  Column(
                    children: [
                      Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Column(
                              children: [
                                Text(
                                  accText,
                                  style: TextStyle(
                                      fontSize: 14,
                                      fontWeight: FontWeight.w700,
                                      color: Colors.grey),
                                ),
                                Text(
                                  "Smart Fan",
                                  style: TextStyle(
                                      fontSize: 24,
                                      fontWeight: FontWeight.w900,
                                      color: Colors.black),
                                ),
                              ],
                            ),
                            Padding(
                              padding: const EdgeInsets.only(left: 50),
                              child: Switch(
                                value: acc,
                                onChanged: ACCSwitch,
                                activeColor: Colors.black,
                              ),
                            ),
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(right: 80),
                        child: Row(
                          children: [
                            Container(
                                height: 20,
                                width: 65,
                                alignment: Alignment.centerLeft,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(15),
                                  color: Color.fromRGBO(171, 194, 190, 0.5),
                                ),
                                child: Text(
                                  "  Bed Room",
                                  style: TextStyle(
                                      fontSize: 11,
                                      color: Colors.black,
                                      fontWeight: FontWeight.w700),
                                ))
                          ],
                        ),
                      )
                    ],
                  )
                ],
              ),
            ),
          ],
        ),
      );
    } else {
      return Container(
        child: Text("No Devices Connected"),
      );
    }
  }
}
