import 'package:flutter/material.dart';

import 'dart:math';
import 'package:fl_chart/fl_chart.dart';

class MyAC extends StatefulWidget {
  @override
  MyACTemp createState() => MyACTemp();
}

class MyACTemp extends State<MyAC> {
  int curr = 0;
  Color tempCont = Colors.black;
  Color tempEl = Colors.white;
  Color statCont = Colors.white;
  Color statEl = Colors.black;

  Color heatcont = Colors.black;
  Color heat = Colors.white;
  Color coolcont = Colors.transparent;
  Color cool = Colors.black;
  Color aircont = Colors.transparent;
  Color air = Colors.black;

  final double temperature;
  final double minValue;
  final double maxValue;

  MyACTemp({
    this.temperature = 24,
    this.minValue = 14,
    this.maxValue = 28,
  });
  final List<Widget> pages = [];

  void taptup() {
    pages.add(Temp(context));
    pages.add(Stats());
  }

  void Temperature() {
    setState(() {
      curr = 0;
      tempCont = Colors.black;
      tempEl = Colors.white;
      statCont = Colors.white;
      statEl = Colors.black;
    });
  }

  void Statistics() {
    setState(() {
      curr = 1;
      tempCont = Colors.white;
      tempEl = Colors.black;
      statCont = Colors.black;
      statEl = Colors.white;
    });
  }

  void airtoggle() {
    setState(() {
      aircont = Colors.black;
      air = Colors.white;
      heatcont = Colors.white;
      heat = Colors.black;
      coolcont = Colors.white;
      cool = Colors.black;
    });
  }

  void heattoggle() {
    setState(() {
      heatcont = Colors.black;
      heat = Colors.white;
      coolcont = Colors.white;
      cool = Colors.black;
      aircont = Colors.white;
      air = Colors.black;
    });
  }

  void cooltoggle() {
    setState(() {
      coolcont = Colors.black;
      cool = Colors.white;
      aircont = Colors.white;
      air = Colors.black;
      heatcont = Colors.white;
      heat = Colors.black;
    });
  }

  @override
  Widget build(BuildContext context) {
    taptup();
    return MaterialApp(
        home: Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.transparent,
        elevation: 0,
        toolbarHeight: 100,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Navigator.pop(context);
          },
        ),
        title: Padding(
          padding: const EdgeInsets.only(left: 55),
          child: Column(
            children: [
              Text(
                "Temperature",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.w800,
                  color: Colors.black,
                ),
              ),
              Text(
                "Living Room",
                style: TextStyle(
                  fontSize: 14,
                  fontWeight: FontWeight.w800,
                  color: Colors.grey,
                ),
              )
            ],
          ),
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
        child: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(left: 50, top: 40),
              child: Row(
                children: [
                  GestureDetector(
                    onTap: Temperature,
                    child: Container(
                      height: 40,
                      width: 150,
                      decoration: BoxDecoration(
                          color: tempCont,
                          borderRadius: BorderRadius.circular(15)),
                      child: Padding(
                        padding: const EdgeInsets.only(left: 20),
                        child: Row(
                          children: [
                            Icon(
                              Icons.thermostat,
                              color: tempEl,
                            ),
                            Text(
                              "Temperature",
                              style: TextStyle(
                                color: tempEl,
                              ),
                            ),
                          ],
                        ),
                      ),
                    ),
                  ),
                  Padding(
                    padding: const EdgeInsets.only(left: 15),
                    child: InkWell(
                      onTap: Statistics,
                      child: Container(
                        height: 40,
                        width: 150,
                        decoration: BoxDecoration(
                            color: statCont,
                            borderRadius: BorderRadius.circular(15)),
                        child: Padding(
                          padding: const EdgeInsets.only(left: 25),
                          child: Row(
                            children: [
                              Icon(
                                Icons.bar_chart,
                                color: statEl,
                              ),
                              Text(
                                "Statistics",
                                style: TextStyle(
                                  color: statEl,
                                ),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ),
                  )
                ],
              ),
            ),
            pages[curr],
          ],
        ),
      ),
    ));
  }

  @override
  Widget Temp(BuildContext context) {
    return Container(
      padding: EdgeInsets.only(top: 50),
      child: Column(
        children: [
          Thermometer(
              temperature: temperature, minValue: 14, maxValue: 28, size: 350),
          Container(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 50, top: 5),
                  child: Row(
                    children: [
                      Container(
                        child: Column(
                          children: [
                            Text(
                              "Current Temp",
                              style:
                                  TextStyle(color: Colors.grey, fontSize: 18),
                            ),
                            Row(
                              children: [
                                Icon(Icons.arrow_upward_rounded),
                                Text(
                                  temperature.toString() + "°C",
                                  style: TextStyle(
                                      color: Colors.black,
                                      fontSize: 22,
                                      fontWeight: FontWeight.w800),
                                )
                              ],
                            )
                          ],
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 60),
                        child: Container(
                          child: Column(
                            children: [
                              Text(
                                "Current Humidity",
                                style:
                                    TextStyle(color: Colors.grey, fontSize: 18),
                              ),
                              Row(
                                children: [
                                  Icon(Icons.arrow_downward_rounded),
                                  Text(
                                    "58%",
                                    style: TextStyle(
                                        color: Colors.black,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w800),
                                  )
                                ],
                              )
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(left: 50, top: 20),
                  child: Row(
                    children: [
                      InkWell(
                        onTap: heattoggle,
                        child: Container(
                          padding: EdgeInsets.only(top: 20),
                          height: 100,
                          width: 80,
                          decoration: BoxDecoration(
                              color: heatcont,
                              borderRadius: BorderRadius.circular(15)),
                          child: Column(children: [
                            Text(
                              "Heating·",
                              style: TextStyle(
                                  color: heat,
                                  fontSize: 18,
                                  fontWeight: FontWeight.w700),
                            ),
                            Text(
                              "22°C",
                              style: TextStyle(
                                  color: heat,
                                  fontSize: 22,
                                  fontWeight: FontWeight.w900),
                            )
                          ]),
                        ),
                      ),
                      Padding(
                        padding: const EdgeInsets.only(left: 30),
                        child: InkWell(
                          onTap: cooltoggle,
                          child: Container(
                              padding: EdgeInsets.only(top: 20),
                              height: 100,
                              width: 80,
                              decoration: BoxDecoration(
                                  color: coolcont,
                                  borderRadius: BorderRadius.circular(15)),
                              child: Column(children: [
                                Text(
                                  "Cooling·",
                                  style: TextStyle(
                                      color: cool,
                                      fontSize: 18,
                                      fontWeight: FontWeight.w700),
                                ),
                                Text(
                                  "18°C",
                                  style: TextStyle(
                                      color: cool,
                                      fontSize: 24,
                                      fontWeight: FontWeight.w800),
                                )
                              ])),
                        ),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 30),
                        child: InkWell(
                            onTap: airtoggle,
                            child: Container(
                                padding: EdgeInsets.only(top: 20),
                                height: 100,
                                width: 80,
                                decoration: BoxDecoration(
                                    color: aircont,
                                    borderRadius: BorderRadius.circular(15)),
                                child: Column(children: [
                                  Text(
                                    "Airwave·",
                                    style: TextStyle(
                                        color: air,
                                        fontSize: 18,
                                        fontWeight: FontWeight.w700),
                                  ),
                                  Text(
                                    "20°C",
                                    style: TextStyle(
                                        color: air,
                                        fontSize: 22,
                                        fontWeight: FontWeight.w900),
                                  )
                                ]))),
                      ),
                    ],
                  ),
                )
              ],
            ),
          ),
        ],
      ),
    );
  }

  Widget Stats() {
    return Container(
      child: Text("No Page: Absence of Design"),
    );
  }
}

class Thermometer extends StatelessWidget {
  final double temperature;
  final double minValue;
  final double maxValue;
  final double size;

  Thermometer({
    required this.temperature,
    required this.minValue,
    required this.maxValue,
    required this.size,
  });

  @override
  Widget build(BuildContext context) {
    return CustomPaint(
      size: Size(size, size),
      painter: ThermometerPainter(
        temperature: temperature,
        minValue: minValue,
        maxValue: maxValue,
      ),
    );
  }
}

class ThermometerPainter extends CustomPainter {
  final double temperature;
  final double minValue;
  final double maxValue;

  ThermometerPainter({
    required this.temperature,
    required this.minValue,
    required this.maxValue,
  });

  @override
  void paint(Canvas canvas, Size size) {
    final centerX = size.width / 2;
    final centerY = size.height / 2;
    final radius = min(centerX, centerY);
    final strokeWidth = radius * 0.1;
    final centerOffset = Offset(centerX, centerY);

    final backgroundPaint = Paint()
      ..color = Colors.grey[300]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth;

    final progressPaint = Paint()
      ..color = Colors.red
      ..style = PaintingStyle.stroke
      ..strokeWidth = strokeWidth
      ..strokeCap = StrokeCap.round;

    final temperatureText = TextSpan(
      text: temperature.toString() + "°C",
      style: TextStyle(
        color: Colors.black,
        fontSize: 24,
        fontWeight: FontWeight.bold,
      ),
    );
    final temperatureTextPainter = TextPainter(
      text: temperatureText,
      textDirection: TextDirection.ltr,
    );
    temperatureTextPainter.layout();

    final textOffset = Offset(centerX - temperatureTextPainter.width / 2,
        centerY - temperatureTextPainter.height / 2);

    temperatureTextPainter.paint(canvas, textOffset);

    final progressAngle =
        (temperature - minValue) / (maxValue - minValue) * 180;
    final startAngle = -180;
    final sweepAngle = progressAngle;

    canvas.drawArc(
      Rect.fromCircle(center: centerOffset, radius: radius - strokeWidth / 2),
      radians(startAngle as double),
      radians(sweepAngle),
      false,
      backgroundPaint,
    );

    canvas.drawArc(
      Rect.fromCircle(center: centerOffset, radius: radius - strokeWidth / 2),
      radians(startAngle as double),
      radians(sweepAngle),
      false,
      progressPaint,
    );

    final needlePaint = Paint()
      ..color = Colors.black
      ..style = PaintingStyle.fill;

    final needleRadius = radius * 0.025;
    final needleAngle = radians(startAngle + sweepAngle);
    final needleX = centerX + (radius - strokeWidth) * cos(needleAngle);
    final needleY = centerY + (radius - strokeWidth) * sin(needleAngle);
    final needleCenter = Offset(needleX, needleY);

    canvas.drawCircle(needleCenter, needleRadius, needlePaint);

    final scalePaint = Paint()
      ..color = Colors.grey[500]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final scaleAngle = 180;
    final scaleStartAngle = -180 - (180 - scaleAngle) / 2;
    final scaleSweepAngle = scaleAngle;

    final scaleRadius = radius - strokeWidth * 2;
    final scaleRect =
        Rect.fromCircle(center: centerOffset, radius: scaleRadius);

    canvas.drawArc(
      scaleRect,
      radians(scaleStartAngle),
      radians(scaleSweepAngle as double),
      false,
      scalePaint,
    );

    final tickPaint = Paint()
      ..color = Colors.grey[500]!
      ..style = PaintingStyle.stroke
      ..strokeWidth = 2;

    final tickLength = radius * 0.04;

    final tickAngle = radians(scaleStartAngle);
    final tickStart = Offset(
      centerX + scaleRadius * cos(tickAngle),
      centerY + scaleRadius * sin(tickAngle),
    );
    final tickEnd = Offset(
      centerX + (scaleRadius + tickLength) * cos(tickAngle),
      centerY + (scaleRadius + tickLength) * sin(tickAngle),
    );

    final tickPath = Path();
    tickPath.moveTo(tickStart.dx, tickStart.dy);
    tickPath.lineTo(tickEnd.dx, tickEnd.dy);

    canvas.drawPath(tickPath, tickPaint);
  }

  @override
  bool shouldRepaint(CustomPainter oldDelegate) {
    return true;
  }

  double radians(double degrees) {
    return degrees * pi / 180;
  }
}
